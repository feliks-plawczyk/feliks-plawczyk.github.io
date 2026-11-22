# Spec : article « Piloter un projet IA sans se peser avant »

Statut : **validée** (confirmée par Féliks).

## Objectif

Article de vulgarisation, suite de l'article sur les lois de Goodhart et de Campbell : appliquer ces lois au pilotage des projets IA en entreprise.

- **Pour qui ?** Le même public : chefs de projet, managers, métiers, sans culture software.
- **Succès :** lecture en 5 minutes environ, deux idées principales clairement distinguées, un lien explicite vers l'article Goodhart et Campbell.

## Hypothèses

1. Article en français, `docs/_posts/AAAA-MM-JJ-pilotage-projets-ia.md`, `<!--more-->` après l'intro.
2. Tags `pilotage` et `ia`.
3. Lien vers l'article précédent (`/goodhart-campbell`) dès l'introduction.
4. Fil rouge : la métaphore du régime. Commencer un régime sans se peser ni se prendre en photo avant ne permet pas de savoir si l'on progresse.
5. Encart « Le ressenti ne mesure rien » sur l'étude METR, à partir du texte fourni par Féliks, corrigé sur la partie 2026 (voir Sources).
6. Exemples génériques, sans chiffre inventé ni détail sur un client.
7. Une image en tête : la photo « avant » vide, la photo « après » au vert, la balance qui affiche « ? ? ? ».

## Plan de l'article

1. Introduction : la métaphore du régime, rappel de Goodhart et Campbell.
2. Premier piège : mesurer l'activité plutôt que le résultat (nombre de PR, adoption, pages de documentation générées sans contrôle qualité, vélocité agile), en oubliant la qualité réelle livrée aux utilisateurs et aux clients.
3. Second piège : ne pas se peser avant (absence de baseline de comparaison).
   - Encart : « Le ressenti ne mesure rien » (METR).
4. Des questions avant de lancer un projet IA (même forme que l'article précédent).
5. À retenir.

## Sources

- METR, « Measuring the Impact of Early-2025 AI on Experienced Open-Source Developer Productivity », juillet 2025 : 16 développeurs, 246 tâches, accélération attendue de 24 %, ressentie de 20 %, ralentissement mesuré de 19 %.
- METR, « We are Changing our Developer Productivity Experiment Design », 24 février 2026 : <https://metr.org/blog/2026-02-24-uplift-update/>. L'étude a bien été relancée (57 développeurs, plus de 800 tâches), mais 30 à 50 % des développeurs disaient écarter certaines tâches parce qu'ils ne voulaient pas les faire sans IA. METR juge donc ses nouveaux résultats peu fiables et change de protocole.

## Limites

- Toujours : vérifier le build local, sourcer chaque chiffre.
- Jamais : chiffre inventé, anecdote présentée comme un fait sans source, détail sur un client.

## Critères de réussite

- Le build passe et la page existe.
- Moins de 1 000 mots (`wc -w`).
- Chaque chiffre de l'encart METR renvoie à une source METR.
