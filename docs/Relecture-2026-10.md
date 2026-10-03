# Relecture complète — octobre 2026

Document de travail, **à supprimer** une fois toutes les parties traitées.

Passe rapide faite le 2026-10-03 : relecture « natif slovaque bilingue » des 45 fiches (4 relecteurs en parallèle) et vérification des faits sur le web. Légende :

- 🔴 faux (langue, fait ou règle du cours)
- 🟠 maladroit, pas naturel, ou à vérifier
- 🟢 détail
- ✅ corrigé

Les exercices (`exercises/*.json`) reprennent le texte des fiches : chaque correction de fiche se répercute dans `tools/gen_exercises.py`, puis on régénère et on vérifie avec `sync_exercises.py`.

---

## Bilan rapide : l'étendue des dégâts

- **Le slovaque de base est sain** : orthographe et diacritiques propres, cas « en bloc » justes, vy/ty bien gérés, la règle de genre de 🦊 est respectée presque partout.
- **Vraies fautes de langue : peu nombreuses** (une dizaine) : *Bobule… chutí mi* (→ *chutia*), *Dovidenia* entre enfants, *Dobre?* traduit « ça va ? », *moje vnúča Katka*, *Mám rodičov*, règles fausses dans les explications (pluriel *-e → -á*, comparatifs « qui ne changent pas selon le genre »), *chlpatý* = « tout doux ».
- **Deux faits faux** dans Zvieratá : « l'ours est lent » (dangereux comme message pour des enfants en montagne) et « le chamois est plus rapide que l'aigle ». Plus quelques imprécisions (hibernation, litière des marmottes, električka, bryndza).
- **Le plus gros chantier est pédagogique** :
  - trop de mots nouveaux par fiche (souvent 8 à 11 au lieu de 6-7) et par dialogue (6 à 9 au lieu de 2-3) ;
  - trop de formes « à écouter » dans certains dialogues et extras ;
  - des mots nouveaux dans les extras ;
  - des tableaux d'extra incomplets.
- **Cohérence** :
  - du slovaque glissé dans des `{{fr:…}}` (lu par la voix française) ;
  - le gag « Ach! To je líška! / Bojím sa! / Je veľmi milá » repris trois fois presque à l'identique ;
  - l'accord *milá* autour de 🦊, traduit tantôt « il », tantôt « elle » ;
  - deux incohérences de dialogue (Rodina 05, Doma 05).

---

## Décisions (2026-10-03)

1. **Tatras / Tatry** : en slovaque on dit *Tatry* (les Slovaques ne disent jamais « Tatras ») ; « les Tatras » est le nom français. → Texte français : « les Tatras » ; mot slovaque appris en `{{Tatry}}` (Intro 02). ✅ appliqué partout (fiches, exercices, docs).
2. **Prénoms des personnages** dans les `{{fr:}}` : acceptés, lus à la française. ✅ noté dans `Format-enfants.md`.
3. **Accord autour de 🦊** : toujours *Líška je veľmi milá*, traduit « le renard est très gentil », avec remarque sur l'accord avec *líška*. ✅ noté dans `Format-enfants.md` ; à appliquer dans Rodina 05, Doma 05, Dedina 05.
4. **Limites fermes** : 6-7 mots + 2-3 complémentaires par fiche ; 3 nouveautés max par dialogue ; une forme « à écouter » max par fiche ; zéro nouveauté dans les extras. ✅ noté dans `Format-enfants.md` ; à appliquer fiche par fiche.

## Points transversaux (relevés par la passe rapide)

