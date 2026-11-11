# Spec : article « Git à l'ère de l'IA »

Statut : **validée** (cadrage et réponses confirmés par Féliks).

## Objectif

Sixième article de la série : expliquer pourquoi, avec l'IA, le contrôle de version devient structurant, puis pourquoi Git est incontournable, y compris pour des outils comme Claude Cowork.

- **Pour qui ?** Les mêmes débutants et personnes d'un autre métier que le développement.
- **Succès :** lecture en moins de 10 minutes, argument clair, trois réflexes concrets, sources citées.

## Hypothèses

1. Article en français, 800 à 1 100 mots, `docs/_posts/2026-11-11-git-et-ia.md`, tag `version-control`, `<!--more-->` après l'intro.
2. Le lien « Article suivant » est ajouté à la fin de « Premiers pas avec Git et GitLab ». Le nouvel article est le dernier de la série.
3. Féliks confirme que ce blog est construit avec une spec avant chaque article, et que c'est sa façon de travailler en mission depuis plusieurs mois. Aucun détail sur un client ou une mission.
4. Cowork est cité avec le lien vers l'aide officielle. L'article ne dit pas que Cowork n'a pas d'historique : il dit qu'on garde un filet de sécurité indépendant, sous contrôle de l'utilisateur.
5. Limite à signaler : Git suit bien le texte, le Markdown et le code, mais mal les fichiers Word ou Excel.

## Plan de l'article

1. L'IA écrit vite : il faut des garde-fous.
2. Le cycle spécifier, planifier, implémenter, relire, et les fichiers qu'il produit (exemple : `specs/` de ce site).
3. Cinq apports de Git : annuler, relire le diff, brancher, collaborer, tracer.
4. Hors développement : Cowork et les agents qui modifient vos fichiers.
5. Trois réflexes pour démarrer.

## Sources

- Dépôt `addyosmani/agent-skills` (commandes `/spec`, `/plan`, `/build`, `/test`, `/review`, `/ship`).
- Aide officielle « Get started with Claude Cowork ».

## Limites

- Toujours : vérifier le build local et le lien « Article suivant ».
- Jamais : inventer un chiffre, ou décrire une fonction de Cowork non sourcée.

## Critères de réussite

- Le build passe et `/git-et-ia` existe.
- Moins de 1 300 mots (`wc -w`).
- Les deux sources sont citées avec leurs liens.
- « Premiers pas » renvoie vers le nouvel article.

## Questions ouvertes

Le titre (trois propositions, à choisir).
