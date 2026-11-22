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

## Processus pour un nouvel article

1. **Spec.** Écrire `specs/article-<sujet>.md` avec le statut **brouillon** : objectif, public, hypothèses, plan, sources, limites et critères de réussite (notamment un nombre de mots maximal). Les autres fichiers de `specs/` servent de modèle.
2. **Validation.** Féliks valide la spec avant la rédaction.
3. **Branche.** Créer une branche `feat/article-<sujet>` depuis `main` à jour.
4. **Rédaction.** Écrire l'article en suivant les règles ci-dessous, puis vérifier les critères de réussite de la spec : build local, rendu, nombre de mots (`wc -w`), liens.
5. **Spec validée.** Passer la spec au statut **validée** dans un commit séparé.
6. **Pull request.** Pousser la branche et ouvrir une PR vers `main`. Après la fusion, revenir sur `main`, faire `git pull` et supprimer la branche locale.

## Rédiger un article

- Les articles sont écrits en français, au format Markdown, dans `docs/_posts/`.
- Le nom de fichier suit le format `AAAA-MM-JJ-titre.md` (exemple : `2026-11-22-goodhart-campbell.md`). La date de l'article vient du nom du fichier, et l'URL de la page reprend la partie titre (`/goodhart-campbell`).
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
- **Tags :** réutilisez un tag existant (`version-control`, `ia`, `pilotage`) avant d'en créer un nouveau.
- **Images :** elles vont dans `docs/_images/posts/`, sont nommées `<titre>_<n>_<sujet>.jpeg` (exemple : `pilotage-projets-ia_1_avant-apres.jpeg`) et sont référencées depuis la racine du site (`/_images/posts/mon-image.jpeg`). Chaque image a un texte alternatif qui décrit ce qu'elle montre.
- **Séries :** quand un article prolonge un autre article, ajoutez un lien dans les deux sens (par exemple un lien « Article suivant » à la fin de l'article précédent).
- **Sources :** terminez l'article par une section « Sources » avec des liens. Précisez quand une source est en anglais, et quand les citations sont traduites.
- Il n'y a rien à ajouter ailleurs : l'article apparaît automatiquement sur l'accueil et dans la page « Tags ».

## Règles

**Toujours :**

- Vérifier que `script/jekyll build --source docs` passe et que la page s'affiche correctement avant de pousser.
- Faire `git pull` avant de commiter.
- Sourcer chaque chiffre, chaque date, chaque citation et chaque anecdote présentée comme un fait.
- Vérifier soi-même une source avant de la citer, y compris quand le texte vient d'ailleurs.

**Demander d'abord :**

- Ajouter une dépendance (`Gemfile`) ou un script JavaScript.
- Changer de thème ou modifier la configuration GitHub Pages.
- Supprimer ou déplacer une page existante, ce qui casserait une URL déjà diffusée.

**Jamais :**

- Inventer un chiffre, une date, une citation ou une expérience.
- Affirmer qu'un outil fait quelque chose sans source.
- Donner un détail sur un client ou une mission.
- Publier des coordonnées personnelles ou une information que Féliks n'a pas validée pour le public.
- Casser `/compte-gouttes/privacy/`, dont l'URL est déclarée dans les stores d'applications.

## Commits

Les messages de commit sont écrits en français et suivent la spécification [Conventional Commits](https://www.conventionalcommits.org/fr/v1.0.0/) :

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

- **Nouvel article ou changement important :** une branche `feat/article-<sujet>` (ou `docs/<sujet>`) et une pull request vers `main`.
- **Petite correction** (coquille, typographie, lien) : un push direct sur `main` est autorisé.
