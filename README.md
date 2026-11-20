# feliks-plawczyk.github.io

Blog personnel et pages d'applications, publiés avec Jekyll sur GitHub Pages : <https://feliks-plawczyk.github.io>

## Objectif du blog

Ce blog partage ma vision de l'utilisation de l'IA, pour des usages **personnels** comme **industriels**, à destination de personnes qui n'ont pas forcément la culture software.

Je cherche à écrire des articles de **vulgarisation** : simples, concrets et lisibles en quelques minutes au maximum.

## Contenu

- `docs/_posts/` : articles du blog, affichés sur la page d'accueil.
- `docs/applications/` : descriptions d'applications et politiques de confidentialité.
- `docs/about/` : page « À propos ».
- `docs/index.html` : accueil paginé (liste des articles), fourni par le thème.
- `docs/_data/` : auteur (`author.json`) et liens sociaux (`social.json`).
- `docs/_config.yml` : configuration Jekyll, navigation, et thème [Scriptor](https://github.com/JustGoodThemes/Scriptor-Jekyll-Theme) chargé via `remote_theme`, épinglé sur un commit.

Le site est publié depuis la branche `main`, dossier `/docs`.

## Lancer en local

```bash
bundle install
script/jekyll serve --source docs
```

## Contribuer

Voir [CONTRIBUTING.md](CONTRIBUTING.md).
