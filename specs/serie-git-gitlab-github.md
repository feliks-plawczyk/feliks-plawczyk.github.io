# Spec : série « Git, GitLab, GitHub » (3 articles)

Statut : **validée** (cadrage confirmé par Féliks). Branche : `feat/articles-git-gitlab-github`, créée depuis `feat/scriptor-theme` (PR #1 non fusionnée).

## Objectif

Publier trois articles courts pour des débutants et des personnes qui ne viennent pas du développement logiciel.

1. **Git, GitLab, GitHub : qui fait quoi ?** Lever la confusion entre l'outil (Git) et les plateformes (GitLab, GitHub), puis comparer GitHub et GitLab avec une **recommandation selon le profil**.
2. **L'histoire de Git.** Pourquoi et quand Linus Torvalds l'a créé, puis la naissance de GitHub et de GitLab.
3. **Premiers pas avec Git et GitLab.** Créer un compte et un dépôt sur GitLab, puis initialiser le dépôt avec les bonnes pratiques : au minimum un `README` et un `CONTRIBUTING`.

Succès : chaque article se lit en moins de 10 minutes, les trois se renvoient les uns aux autres et à l'article des 4 piliers, et les faits sont vérifiables.

## Hypothèses

1. Les articles sont en français, dans `docs/_posts/`, avec `layout: post`, le tag `version-control` et un `<!--more-->` après l'intro. Chacun fait 700 à 1 200 mots.
2. Les dates sont toutes `2026-11-11`, avec une heure dans l'en-tête pour fixer l'ordre sur l'accueil (article 1 en haut, puis 2, puis 3). Les heures sont tôt dans la journée pour ne pas être « dans le futur » au build.
3. L'article 3 est en **texte seul**. Féliks ajoutera lui-même les captures d'écran. Des commentaires HTML marquent les emplacements.
4. Aucune donnée personnelle dans les exemples (noms et adresses génériques).
5. Les faits de l'article 2 sont recoupés avec des sources en ligne, citées en fin d'article. Les dates de GitHub (2008, rachat annoncé en juin 2018 et finalisé en octobre 2018) et de GitLab (2011) sont rappelées sobrement.
6. Pas de note sur GitHub dans l'article 3.

## Fichiers

- `docs/_posts/2026-11-11-git-gitlab-github.md`
- `docs/_posts/2026-11-11-histoire-de-git.md`
- `docs/_posts/2026-11-11-premiers-pas-git-gitlab.md`

## Limites

- Toujours : vérifier le build local et l'affichage sur l'accueil.
- Jamais : inventer un chiffre, une date ou une citation non sourcés.

## Critères de réussite

- `script/jekyll build --source docs` passe et les trois pages existent.
- Chaque article fait moins de 1 300 mots (`wc -w`).
- L'article 1 contient un tableau GitHub contre GitLab et une recommandation par profil.
- L'article 2 cite ses sources.
- L'article 3 contient un `README` et un `CONTRIBUTING` d'exemple prêts à copier.

## Questions ouvertes

Aucune. L'interface de GitLab évolue : l'article 3 le signale et décrit les menus par leur intitulé général.
