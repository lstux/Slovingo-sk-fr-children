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
| `family` (Rodina) | [Marmota marmota in Vanoise National Park 2023 (1).jpg](https://commons.wikimedia.org/wiki/File:Marmota_marmota_in_Vanoise_National_Park_2023_(1).jpg) (Alpes françaises, pas Tatras) | à compléter | à compléter |
| `house` (Doma) | *Généré avec ChatGPT* | OpenAI ChatGPT | Libre d'usage — généré pour ce projet (2026) |
| `food` (Jedlo) | [Bohemian waxwing tosses a mountain ash berry (50829531677).jpg](https://commons.wikimedia.org/wiki/File:Bohemian_waxwing_tosses_a_mountain_ash_berry_(50829531677).jpg) | à compléter | à compléter |
| `city` (Dedina) | [Banská Štiavnica, 2018 (20).jpg](https://commons.wikimedia.org/wiki/File:Bansk%C3%A1_%C5%A0tiavnica,_2018_(20).jpg) | à compléter | à compléter |
| `animals` (Zvieratá) | [Gämse In Der Hohen Tatra (224466327).jpeg](https://commons.wikimedia.org/wiki/File:G%C3%A4mse_In_Der_Hohen_Tatra_(224466327).jpeg) | à compléter | à compléter |
| `games` (Hry) | [Lupina mnoholistá (Lupinus polyphyllus) - Cesta slobody.jpg](https://commons.wikimedia.org/wiki/File:Lupina_mnoholist%C3%A1_(Lupinus_polyphyllus)_-_Cesta_slobody.jpg) | à compléter | à compléter |

## En réserve (pas encore utilisées)

| Sujet | Fichier Commons |
|---|---|
| Renard | [Líška hrdzavá Vulpes vulpes, NPR Dolina Bielej vody 733.jpg](https://commons.wikimedia.org/wiki/File:L%C3%AD%C5%A1ka_hrdzav%C3%A1_Vulpes_vulpes,_NPR_Dolina_Bielej_vody_733.jpg) |
| Hase | [European hare (Lepus europaeus) Marken 2.jpg](https://commons.wikimedia.org/wiki/File:European_hare_(Lepus_europaeus)_Marken_2.jpg) |