| | Point | Proposition |
|---|---|---|
| 🟠 | « Tatry » dans les `{{fr:}}` (Intro 01, 02, Kit 01-03, et ailleurs) : mot slovaque lu par la voix française | Écrire « les Tatras » en français, et garder *Tatry* en `{{Tatry}}` quand on veut le mot slovaque |
| 🟠 | Lettres slovaques dans les `{{fr:}}` (Intro 03 l.35, Intro 04 l.11/35/58) ; `Format-enfants.md` se contredit (exemple `{{fr:Le č se dit…}}` vs règle « pas de slovaque ») | Trancher la règle (sortir chaque lettre en `{{č}}`), puis corriger la doc |
| 🟠 | Prénoms slovaques dans les `{{fr:}}` : *Babka Zuzana, Katka, Maťo, Pani Ježková, Pán Orol* (Rodina 05 l.5/118, Doma 05 l.5, Jedlo 05 l.5, Dedina 05 l.5, Zvieratá 05 l.5/132) | Les sortir en `{{…}}`, ou décider qu'un prénom lu « à la française » est acceptable |
| 🟠 | **Accord autour de 🦊** : *Je veľmi milá* traduit « il est très gentil » mais décomposé « elle est très gentille » (Rodina 05, Doma 05, Dedina 05) | Toujours dire **« Líška je veľmi milá »** (accord visible avec le nom), traduit « le renard est très gentil », + remarque sur l'accord avec *líška* |
| 🟠 | **Gag du renard répété 3 fois** à l'identique (Rodina 05, Doma 05, Dedina 05) ; *Nevadí* en réponse à « j'ai peur » sonne faux | Varier : *Neboj sa!* (mot signalé), clin d'œil aux baies (Jedlo 05), réaction différente de Pani Ježková… |
| 🟠 | Charge de vocabulaire : fiches à 8-11 mots, dialogues à 6-9 nouveautés | Fixer une limite ferme (7 + 2 complémentaires ; 3 pour un dialogue) et alléger fiche par fiche |
| 🟠 | Formes « à écouter » : trop nombreuses dans Rodina 05, Doma 05/06, Jedlo 05, Zvieratá 05, Hry 06 ; certaines non signalées (*v nore* en Zvieratá 02, *parku*, *domov zvierat*) | Max. 1 par fiche, jamais dans un extra |
| 🟠 | Extras : mots nouveaux (*medveďa, stoly, mojom, alebo, chutia, les/v lese, malé*…), tableaux incomplets, cartes recopiées des fiches | Règle stricte : zéro nouveauté, tableau = tout ce qui a été vu dans la série |
| 🟠 | Renvois entre fiches/séries (« comme pour les chaises », « dans la prochaine fiche », « dans la série sur la nourriture ») | Supprimer, la checklist l'interdit |
| 🟢 | Titres des extras « X (extra) — Všetko o … » ≠ doc (« Série X (extra) — Všetko dokopy ») | Aligner la doc sur l'usage réel |
| 🟢 | « Les personnages : » en texte simple dans les dialogues | Passer en titre `## Les personnages` |
| 🟢 | Personnages ajoutés (🦔 Pani Ježková, 🦅 Pán Orol) absents de `Format-enfants.md` ; doc dit « le marchand du village » | Mettre à jour la doc |
| 🟢 | Sections « On révise » à une seule carte, ou ne reprenant que la fiche du jour | Deux cartes, avec du vocabulaire des fiches précédentes |

---

## 00 Introduction

> ✅ **Traité le 2026-10-03.** Intro 01 : « des animaux, comme toi » ; Andrea « une hase des Tatras ». Intro 02 : *Tatry* appris, marmottes « tout en haut ». Intro 03 : *zmrznúť* retiré, lettres sorties du `{{fr:}}` (avec ä, ô). Intro 04 réécrite : 6 astuces, tableaux « Lettre / Ça se dit » hors `{{fr:}}`, règle des de/te/ne/le/di/ti/ni/li mouillés, *ľad* « lyat », *chlieb* « khliep » + mot sur les finales, le chat qui souffle « khhh », ä et ô, carte *Dobrý deň*. Intro 05 : « Nombre », *jeden prst / dva prsty / desať prstov*.

