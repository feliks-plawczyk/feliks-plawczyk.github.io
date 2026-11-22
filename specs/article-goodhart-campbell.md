# Spec : article « Lois de Goodhart et de Campbell »

Statut : **validée** (confirmée par Féliks).

## Objectif

Article de vulgarisation : présenter la loi de Goodhart, la relier à la loi de Campbell, puis ouvrir une réflexion sur le pilotage des projets en entreprise par les indicateurs.

- **Pour qui ?** Des personnes sans culture software : chefs de projet, managers, métiers.
- **Succès :** lecture en 5 minutes environ, les deux lois clairement distinguées, une fin qui pose des questions plutôt qu'elle ne donne une méthode.

## Hypothèses

1. Article en français, `docs/_posts/2026-11-22-goodhart-campbell.md`, `<!--more-->` après l'intro.
2. Nouveau tag `pilotage` : le sujet ne relève ni de `version-control` ni vraiment de `ia`.
3. Goodhart = la mesure se dégrade. Campbell = la mesure se dégrade **et** l'activité mesurée se déforme.
4. Exemple historique : les rats de Hanoï (1902), documenté par l'historien Michael G. Vann, préféré à l'« effet cobra » de Delhi dont l'historicité n'est pas établie.
5. Exemple de Campbell : l'enseignement pour le test, tiré de son propre article.
6. Exemples de pilotage de projet génériques (tickets clos, jalons, météo projet, adoption d'un outil d'IA), sans chiffre inventé ni détail sur un client.
7. Conclusion sous forme de questions, sans rejeter les indicateurs.
8. Deux images : les rats de Hanoï et la pastèque.

## Plan de l'article

1. La loi de Goodhart (exemple et image des rats de Hanoï).
2. La loi de Campbell, avec le tableau comparatif et le point « pas de tricheurs ».
3. Et dans le pilotage de projet ? (chute sur les indicateurs pastèques).
4. Des questions plutôt que des recettes.
5. À retenir.

## Sources

- Charles Goodhart, « Problems of Monetary Management: The U.K. Experience », 1975.
- Marilyn Strathern, « 'Improving ratings': audit in the British University system », *European Review*, 1997 (formulation populaire, qu'elle rattache à Keith Hoskin).
- Donald T. Campbell, « Assessing the Impact of Planned Social Change », 1976, publié en 1979.
- Michael G. Vann, sur la chasse aux rats de Hanoï.

## Limites

- Toujours : vérifier le build local et le rendu du tableau.
- Jamais : chiffre inventé, anecdote présentée comme un fait sans source, détail sur un client.

## Critères de réussite

- Le build passe et la page existe.
- Moins de 1 000 mots (`wc -w`).
- Les deux citations sont attribuées et datées.
