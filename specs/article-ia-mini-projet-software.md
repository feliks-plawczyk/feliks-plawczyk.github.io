# Spec : article « L'IA comme mini projet software »

Statut : **validée** (points de relecture confirmés par Féliks).

## Objectif

Septième article de la série : expliquer que Féliks aborde toute utilisation de l'IA comme un mini projet software, avec les étapes d'un SDLC classique, et qu'il capitalise entre chaque session dans un fichier de reprise versionné.

- **Pour qui ?** Les mêmes débutants et personnes d'un autre métier que le développement.
- **Succès :** lecture en moins de 10 minutes, cinq étapes claires, un modèle de fichier de reprise copiable.

## Hypothèses

1. Article en français, 800 à 1 100 mots, `docs/_posts/2026-11-20-ia-mini-projet-software.md`, tags `version-control` et `ia`, `<!--more-->` après l'intro.
2. Cinq étapes : spécifier, planifier, implémenter, tester ou vérifier, sauvegarder dans GitHub ou GitLab.
3. Outils de spécification : le skill `spec-driven-development` dans Claude, les commandes de `addyosmani/agent-skills` ailleurs.
4. Paragraphe dédié au fichier de reprise (handoff) commité : travail collaboratif, changement d'outil IA, pas de dépendance à la reprise de session, qui ne sert qu'en solo et dans un seul outil.
5. Le lien « Article suivant » est ajouté à la fin de « Pourquoi Git devient incontournable à l'ère de l'IA ».
6. Aucun détail sur un client ou une mission, aucun chiffre inventé.

## Plan de l'article

1. Le changement de posture : une tâche IA = un mini projet.
2. Les cinq étapes, avec un exemple concret.
3. Le fichier de reprise : pourquoi, que contient-il, modèle.
4. Trois bénéfices : collaborer, changer d'outil, ne rien perdre.
5. À retenir.

## Limites

- Toujours : vérifier le build local et le lien « Article suivant ».
- Jamais : décrire une fonction d'un outil non sourcée.

## Critères de réussite

- Le build passe et la page existe.
- Moins de 1 300 mots (`wc -w`).
- « Pourquoi Git devient incontournable » renvoie vers le nouvel article.