| | Fiche / ligne | Problème | Proposition |
|---|---|---|---|
| 🟢 | 01 l.7 | « tes nouveaux voisins, des animaux qui parlent » : comme si 🦊 n'en était pas un | « …des animaux comme toi ! » |
| 🟢 | 01 l.35 | « Andrea, ton amie des Tatry » alors qu'on la rencontre en Kit 03 | Harmoniser |
| 🟠 | 02 l.21 | « pleines de marmottes » : sous-espèce rare, haute altitude | « de lacs et, tout en haut, de marmottes » |
| 🟠 | 03 l.35 | Lettres slovaques dans `{{fr:}}` ; manquent **ä** et **ô** | Sortir les lettres, ajouter ä (et ô) |
| 🟢 | 03 l.29 | *zmrznúť* trop pour 8 ans | « ça vient du mot *geler* » |
| 🟠 | 04 l.5 | « On lit comme c'est écrit » : contredit par *ľad* « lyat », *chlieb* « khliep » | « presque toujours », + mot sur les finales |
| 🟠 | 04 l.41 | *ľad* « lyad » → « lyat » ; « glace (gelée) » ambigu | « glace (l'eau gelée) » |
| 🟠 | 04 | Règle manquante : **de, te, ne, le, di, ti, ni, li** mouillés (dès *deň, dovidenia, nie, desať*) | L'ajouter dans la partie ď/ť/ň/ľ, + exemple *deň* |
| 🟠 | 04 l.47 | « le j de jota » ne parle pas à un enfant | « comme un chat qui souffle : khhh ! » |
| 🟢 | 04 l.49-52 | Tableau du *ch* sans colonne « Ça se dit » | Ajouter |
| ✅ | 05 l.25 | Slovaque dans `{{fr:}}` (*ä*, *päť*) | Corrigé |
| 🟠 | 05 l.43 | « À partir de 5, le mot change » laisse croire *dva prst* | « jeden prst, dva prsty, desať prstov » |
| 🟢 | 05 l.11 | « Chiffre » (10 n'en est pas un) | « Nombre » |

## 00 Kit de Survie

> ✅ **Traité le 2026-10-03.** Kit 01 : *Dovidenia* « pour un adulte », *sa máš* = « tu vas ». Kit 02 : *ja* ajouté. Kit 03 allégé (5 mots + *nevadí* ; *hovorím / nehovorím / po slovensky* retirés), Andrea dit une phrase inconnue → 🦊 utilise *Prepáč, nerozumiem* ; *Ahoj* au lieu de *Dovidenia* entre enfants ; *Prosím?* pour faire répéter. Kit 04 : 17 cartes inédites (plus de *Dobre?*, plus de cartes contradictoires), tableau aligné, Coin sans « être et avoir ». Exercices Kit 03-04 réécrits.

| | Fiche / ligne | Problème | Proposition |
|---|---|---|---|
| 🟢 | 01 l.42 | *sa máš* = « tu te portes » | « tu vas » |
| 🟢 | 01 l.37 | *Dovidenia* « plus poli que ahoj » | Préciser « avec un adulte » |
| 🟠 | 02 l.51 | *ja* utilisé (*Aj ja!*) sans être dans le tableau | Ajouter `ja` (ici et dans l'extra) |
| 🔴 | 03 l.69 et l.75 | *Dovidenia* entre enfants : registre faux, contredit Kit 01 | *Ahoj, [USER_NAME]!* / *Ahoj, Andrea!* |
| 🟠 | 03 l.84 | Pour faire répéter, un Slovaque dit *Prosím?* (intonation montante) plutôt que *prepáč* | Remplacer, en lien avec Kit 02 |
| 🟠 | 03 l.5 | « Andrea, ton amie des montagnes » pour une première rencontre | « une hase très sympa » |
| 🟠 | 03 | 9 nouveautés dans le dialogue | Alléger (ou assumer une fiche d'apprentissage) |
| 🟢 | 03 | Décompositions groupées ; pas de « Encore quelques phrases » | Une ligne par élément ; ajouter 3 cartes |
| 🔴 | 04 l.93 | *Dobre? Áno, dobre!* traduit « Ça va ? » : *Dobre?* seul = « D'accord ? » | *Máš sa dobre? Áno, ďakujem!* |
| 🟠 | 04 l.101 | *Dovidenia, [USER_NAME]!* à un enfant | *Ahoj* |
| 🟠 | 04 l.48 | *Dobrý deň! Dovidenia!* en une réplique | *Ďakujem! Dovidenia!* |
| 🟠 | 04 l.53 | *Nie, ďakujem. Áno, prosím.* se contredit | Couper, ou *Čaj? Áno, prosím.* |
| 🟠 | 04 | 14 cartes dont 6 recopiées | Recombiner, viser 15-18 inédites |

## 01 Rodina

> ✅ **Traité le 2026-10-03.** R01 : *To je moja mama. A to je môj tato.* ; hibernation « plus de six mois ». R02 : « Quel âge as-tu ? », *koľko* et *ja* en (rappel) → 7 vrais mots nouveaux, *má* = « il ou elle a », meniny « presque chaque jour ». R03 : *Mám rodičov*, *rodičia*, *vnúča*, *dieťa* et le point « moje » retirés (4 mots nouveaux) ; *To je môj strýko. A to je moja teta.* ; carte *Nemám dedka, ale mám babku*. R04 : décomposition dégroupée (gardé : 5 adjectifs × 2 formes, comptés comme 5 mots). R05 réécrit : 3 nouveautés seulement (*deti, líška, bojím sa*), plus de *jej / teraz / nebojím sa / v Tatrách / veľkú / moje vnúča*, 🦊 répond sur sa sœur et son papa, *Nie! Líška je veľmi milá!* avec remarque sur l'accord, Coin salaš/bryndza corrigé sans renvoi. R06 : tableau aligné, plus de *medveďa* ni *moje vnúča*, 16 cartes inédites. Doma 02 : exemple *vnúča* remplacé.
>
> ⚠️ Conséquence : *teraz* n'est plus introduit en Rodina → à introduire en Hry 03 (tableau).

| | Fiche / ligne | Problème | Proposition |
|---|---|---|---|
| 🟠 | 01 l.81 | *To je moja mama a môj tato* : deux sujets → *To sú…* à l'écrit | Couper : *To je moja mama. A to je môj tato.* |
| 🟢 | 01 l.55 | *ô* = « wo » (plutôt « ouo ») | Acceptable |
| 🟠 | 01 l.92 | Hibernation « environ six mois » : plutôt ~7 mois (201-227 j) | « plus de six mois » |
| ✅ | 02 l.40 | Slovaque dans `{{fr:}}` (*rokov*) | Corrigé |
| 🟢 | 02 l.16 | `má` = « il a » seulement | « il ou elle a » (+ exercices) |
| 🟠 | 02 l.5 | « Combien d'années as-tu ? » | « Quel âge as-tu ? » |
| 🟠 | 02 | 9 mots nouveaux | Alléger |
| 🟢 | 02 l.127 | Meniny « chaque jour » | « presque chaque jour » |
| ✅ | 03 l.148 | « une marmotte t'a vu » : participe accordé à 🦊 | Corrigé : « sait que tu es là » |
| 🟠 | 03 l.83 | *Mám rodičov* / « J'ai des parents » : personne ne dit ça | Supprimer la carte (et *rodičia*) ou autre phrase |
| 🟠 | 03 | *vnúča*/*moje* dans la bouche d'un enfant ; 3 points de grammaire dans la fiche | Déplacer ou réduire |
| 🟢 | 03 l.38 | « on ajoute -a » (*dedko → dedka* remplace) | « on met -a » |
| ✅ | 04 l.33, l.44 | Slovaque dans `{{fr:}}` (*je, -ý/-á, aký/aká*) | Corrigé |
| 🟠 | 04 | 13 entrées, 2 points de grammaire | Alléger |
| 🟠 | 04 l.148 | Décomposition groupée ; *stará* un peu cru pour une grand-mère | À revoir |
| 🔴 | 05 l.99-105 | Maťo demande « Aký je tvoj tato? », 🦊 ne répond pas, Babka dit *Nevadí!* : laisse entendre que 🦊 n'a pas de papa | Ajouter une réponse de 🦊 et une réplique positive |
| 🔴 | 05 l.81-85 | *Je veľmi milá* : « il » / « elle » contradictoires, et lecture « 🦊 est une fille » | *Líška je veľmi milá* (voir transversal) |
| 🔴 | 05 l.54 | *To je moje vnúča Katka a moje vnúča Maťo* : pas naturel | *To je moja vnučka Katka a môj vnuk Maťo*, ou simplement *Ahoj, deti!* |
| 🔴 | 05 | ~8 nouveautés dans le dialogue (*jej, deti, líška, bojím sa, nebojím sa, teraz, v Tatrách, veľkú*) | Alléger |
| 🟠 | 05 l.110 | *teraz* « à écouter » alors qu'il est dans le tableau | Harmoniser |
| 🟠 | 05 l.118 | Renvoi « dans la série sur la nourriture » | Supprimer |
| 🟢 | 05 l.75 | *Ach!* pour une peur : *Jéj!* plus naturel | À voir |
| 🔴 | 06 l.154 | *Bojím sa medveďa?* : forme nouvelle dans l'extra, question bizarre | Supprimer/remplacer |
| 🟠 | 06 l.130 | *Moje vnúča je malé* : règle nouvelle (-é), phrase sans sens pour un enfant | Remplacer |
| 🟠 | 06 | Tableau incomplet (*jej, mamu…*) ; carte l.58 recopiée de la fiche 05 | Compléter, remplacer |
| 🟢 | 06 l.119-121 | Ordre de décomposition (*strýka* avant *a*) | Remettre dans l'ordre |

## 02 Doma

> ✅ **Traité le 2026-10-03.** D01 : *Andrea býva tam* (+ remarque : le lièvre n'a pas de terrier, le renard si). D02 : *je* (rappel), 2e carte « On révise ». D03 : marmottes → litière d'herbe sèche ; *aj kniha, aj lampa* ; 2e carte « On révise ». D04 : règle du pluriel « souvent », sans finales dans le `{{fr:}}` ; 2e carte « On révise ». D05 réécrit : 3 nouveautés (*vitaj, blízko, ďakujem za pozvanie*) et une seule forme à écouter (*líšky*) ; 🦊 remercie pour l'invitation et dit où il habite ; nouveau gag « Líška je moja kamarátka ! » au lieu de « Bojím sa / Nevadí ». D06 : plus de *stoly / mojom / mojej / Andrey / adjectifs au pluriel*, chambre « où il fait chaud » au lieu de « très gentille », tableau complet (pluriels, dva/dve…).

| | Fiche / ligne | Problème | Proposition |
|---|---|---|---|
| 🟠 | 01 l.111 (+ Doma 05 l.79) | *Andrea býva v nore* : le lièvre vit dans un gîte en surface, pas un terrier (c'est le renard qui a une *nora* !) | *Andrea býva tam*, et donner la *nora* à 🦊 |
| 🟢 | 01 | 9 entrées | Alléger |
| ✅ | 02 l.27 | Slovaque dans `{{fr:}}` (*mama, brat, vnúča*) | Corrigé |
| 🟠 | 02 l.19 | *je* présenté comme nouveau (déjà vu en Rodina 04) | « (rappel) » |
| 🟢 | 02, 03, 04 | « On révise » à une carte | Deux cartes |
| 🟠 | 03 l.93 | Les marmottes ne font pas de réserve d'herbe : c'est une **litière** pour hiberner | « elles tapissent leur chambre d'herbe sèche » |
| 🟢 | 03 l.108 | *kniha aj lampa* | *aj kniha, aj lampa* |
| 🟠 | 04 l.33 | Règle « -a → -y, -o → -á » trop absolue (*kuchyne, hniezda, postele*) ; finales dans `{{fr:}}` | « souvent », sortir les finales |
| 🔴 | 05 l.96 | 🦊 demande à Katka « Kde bývaš ty? Aj v nore? » alors qu'on est dans son terrier | 🦊 dit où il habite : *Ja bývam v nore blízko Andrey!* |
| 🔴 | 05 l.91-94 | *Je veľmi milá* : « elle » sur 🦊 | *Neboj sa! Líška je veľmi milá.* |
| 🟠 | 05 | 3 formes « à écouter » (*líšky, Andrey, mojej*) | Une au maximum |
| 🟢 | 05 l.113 | *Ďakujem za pozvanie* irait bien dans la bouche de 🦊 | Déplacer |
| 🔴 | 06 l.95 | *stoly* / pluriel masculin : nouveau dans l'extra | *Sú tu tri stoličky a dve lampy.* |
| 🔴 | 06 l.142 | Chambre « très gentille » (*milá*) | « très agréable », autre phrase |
| 🟠 | 06 l.64, l.121 | *mojom*, adjectifs au pluriel : nouveautés dans l'extra | *V brlohu je teplo.* ; retirer la remarque |
| 🟠 | 06 | Tableau incomplet (pluriels, *dva*, *ty, aj, ale, a*) | Compléter |

## 03 Jedlo

> ✅ **Traité le 2026-10-03.** J01 : *jedlo* utilisé (« Kde je jedlo? »), 2e carte « On révise ». J02 : renvoi « comme après *pijem (vodu)* ». J03 : 6 entrées (citron et acide passés en complémentaire), « J'aime cette pomme » + *chutia mi* à écouter, « comme *milý / milá* ». J04 : *dobrá* dans les nouveaux mots, « très souvent » une soupe, complémentaires *ráno / večer*. J05 réécrit : 3 nouveautés (*chcete, bryndzové halušky, nejem*), une seule forme à écouter (*bryndzu*) ; plus de *s / nikdy / mňa / Andreu / Je obed* ; Katka ne « déteste » plus le fromage ; nouveau clin d'œil « Uf! Líška chce bobule! » ; *Bobule… chutí mi* supprimé ; Coin : bryndza « surtout » de brebis, lardons « souvent », fromage fait au salaš puis bryndza. J06 : tableau complet, plus de *alebo / chutia / nikdy*, « s'il te plaît » à Babka.

| | Fiche / ligne | Problème | Proposition |
|---|---|---|---|
| 🟢 | 01 l.15 | *jedlo* jamais utilisé dans une carte | L'utiliser ou le passer en complémentaire |
| 🟢 | 01 | 8 mots ; « On révise » dans la fiche 01 | Alléger, renommer |
| 🟢 | 02 l.38 | « Comme après {{mám}} » | « Comme après {{pijem}} (vodu) » |
| 🟢 | 02 | *Chcem ešte jablko* : un enfant dirait *ešte jedno jablko* ; *oriešky* plus « enfant » que *orechy* | Facultatif |
| 🟠 | 03 l.30 | Il manque : au pluriel, le verbe change (*chutia mi*) | Ajouter une remarque « à écouter » |
| 🟠 | 03 l.53 | *Chutí mi jablko* = « cette pomme est bonne », pas « j'aime les pommes » | Préciser la traduction |
| 🟢 | 03 | 10 mots + 2 ; m/f/n d'un coup ; *sladké* aussi pour le pluriel non dit | Alléger |
| 🟢 | 04 l.78 | *dobrá* utilisée avant d'être dans le vocabulaire | Le monter dans « nouveaux mots » |
| 🟢 | 04 l.98 | « presque toujours par une soupe » | « très souvent » |
| 🔴 | 05 l.140 | *Bobule sú sladké a chutí mi* → **chutia mi** | Corriger |
| 🟠 | 05 l.5 | *Babka Zuzana*, *bryndza* dans `{{fr:}}` | Sortir |
| 🟠 | 05 | Trop de nouveautés (*halušky, bryndza, chcete, s, nikdy, nejem, mňa*) + *bryndzou, Andreu, mňa* | Retirer *mňa* (→ *nie Andreu!*), déplacer *nikdy* |
| 🟠 | 05 l.31 | *Je obed!* → *Deti, obed!* | Corriger |
| 🟠 | 05 l.113 | Katka dit *Nikdy nejem syr!* : affaiblit le gag de Babka ; *Chutí mi polievka aj chlieb* (2 sujets) | *Nikdy nejem mrkvu!* ; *chutia* |
| 🟠 | 05 l.127 | Fait : au *salaš* on fait le fromage de brebis (*hrudka*), la bryndza est fabriquée ensuite en fromagerie ; bryndza = « surtout » brebis ; lardons « souvent » plutôt que « parfois » | Reformuler |
| ✅ | 05 l.64, l.150 | Coquilles (« ... », « du miel ») | Corrigé |
| 🟠 | 06 | Tableau incomplet ; *alebo* et *chutia* nouveaux dans l'extra | Compléter, retirer |
| 🟢 | 06 | *Máš smäd? Pijem vodu…* (ne s'enchaîne pas) ; « s'il vous plaît » à Babka seule ; *čaj* « thé » vs « thé, tisane » | Harmoniser |

## 04 Dedina

> ✅ **Traité le 2026-10-03.** D01 : *do* = « à, au, en (pour aller) » ; Ždiar « motifs peints », *električka* « relie les stations au pied des hautes montagnes » ; 2e carte « On révise ». D02 : « en France ou en Belgique » ; 2e carte « On révise ». D03 : plus de « forme la plus simple du verbe » ni de renvoi ; *Počkaj! Pomaly!*. D04 : « C'est la première fois » ; *Prosím?* + intonation ; *pán Orol* au lieu de *pán Medveď* ; carte *Ako sa máte?* (utilise enfin *vy / máte*) ; 2e carte « On révise » ty/vy. D05 : *Aj ja idem!* au lieu de *tiež* ; nouveau gag sans peur : Pani Ježková propose des baies au renard (« Ach! Líška! Chceš bobule? ») ; « Les personnages » en titre. D06 : tableau complété, *a* au lieu de *ale*, *Počkaj… Aj ja idem!*, client qui demande « Máte chlieb a mlieko? », ordre *Počkaj! Ideš do dediny? Poď sem!*, *pán Orol*. Doc : 🦔 et 🦅 ajoutés au tableau des personnages.

| | Fiche / ligne | Problème | Proposition |
|---|---|---|---|
| 🟠 | 01 l.102 | L'*električka* relie Poprad, Starý Smokovec, Štrbské Pleso, Tatranská Lomnica (stations, pas Ždiar) ; Ždiar : motifs peints de plusieurs couleurs | Reformuler les deux faits |
| 🟢 | 01 l.17 | *do* = « vers, dans » | « à, au, en (pour aller) » |
| ✅ | 02 l.83 | « C'est pas cher. » | Corrigé « Ce n'est pas cher. » (+ exercices) |
| 🟢 | 02 l.101 | « comme en France » | « comme en France ou en Belgique » |
| 🟢 | 02 l.115 | *Koľko to stojí spolu?* : *Koľko to bude spolu?* plus courant | À voir |
| 🟠 | 03 l.25 | « la forme la plus simple du verbe » : faux | Supprimer |
| 🟠 | 03 l.34 | Renvoi « dans la prochaine fiche » | Supprimer |
| 🟠 | 03 l.116 | *Počkaj, nie rýchlo!* pas naturel | *Počkaj! Pomaly!* |
| 🟠 | 04 l.79 (+ 06 l.95) | « pán Medveď » : personnage inconnu, confusion avec Maťo | 🦅 *pán Orol* |
| 🟠 | 04 l.47 | *Prosím?* : OK, mais expliquer l'intonation et « encore un visage de *prosím* » | Remarque |
| 🟢 | 04 | *vy* jamais utilisé dans une carte ; « Voici la première fois » | Ajouter une carte ; « C'est la première fois » |
| 🔴 | 05 l.105 | Traduction « il » / décomposition « elle » (*Je veľmi milá*) | Voir transversal |
| 🟠 | 05 l.99-108 | 3e reprise du même gag ; *Nevadí* face à la peur | Varier |
| 🟠 | 05 l.5 | *Pani Ježková* dans `{{fr:}}` | Sortir |
| 🟠 | 05 l.29 | *tiež* évitable | *Aj ja idem!* |
| 🟠 | 06 | Tableau incomplet ; incohérences (*Poď… Počkaj*, client qui dit « voici le pain », *ale* sans logique) | Corriger |

## 05 Zvieratá

| | Fiche / ligne | Problème | Proposition |
|---|---|---|---|
| ✅ | 01 l.17 | « la lièvre femelle » | Corrigé « la femelle du lièvre » |
| 🟠 | 01 | 11 mots nouveaux | Sortir *rys/vlk* en complémentaire |
| 🟠 | 01 l.79, 86 | *V Tatrách je rys* : *V Tatrách žije rys* plus naturel | À voir |
| 🟠 | 01 l.106 | Endémiques : aussi côté polonais (et réintroductions en Basses Tatras) | « nulle part ailleurs que dans les Tatras » |
| 🔴 | 02 l.24 | Règle « -o ou -e devient -á » fausse : *zviera, mláďa* prennent **-tá** | Réécrire (deux mots spéciaux) |
| 🟠 | 02 l.24 | Renvoi « comme pour les chaises » | Supprimer |
| 🟠 | 02 l.67, 71 | *v nore* jamais introduit dans cette série (vu en Doma) | « (rappel) » ou « à écouter » |
| 🔴 | 03 | *chlpatý* = « poilu », pas « tout doux » (aussi dans l'extra et les exercices) | « tout poilu » |
| ✅ | 03 l.47 | Slovaque dans `{{fr:}}` | Corrigé |
| 🟠 | 03 l.31 | *rýchla* : fin courte après syllabe longue, non expliqué ; renvoi « comme pour la famille » | Remarque ; supprimer le renvoi |
| 🟠 | 03 | *veľké labky* pour un ours : *laby* | *Svišť má malé labky*, ou *laby* |
| 🔴 | 03 l.145 | **« L'ours est lent »** : faux (~50 km/h), mauvais message de sécurité | *Medveď je veľký a silný* / *…ale aj rýchly* (+ exercice) |
| 🟢 | 03 l.47 | *malé* utilisé avant d'être introduit | Réordonner |
| 🔴 | 04 l.34 | « Ces mots ne changent pas selon le genre » : faux (*väčší/väčšia/väčšie*) | « Ici, que des mots masculins ; pour les autres, la fin change » |
| 🟠 | 04 | *alebo* jamais introduit | L'ajouter au tableau |
| 🔴 | 04 l.125 | « Le chamois est plus rapide que l'aigle » : faux (piqué de l'aigle 240-320 km/h) | Autre phrase |
| 🟠 | 04 l.68 | « chamois plus rapide que le loup » : invérifiable | *Zajac je rýchlejší ako vlk* |
| 🟠 | 04 l.120 | « La marmotte est la plus petite » : faux dans la série (écureuil) | Autre phrase |
| 🟠 | 04 l.100 | « l'ours n'a pas besoin d'être rapide » : même cliché | « …pas besoin d'être petit » |
| ✅ | 05 l.135 | Espace en fin de ligne | Corrigé |
| 🟠 | 05 l.5, l.132 | *Pán Orol* dans `{{fr:}}` | Sortir |
| 🟠 | 05 | 6 mots nouveaux + 4 formes à écouter (*parku, Choďte, bývajú, ich*) | Alléger |
| 🟠 | 05 l.105 | Katka propose une pomme juste après « nekrmte zvieratá » : message brouillé | Gag assumé avec une remarque, ou retirer |
| 🟠 | 05 l.111 | *Ja nejem jablko* → *jablká* (générique) | Corriger |
| 🟢 | 05 l.103 | « la nourriture des humains » dans un monde d'animaux | « notre nourriture » |
| 🟠 | 06 | Tableau incomplet ; *Prečo ideš po chodníku? Rozumiem…* incohérent | Compléter, réécrire |

## 06 Hry

| | Fiche / ligne | Problème | Proposition |
|---|---|---|---|
| ✅ | 01 l.15, 06 l.15 | « la cache-cache » | Corrigé « le cache-cache » (+ exercices) |
| 🟠 | 01 | *s loptou* + *na + -u* dans la même fiche | Retirer *s loptou* du tableau |
| 🟢 | 01 l.104 | *spolu* déjà vu (Dedina 02) | « (rappel) » |
| 🟢 | 01 l.115 | « je joue à cache-cache » tout seul | Autre phrase |
| ✅ | 02 l.104 | Slovaque dans `{{fr:}}` ; « on ne rentre pas » | Corrigé |
| 🟠 | 02 | Place de *sa* (*hrať sa → môžem sa hrať*) non expliquée | Remarque |
| 🟠 | 02 l.119 (+ 06 l.74) | *Nemôžeme sa hrať tu* pas naturel | *Tu sa nemôžeme hrať.* / *Tam sa môžeme hrať.* |
| 🟢 | 02 l.83 | « Je ne peux pas rentrer à la maison » un peu angoissant | *Nemôžem ísť do dediny.* |
| 🟠 | 03 | *na rade* = « à son tour » trompeur, « il est à son tour » pas du français | « au tour (de jouer) » |
| 🟠 | 03 l.123 | « J'arrive pour chercher ! » | « Ça y est, je viens chercher ! » |
| 🟠 | 03 l.89 | *Mám ťa!* plutôt cri du jeu du chat ; à cache-cache *Našiel/Našla som ťa* (genré) | Garder (neutre) + remarque |
| 🟢 | 04 l.15 | « le fun » | « l'amusement » |
| 🟠 | 05 l.118 | *Deti! Je obed!* | *Deti, obed!* |
| 🟢 | 05 | *Wau* non décomposé ; *Poď* à plusieurs → *Poďte* ; « sur/dans la prairie » ; *Strom je veľký* contredit l.91 ; nom d'image avec « lac » | Retouches |
| 🟠 | 06 l.102 | *les / v lese* : mot nouveau dans l'extra | *Hráme sa na lúke, nie tu.* |
| 🟠 | 06 | Tableau incomplet ; répliques contradictoires | Compléter |

---

## Faits : vérifiés ✅

TANAP 1949 · faune des Tatras (lynx, loup, cerf, aigle royal, chamois, marmotte, ours) · ours = plus grand carnivore des Tatras · marmottes en famille, sifflent, terriers à plusieurs entrées · cinq pays voisins · euro (depuis 2009) · Bratislava–Vienne ~1 h en train · papuče · *Všetko najlepšie*, meniny · *Dobrú chuť / Ďakujem, aj tebe* · soupe en entrée · bryndzové halušky plat national · salaše · myrtilles et framboises (cueillette interdite dans les zones protégées 3 à 5) · fleurs protégées · fermetures saisonnières du TANAP (1er novembre - 31 mai) · chata · mamka / ocko.

Invérifiables mais plausibles : randonneurs qui se saluent, « Dobrý deň » à tous les adultes au village, texte exact des panneaux (*Zákaz vstupu* / *Vstup zakázaný* / *Chodník uzavretý*).

---

## Suivi

| Partie | État |
|---|---|
| Points transversaux | tranchés (2026-10-03), application série par série |
| 00 Introduction | ✅ passe détaillée faite (2026-10-03) |
| 00 Kit de Survie | ✅ passe détaillée faite (2026-10-03) |
| 01 Rodina | ✅ passe détaillée faite (2026-10-03) |
| 02 Doma | ✅ passe détaillée faite (2026-10-03) |
| 03 Jedlo | ✅ passe détaillée faite (2026-10-03) |
| 04 Dedina | ✅ passe détaillée faite (2026-10-03) |
| 05 Zvieratá | à faire |
| 06 Hry | à faire |
| Docs (Format, Progression, README) | à faire |
