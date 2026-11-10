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
bundle exec jekyll serve --source docs
```

Le site est alors disponible sur <http://localhost:4000>. Vérifiez le rendu avant de pousser.

`--source docs` indique que les pages et `_config.yml` sont dans `docs/`.

## Rédiger un article

- Les articles sont écrits en français, au format Markdown, dans `docs/blog/`.
- Le nom de fichier suit le format `AAAAMMJJ-sujet.md` (exemple : `20261109-vcs.md`).
- Les images vont dans `docs/images/posts/` et sont référencées en chemin relatif (`../images/posts/mon-image.jpeg` depuis `docs/blog/`).
- Ajoutez le lien de l'article dans la section « Pages » de `docs/index.md`.

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
