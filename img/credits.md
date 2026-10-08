# Crédits des images

Toutes les images viennent de [Wikimedia Commons](https://commons.wikimedia.org/).
Pour l'instant, les fiches pointent vers les fichiers Commons (adresses `Special:FilePath`).
Une fois les images des fiches téléchargées dans `img/` (`src/fetch_images.py` du moteur), les références deviennent locales : ce fichier reste la source des crédits. Les images de style se téléchargent avec `tools/fetch_style_images.sh`.

**À compléter pour chaque image : auteur et licence**, tels qu'ils sont écrits sur la page Commons. Les licences CC BY et CC BY-SA demandent de citer l'auteur (CC BY-SA : la même licence pour les versions modifiées).

## Images utilisées

| Fiche | Fichier Commons | Auteur | Licence |
|---|---|---|---|
| Intro 01 · Comment ça marche (le renard) | [European red fox (Vulpes vulpes).jpg](https://commons.wikimedia.org/wiki/File:European_red_fox_(Vulpes_vulpes).jpg) | à compléter | à compléter |
| Intro 02 · Le pays (les Tatras) | [Vysoké Tatry panorama.jpg](https://commons.wikimedia.org/wiki/File:Vysok%C3%A9_Tatry_panorama.jpg) | à compléter | à compléter |
| Intro 03 · La langue (Andrea, la hase) | [European Hare(js)02.jpg](https://commons.wikimedia.org/wiki/File:European_Hare(js)02.jpg) | à compléter | à compléter |
| Intro 04 · Prononciation (la marmotte) | [M. marmota latirostris in front of the burrow (Tatra).jpg](https://commons.wikimedia.org/wiki/File:M._marmota_latirostris_in_front_of_the_burrow_(Tatra).jpg) | à compléter | à compléter |
| Intro 05 · Comptage (les moutons) | [Amoo click.jpg](https://commons.wikimedia.org/wiki/File:Amoo_click.jpg) | à compléter | à compléter |
| Kit 01 · Salutations (le sentier) | [Biele pleso, NPR Belianske Tatry 727.jpg](https://commons.wikimedia.org/wiki/File:Biele_pleso,_NPR_Belianske_Tatry_727.jpg) | à compléter | à compléter |
| Kit 02 · Politesse (Babka Zuzana, les prés fleuris) | [Flowers Štrbské Pleso 25 Slovakia 4.jpg](https://commons.wikimedia.org/wiki/File:Flowers_%C5%A0trbsk%C3%A9_Pleso_25_Slovakia_4.jpg) | à compléter | à compléter |
| Kit 03 · Dialogue (le chamois) | [20170401 kozica Kończysty Wierch 5522.jpg](https://commons.wikimedia.org/wiki/File:20170401_kozica_Ko%C5%84czysty_Wierch_5522.jpg) | à compléter | à compléter |
| Kit 04 · Extra (le lac) | [Nové Štrbské pleso 25 Slovakia 1.jpg](https://commons.wikimedia.org/wiki/File:Nov%C3%A9_%C5%A0trbsk%C3%A9_pleso_25_Slovakia_1.jpg) | à compléter | à compléter |

## Images de style (bandeaux de thème)

Fichiers `img/style_<clé>.jpg`, téléchargés et réduits à 1200 px de large avec `tools/fetch_style_images.sh`. Dans l'application, ces images sont de plus **passées en demi-gris et teintées** aux couleurs du thème, et rognées en bandeau : ce sont des versions modifiées des photos d'origine (à indiquer pour les licences CC BY-SA).

Pour remplir les colonnes auteur et licence : `./tools/fetch_style_images.sh --credits` affiche des lignes prêtes à coller ici.

| Thème (utilisé pour) | Source | Auteur | Licence |
|---|---|---|---|
| `default` (Intro, hors séries) | *Généré avec ChatGPT* | OpenAI ChatGPT | Libre d'usage — généré pour ce projet (2026) |
| `basics` (Kit de survie) | *Généré avec ChatGPT* | OpenAI ChatGPT | Libre d'usage — généré pour ce projet (2026) |
| `family` (Rodina) | *Généré avec ChatGPT* | OpenAI ChatGPT | Libre d'usage — généré pour ce projet (2026) |
| `house` (Doma) | *Généré avec ChatGPT* | OpenAI ChatGPT | Libre d'usage — généré pour ce projet (2026) |
| `food` (Jedlo) | *Généré avec ChatGPT* | OpenAI ChatGPT | Libre d'usage — généré pour ce projet (2026) |
| `city` (Dedina) | *Généré avec ChatGPT* | OpenAI ChatGPT | Libre d'usage — généré pour ce projet (2026) |
| `animals` (Zvieratá) | *Généré avec ChatGPT* | OpenAI ChatGPT | Libre d'usage — généré pour ce projet (2026) |
| `games` (Hry) | [Lupina mnoholistá (Lupinus polyphyllus) - Cesta slobody.jpg](https://commons.wikimedia.org/wiki/File:Lupina_mnoholist%C3%A1_(Lupinus_polyphyllus)_-_Cesta_slobody.jpg) | à compléter | à compléter |

## Images de dialogues (fiches — générées avec ChatGPT)

| Fiche | Fichier | Source | Auteur | Licence |
|---|---|---|---|---|
| Intro · Rencontre | `intro-rencontre.png` | *Généré avec ChatGPT* | OpenAI ChatGPT | Libre d'usage — généré pour ce projet (2026) |
| Kit 03 · Dialogue | `kit-dialogue.png` | *Généré avec ChatGPT* | OpenAI ChatGPT | Libre d'usage — généré pour ce projet (2026) |
| Série 1 · Rodina — u babky | `serie-01-rodina-u-babky.png` | *Généré avec ChatGPT* | OpenAI ChatGPT | Libre d'usage — généré pour ce projet (2026) |
| Série 2 · Doma — návšteva | `serie-02-doma-navsteva.png` | *Généré avec ChatGPT* | OpenAI ChatGPT | Libre d'usage — généré pour ce projet (2026) |
| Série 3 · Jedlo — halušky | `serie-03-jedlo-haluskies.png` | *Généré avec ChatGPT* | OpenAI ChatGPT | Libre d'usage — généré pour ce projet (2026) |
| Série 4 · Dedina — obchode (TODO) | — | — | — | — |
| Série 5 · Zvieratá — strážca parku (TODO) | — | — | — | — |
| Série 6 · Hry — skrývačka (TODO) | — | — | — | — |
| Homepage · Carte Tatras | `homepage-carte-tatry.jpg` | *Généré avec Google Gemini* | Google Gemini | Libre d'usage — généré pour ce projet (2026) |

## En réserve (pas encore utilisées)

| Sujet | Fichier Commons |
|---|---|
| Renard | [Líška hrdzavá Vulpes vulpes, NPR Dolina Bielej vody 733.jpg](https://commons.wikimedia.org/wiki/File:L%C3%AD%C5%A1ka_hrdzav%C3%A1_Vulpes_vulpes,_NPR_Dolina_Bielej_vody_733.jpg) |
| Hase | [European hare (Lepus europaeus) Marken 2.jpg](https://commons.wikimedia.org/wiki/File:European_hare_(Lepus_europaeus)_Marken_2.jpg) |
