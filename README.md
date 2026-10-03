# Slovingo-sk-fr-children 🇸🇰 🇫🇷

**Apprendre le slovaque en s'amusant — pour les enfants de 8 à 12 ans**

Un cours de slovaque pour enfants francophones, construit sur le framework [Slovingo](https://github.com/lstux/Slovingo). C'est la version « enfants » du cours adulte [Slovingo-sk-fr](https://github.com/lstux/Slovingo-sk-fr), et la cousine du cours d'allemand [Slovingo-de-fr](https://github.com/lstux/Slovingo-de-fr), dont il reprend l'approche.

## Ce qu'il y a dedans

- **Fiches** : cartes interactives avec prononciation et audio
- **Séries** : progressions thématiques de 6 fiches, difficulté croissante
- **Dialogues** : scènes avec des personnages récurrents
- **Exercices** : écrits à la main, jamais plus difficiles que ce qui a été vu
- **Vocabulaire** : peu de mots à la fois, réemployés souvent

## Le monde

Tout le cours se passe dans les **Tatras**, les hautes montagnes de Slovaquie. Les personnages sont des animaux qui parlent et vivent dans des terriers, des tanières et des nids. Toi, tu viens d'arriver dans la montagne et tu apprends le slovaque avec tes nouveaux voisins. Au fil des fiches, un petit message revient : **protéger la nature** (rester sur le sentier, ne pas nourrir les animaux, remporter ses déchets).

## Les personnages

Tous ont une tête d'animal comme avatar, dans les dialogues :

| Avatar | Personnage |
|---|---|
| 🦊 | Toi — l'enfant lui-même, sous son propre prénom : tu viens d'arriver dans les Tatras |
| 🐰 | Andrea, 11 ans, la grande de la bande |
| 🐹 | Katka, 8 ans, une marmotte |
| 🐻 | Maťo, 9 ans, un ours, le grand frère de Katka |
| 🐑 | Babka Zuzana, leur grand-mère, une brebis des pâturages |

## Les séries

| N° | Série | Thème |
|---|---|---|
| 00 | Kit de Survie | Dire bonjour, merci, se présenter |
| 01 | Rodina | La famille |
| 02 | Doma | Chez soi : terriers, tanières et nids |
| 03 | Jedlo | Les repas et la nourriture |
| 04 | Dedina | Le village au pied des montagnes |
| 05 | Zvieratá | Les animaux des Tatras et leur protection |
| 06 | Hry | Les jeux dans la nature |

## Pour commencer

1. [docs/Format-enfants.md](./docs/Format-enfants.md) : comment sont écrites les fiches
2. [docs/Progression-enfants.md](./docs/Progression-enfants.md) : vocabulaire, grammaire et prononciation, série par série

## Structure

```
slovingo-sk-fr-children/
├── docs/        # Format et progression
├── md/          # Fiches (SMD, Slovingo Markdown)
├── exercises/   # Exercices écrits à la main (JSON)
├── img/         # Illustrations
└── lang.json    # Configuration (slovaque → français)
```

## Dépôts liés

- [lstux/Slovingo](https://github.com/lstux/Slovingo) : le framework (moteur, docs)
- [lstux/Slovingo-sk-fr](https://github.com/lstux/Slovingo-sk-fr) : le cours adulte
- [lstux/Slovingo-de-fr](https://github.com/lstux/Slovingo-de-fr) : le cours d'allemand pour enfants (modèle)
