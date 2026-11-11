# Contribuer

## Signaler un problème

Pour une coquille, un lien cassé ou une erreur factuelle, ouvrez une issue en indiquant :

- la page concernée ;
- ce qui ne va pas ;
- si possible, la correction proposée.

## Lancer le site en local

Prérequis : Ruby et Bundler.

```bash
bundle install
script/jekyll serve --source docs
```

Le site est alors disponible sur <http://localhost:4000>. Vérifiez le rendu avant de pousser.

`script/jekyll` lance Jekyll avec une rustine de compatibilité pour Ruby 3.2 et plus (`script/ruby_compat.rb`), nécessaire car `github-pages` repose sur une version ancienne de Liquid. `--source docs` indique que les pages et `_config.yml` sont dans `docs/`.

## Rédiger un article

- Les articles sont écrits en français, au format Markdown, dans `docs/_posts/`.
- Le nom de fichier suit le format `AAAA-MM-JJ-titre.md` (exemple : `2026-11-09-vcs.md`). La date de l'article vient du nom du fichier.
- Chaque article commence par un en-tête :

  ```yaml
  ---
  layout: post
  title: "Titre de l'article"
  description: "Une phrase de résumé."
  tags: [mon-tag]
  ---
  ```

  Ne mettez pas de titre `#` dans le texte : le thème affiche déjà le `title`.
- Insérez `<!--more-->` après l'introduction pour n'afficher qu'un extrait sur la page d'accueil.
- Les images vont dans `docs/images/posts/` et sont référencées depuis la racine du site (`/images/posts/mon-image.jpeg`).
- Il n'y a rien à ajouter ailleurs : l'article apparaît automatiquement sur l'accueil et dans la page « Tags ».

## Commits

Les messages de commit suivent la spécification [Conventional Commits](https://www.conventionalcommits.org/fr/v1.0.0/) :

```
<type>(<portée optionnelle>): <description>
```

Types usuels : `feat`, `fix`, `docs`, `style`, `refactor`, `chore`.

Exemples :

```
docs: ajouter un article sur le contrôle de version
fix: corriger le lien cassé dans index.md
chore: mettre à jour la configuration Jekyll
```

## Branches

Les push directs sur `main` sont autorisés.
