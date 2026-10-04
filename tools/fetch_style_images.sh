#!/usr/bin/env bash
# fetch_style_images.sh
# ---------------------
# Télécharge les photos des bandeaux de style (thèmes CSS) depuis Wikimedia
# Commons, les nomme `img/style_<clé>.jpg` et les réduit à 1200 px de large
# au maximum (jamais agrandies).
#
# Il faut : curl et ImageMagick (`convert`, ou `magick` pour la version 7).
#
# Usage (depuis la racine du dépôt) :
#   ./tools/fetch_style_images.sh              # télécharge et réduit les 8 images
#   ./tools/fetch_style_images.sh family city  # seulement certaines clés
#   ./tools/fetch_style_images.sh --force      # refait aussi celles qui existent déjà
#   ./tools/fetch_style_images.sh --credits    # affiche auteur et licence de chaque image
#                                              # (lignes prêtes à coller dans img/credits.md)
#
# Variables facultatives :
#   WIDTH=1200     largeur maximale en pixels
#   QUALITY=82     qualité JPEG
#
# Les noms de fichiers Commons sont écrits tels qu'ils apparaissent dans
# l'adresse de la page (avec le codage %xx), pour être recopiés sans erreur.

set -euo pipefail

WIDTH="${WIDTH:-1200}"
QUALITY="${QUALITY:-82}"
UA="Zajka-style-images/1.0 (https://github.com/lstux/Slovingo-sk-fr-children)"
COMMONS="https://commons.wikimedia.org"

# clé de thème | nom du fichier Commons (codé comme dans l'adresse de la page)
IMAGES=(
  "default|On_the_way_to_Biele_pleso_-_panoramio_(2).jpg"
  "basics|Belianske_Tatry_oct_2022.jpg"
  "family|Marmota_marmota_in_Vanoise_National_Park_2023_(1).jpg"
  "house|Tanap_schronisko_Zamkovskiego_2.jpg"
  "food|Bohemian_waxwing_tosses_a_mountain_ash_berry_(50829531677).jpg"
  "city|Bansk%C3%A1_%C5%A0tiavnica,_2018_(20).jpg"
  "animals|G%C3%A4mse_In_Der_Hohen_Tatra_(224466327).jpeg"
  "games|Lupina_mnoholist%C3%A1_(Lupinus_polyphyllus)_-_Cesta_slobody.jpg"
)

# --- Arguments ---------------------------------------------------------
FORCE=0
CREDITS=0
KEYS=()
for arg in "$@"; do
  case "$arg" in
    --force)   FORCE=1 ;;
    --credits) CREDITS=1 ;;
    -h|--help) sed -n '2,24p' "$0"; exit 0 ;;
    *)         KEYS+=("$arg") ;;
  esac
done

wanted() {  # la clé $1 est-elle demandée ? (toutes si aucune n'est précisée)
  [ "${#KEYS[@]}" -eq 0 ] && return 0
  local k
  for k in "${KEYS[@]}"; do [ "$k" = "$1" ] && return 0; done
  return 1
}

# --- Outils ------------------------------------------------------------
command -v curl >/dev/null || { echo "Erreur : curl est introuvable." >&2; exit 1; }

if command -v magick >/dev/null; then
  IM=(magick)
elif command -v convert >/dev/null; then
  IM=(convert)
else
  echo "Erreur : ImageMagick (convert ou magick) est introuvable." >&2
  exit 1
fi

# Va à la racine du dépôt (le dossier qui contient tools/)
cd "$(dirname "$0")/.."
mkdir -p img

# --- Mode crédits ------------------------------------------------------
if [ "$CREDITS" -eq 1 ]; then
  command -v python3 >/dev/null || { echo "Erreur : python3 est nécessaire pour --credits." >&2; exit 1; }
  for entry in "${IMAGES[@]}"; do
    key="${entry%%|*}"; name="${entry#*|}"
    wanted "$key" || continue
    python3 - "$key" "$name" "$COMMONS" "$UA" <<'PY'
import json, re, sys, urllib.parse, urllib.request

key, name, commons, ua = sys.argv[1:5]
title = "File:" + urllib.parse.unquote(name).replace("_", " ")
url = (commons + "/w/api.php?action=query&format=json&prop=imageinfo"
       "&iiprop=extmetadata&titles=" + urllib.parse.quote(title))
try:
    req = urllib.request.Request(url, headers={"User-Agent": ua})
    data = json.load(urllib.request.urlopen(req, timeout=30))
    page = next(iter(data["query"]["pages"].values()))
    meta = page["imageinfo"][0]["extmetadata"]
except Exception as exc:
    print(f"| style_{key}.jpg | {title} | ERREUR : {exc} | |")
    sys.exit(0)

def clean(field):
    value = meta.get(field, {}).get("value", "")
    return re.sub(r"\s+", " ", re.sub(r"<[^>]+>", "", value)).strip()

page_url = commons + "/wiki/" + urllib.parse.quote(title.replace(" ", "_"), safe="(),:_-")
print(f"| style_{key}.jpg | [{title[5:]}]({page_url}) | {clean('Artist') or 'inconnu'} | {clean('LicenseShortName') or 'inconnue'} |")
PY
  done
  exit 0
fi

# --- Téléchargement et réduction -----------------------------------------
fail=0
for entry in "${IMAGES[@]}"; do
  key="${entry%%|*}"; name="${entry#*|}"
  wanted "$key" || continue

  out="img/style_${key}.jpg"
  if [ -f "$out" ] && [ "$FORCE" -eq 0 ]; then
    echo "= $out existe déjà (--force pour le refaire)"
    continue
  fi

  tmp="$(mktemp "${TMPDIR:-/tmp}/zajka-style-${key}.XXXXXX")"
  echo "↓ $key : $name"
  if ! curl -fsSL --retry 3 -A "$UA" -o "$tmp" "$COMMONS/wiki/Special:FilePath/$name"; then
    echo "  ✗ téléchargement impossible pour « $key »" >&2
    rm -f "$tmp"; fail=1; continue
  fi

  # [0] = première image ; -auto-orient : respecte l'orientation EXIF ;
  # WIDTHx> : réduit seulement si l'image est plus large que WIDTH.
  if "${IM[@]}" "${tmp}[0]" -auto-orient -resize "${WIDTH}x>" \
        -colorspace sRGB -strip -interlace Plane -quality "$QUALITY" "$out"; then
    size="$(du -k "$out" | cut -f1)"
    dims="$(identify -format '%wx%h' "$out" 2>/dev/null || echo '?')"
    echo "  ✓ $out (${dims}, ${size} Ko)"
  else
    echo "  ✗ réduction impossible pour « $key »" >&2
    fail=1
  fi
  rm -f "$tmp"
done

[ "$fail" -eq 0 ] || { echo "Certaines images ont échoué." >&2; exit 1; }
echo "Terminé. Pense à compléter img/credits.md (./tools/fetch_style_images.sh --credits)."
