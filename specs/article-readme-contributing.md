# Spec : article « README et CONTRIBUTING dès le début »

Statut : **validée** (confirmée par Féliks).

## Objectif

Article court : expliquer pourquoi ajouter systématiquement un `README.md` et un `CONTRIBUTING.md` est une bonne pratique, pour les humains comme pour les agents IA, et pourquoi le faire dès le début. Un encart explique pourquoi les *Conventional Commits* sont aussi une bonne pratique et pourquoi le développement logiciel les a adoptés.

- **Pour qui ?** Les mêmes débutants et personnes d'un autre métier que le développement.
- **Succès :** lecture en moins de 5 minutes, deux fichiers clairement distingués, un encart autonome sur les Conventional Commits.

## Hypothèses

1. Article en français, 500 à 700 mots, `docs/_posts/2026-11-20-readme-contributing.md`, uniquement le tag `version-control`, `<!--more-->` après l'intro.
2. `README` = la vitrine (quoi, pour qui, comment démarrer). `CONTRIBUTING` = les règles du jeu (comment signaler, travailler, nommer ses commits).
3. Côté IA : un agent qui arrive dans un dépôt n'a que les fichiers pour comprendre. Ces deux fichiers lui donnent le contexte et les règles, comme à un nouvel arrivant humain. Aucune fonction d'un outil précis n'est décrite.
4. Encart Conventional Commits : format `type: description`, types usuels, intérêts (historique lisible, tri des changements, base pour générer un journal des modifications et déterminer la version), cité depuis la spécification officielle.
5. Rappel vers « Premiers pas avec Git et GitLab », où les deux fichiers sont créés pas à pas. Lien vers le `README` et le `CONTRIBUTING` de ce site comme exemple réel.
6. « Dès le début » : écrire quand le projet est petit coûte quelques minutes, écrire plus tard demande de reconstituer ce qu'on a oublié.
7. Aucun chiffre inventé, aucun détail sur un client.

## Plan de l'article

1. Deux fichiers, deux rôles.
2. Pour les humains.
3. Pour les agents IA.
4. Pourquoi dès le début.
5. Encart : les Conventional Commits.
6. À retenir et rappel vers « Premiers pas ».

## Sources

- Spécification Conventional Commits : <https://www.conventionalcommits.org/fr/v1.0.0/>.

## Limites

- Toujours : vérifier le build local, la présence du tag unique et le lien de rappel.
- Jamais : affirmer qu'un outil IA précis lit tel fichier sans source.

## Critères de réussite

- Le build passe et la page existe.
- Moins de 800 mots (`wc -w`).
- Seul le tag `version-control` est présent.
- L'article renvoie vers « Premiers pas avec Git et GitLab ».
- « Chaque usage de l'IA est un mini projet software » renvoie vers le nouvel article.
