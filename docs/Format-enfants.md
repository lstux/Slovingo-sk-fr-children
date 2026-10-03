# Format Slovingo-sk-fr-children

Ce document décrit comment le contenu est écrit pour des enfants de **8 à 12 ans**. Il reprend le format du cours d'allemand pour enfants ([Slovingo-de-fr](https://github.com/lstux/Slovingo-de-fr), `docs/Format-de-fr.md`) et indique ce qui change pour le slovaque.

La base reste le **SMD (Slovingo Markdown)** : voir `Format-SMD.txt` dans le repo [Slovingo](https://github.com/lstux/Slovingo/tree/main/docs).

## 1. Ton et rédaction

- Phrases courtes, explications rattachées à des situations d'enfant (école, goûter, cour de récré, grands-parents…)
- Ton de copain, plus d'emojis et de points d'exclamation que dans le cours adulte
- Une idée à la fois, pas de jargon grammatical (pas de « génitif » ni de « perfectif » dans le texte)
- Pas d'idiomes intraduisibles ; préférer une explication

## 2. Une série = 6 fiches

- **Fiches 01 à 04** : apprentissage (un thème, un point de grammaire par fiche)
- **Fiche 05** : dialogue avec les personnages
- **Fiche 06** : extra, tableau complet du vocabulaire et base des exercices

Exception : le Kit de Survie (série 00) a 3 fiches d'apprentissage + l'extra.

## 3. Personnages et prénom de l'enfant

| Avatar | Personnage | Notes |
|---|---|---|
| 🦊 | Toi (l'enfant) | prénom saisi via `[ASK_USER_NAME]`, repris via `[USER_NAME]` |
| 🐰 | Andrea | 11 ans, cousine de Katka et Maťo, la « grande » qui explique |
| 🐹 | Katka | 8 ans, phrases courtes et simples |
| 🐻 | Maťo | 9 ans, grand frère de Katka |
| 🐑 | Babka Zuzana | leur grand-mère, côté village et traditions |

- Entre enfants et avec Babka Zuzana : **tutoiement**. Le vouvoiement (*vy*) n'arrive qu'avec les adultes inconnus, en série Mesto.
- `[ASK_USER_NAME]` apparaît dès la première fiche d'introduction, en français, avant tout contenu slovaque. Dans les dialogues, on utilise ensuite `[USER_NAME]`. Le nom de secours est dans `lang.json` → `site.user_name_default`.
- Le marqueur de locuteur va **après** le `!` : `! 🐰 Ahoj!` (jamais `🐰 ! Ahoj`).

## 4. Genre : la règle qui change avec le slovaque

En slovaque, beaucoup de formes dépendent du genre de celui qui parle (*rád / rada*, *unavený / unavená*, *bol / bola*). On ne sait pas si l'enfant 🦊 est un garçon ou une fille. Donc :

- **En français** : aucun adjectif ni participe accordé pour l'enfant (« je suis perdu/perdue » → « j'ai perdu mon chemin »).
- **En slovaque** : les répliques de 🦊 évitent les formes genrées. On prend des tournures neutres : *páči sa mi…*, *baví ma…*, *chutí mi…*, *mám hlad*, *mám sa dobre*.
- Les formes genrées se donnent avec les autres personnages (Andrea, Maťo, Katka, Babka), dont le genre est connu, et dans une remarque quand elles sont utiles.

## 5. Écouter plutôt que lire

Pour un enfant de 8 ans, une fiche entière est longue à lire. Les consignes importantes se mettent en `{{fr:...}}` (speakable en langue native, voix française) :

```
{{fr:Le č se dit « tch », comme dans « tchèque ».}}
Le mot {{čaj}} veut dire « thé ».
```

- Une idée par `{{fr:...}}`, une à trois phrases
- **Pas de mot slovaque dans un `{{fr:...}}`** : la voix française le prononcerait mal. Le mot slovaque va à côté, en `{{...}}`
- Pas de `**gras**` à l'intérieur
- Dans une audio-card, la phrase après `!` est lue avec la voix slovaque ; le français va dans les `>`, les `+` et les paragraphes
- Il faut un moteur Slovingo qui gère `{{fr:...}}` (voir `slovingo_ref` dans la CI), et une voix française + une voix slovaque sur l'appareil

## 6. Structure des fichiers

```
md/
├── 00_Introduction_NN_titre.md
├── 10_Series_XX_Theme_YY_titre.md
├── 20_Vocabulary_NN_titre.md
└── 90_Annex_NN_titre.md
```

Exemple : `10_Series_01_Rodina_02_kolko-mas-rokov.md`

- Titres : `# Série Rodina (2/5) — Koľko máš rokov?`, extra : `# Série Rodina (extra) — Všetko dokopy`
- Le thème du nom de fichier donne la clé de `lang.json` → `subgroups` et `subgroup_themes`, en minuscules et **sans diacritiques** (`Zvierata` → `zvierata`)
- Les noms de fichiers n'ont pas d'accent ; les titres à l'intérieur, si

## 7. Fiche d'apprentissage (01 à 04)

```markdown
# Série Rodina (2/5) — Koľko máš rokov?

@ img/nom.jpg | Légende. Source : Wikimedia Commons, licence

Courte intro sympathique (1-2 phrases).

---

## Les nouveaux mots
| Slovenčina | Français |
|------------|----------|
| rodina | la famille |
(6-7 mots ; un mot déjà vu est marqué « (rappel) »)

---

## Aujourd'hui on apprend…
### Un point de grammaire
Explication en quelques phrases, tableau d'exemples.

---

## Des phrases
(6-7 cartes audio, progressives)

## On révise
(à partir de la fiche 02 : 2 cartes avec le vocabulaire déjà vu)

## 🇸🇰 Coin slovaque
2 courts paragraphes, mots-clés en {{…}}

## Vocabulaire complémentaire
(2-3 mots)

## Encore quelques phrases
(3 cartes)
```

## 8. Fiche 05 : dialogue

- `## Les personnages` : liste avatar + nom
- `## Le dialogue` : 10-15 répliques en continu, vocabulaire de la série et des séries précédentes
- 2-3 mots nouveaux maximum, **toujours signalés** : `+ Mot nouveau signalé : {{…}} = …`
- Puis Coin slovaque et 3 cartes « Encore quelques phrases »

## 9. Fiche 06 : extra

- Tableau de **tout** le vocabulaire de la série, mots signalés du dialogue compris
- 15-18 cartes audio qui recombinent ce vocabulaire dans des phrases inédites
- Aucun mot nouveau
- Sert de matière première aux exercices

## 10. Cartes audio

```
! Ako sa voláš?
> Comment tu t'appelles ?
> Ako = comment
> sa voláš = tu t'appelles
+ « voláš » vient de volať, « appeler ».
```

- Première ligne `>` : traduction naturelle
- Lignes `>` suivantes : décomposition **morceau par morceau**, **une ligne par élément**, jamais plusieurs éléments séparés par des points-virgules sur une même ligne
- Lignes `+` : remarque, mot nouveau, astuce. Pas systématique.
- Les cas slovaques (accusatif, locatif, génitif) ne sont pas expliqués au début : on les donne comme des morceaux à retenir (*v kuchyni*, *do mesta*), avec la décomposition.

## 11. Illustrations

```
@ img/nom-du-theme.jpg | Légende : sujet. Source : Wikimedia Commons
```

- Licence libre (Wikimedia Commons) ou créée pour le cours, ~600-800 px de large
- Légende avec source et licence
- Tant que l'image n'est pas choisie : `@ TODO_img/choisir-image.jpg | TODO : choisir une image (…)`
- Chaque image a sa ligne dans `img/credits.md`

## 12. Coin slovaque

Court, amusant, **vérifiable** (pas de chiffre approximatif) :

- « Le sais-tu ? En slovaque, on dit… »
- Des choses qu'un enfant peut voir ou vivre : la bryndza, les *kraslice*, Mikuláš, le Kofola, les chaussons à l'entrée
- Pas de clichés ni de ton scolaire

## 13. Qualité de langue

- **Français** : naturel pour un enfant de 8-12 ans
- **Slovaque** : celui qu'un enfant slovaque dirait. À relire avec attention : le cours adulte a révélé des calques fréquents
- Voir le tableau des pièges ci-dessous

### Pièges déjà rencontrés dans le cours adulte (à ne pas refaire)

| ❌ | ✅ |
|----|----|
| Nič (pour « de rien ») | Prosím. / Nemáš za čo. (*Nič sa nestalo* = ce n'est rien) |
| Ďakujem veľa | Ďakujem pekne / Ďakujem veľmi pekne |
| Je milé ťa poznať | Teší ma. |
| Aké je tvoje meno? | Ako sa voláš? / Volám sa… |
| Som v poriadku (réponse à *Ako sa máš?*) | Mám sa dobre. / Dobre, ďakujem. |
| priateľ (pour « copain ») | kamarát / kamarátka (*priateľ* = aussi « petit ami ») |
| Obliecť si! (impératif) | Obleč si! |
| Som stratený | Zablúdil som. (forme masculine : pour 🦊, dire plutôt *Neviem, kde som.*) |
| Choďte vľavo | Choď doľava. |
| Môžem pomáhať? | Môžem pomôcť? (aspect : une aide ponctuelle) |

## 14. Exercices faits main

Les exercices générés automatiquement sont pensés pour des adultes. Pour les enfants, ils sont **écrits à la main** dans `exercises/<nom de la fiche>.exercises.json`, avec `"mode": "replace"`.

- **Que du déjà vu** : les mauvaises réponses en slovaque viennent de la fiche ou des précédentes
- **Une seule bonne réponse** : pas de distracteur presque juste
- **Même forme** : un mot contre des mots, une phrase contre des phrases de longueur proche
- **Distracteurs utiles** : ils ciblent les vraies confusions d'un francophone (*dva* / *dve*, *dedo* / *deň*, *tri* / *tie*)
- **Textes à trous** : `"show_translation": true`, ponctuation autour du trou
- **Remettre en ordre** : au moins 3 étiquettes de chaque côté
- **Prénom** : `[USER_NAME]` n'est jamais un trou ni une réponse
- **Les 5 types** quand la fiche s'y prête ; l'écoute 🔊 est le plus utilisé
- Chaque exercice reprend mot pour mot une paire de la fiche. Après une modification de fiche, relancer `python3 src/sync_exercises.py --lang-dir ../slovingo-sk-fr-children` (repo Slovingo)

## 15. Vérifier avant de publier

- [ ] Illustration choisie (ou TODO explicite)
- [ ] 6-7 nouveaux mots + 2-3 complémentaires maximum
- [ ] Cartes décomposées morceau par morceau, une ligne par élément
- [ ] Aucun mot inconnu non signalé
- [ ] Dialogue : syntaxe `! 🐰 …`, mots nouveaux signalés
- [ ] Aucune forme genrée pour 🦊, ni en slovaque ni en français
- [ ] Aucune référence à une autre série ; aucune cross-référence entre fiches
- [ ] Coin slovaque : faits vérifiables
- [ ] Fiche extra : tableau complet, aucun mot nouveau
- [ ] Nom de fichier et titre selon le schéma, sous-groupe déclaré dans `lang.json`
- [ ] Ton encourageant

Build local :

```
python3 src/build.py --lang-dir ../slovingo-sk-fr-children --static-dir static
```

Le nombre de cartes audio dans `json/*.content.json` doit correspondre au nombre de lignes `!` des `.md`.
