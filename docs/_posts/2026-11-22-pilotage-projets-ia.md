---
layout: post
title: "Piloter un projet IA : se peser avant le régime"
description: "Pour savoir si l'IA améliore vraiment le travail, il faut mesurer ce qui compte pour les utilisateurs, et savoir d'où l'on part."
tags: [pilotage, ia]
---
Commencer un régime sans monter sur la balance ni se prendre en photo, c'est se condamner à ne jamais savoir s'il marche. On se sentira peut-être plus léger. On ne saura pas si on l'est.

![Une photo « avant » vide et une photo « après » montrant un tableau de bord au vert, devant une balance qui affiche des points d'interrogation](/_images/posts/pilotage-projets-ia_1_avant-apres.jpeg)

Beaucoup de projets IA en entreprise démarrent exactement ainsi. On déploie un assistant, on suit quelques chiffres, et on conclut que « ça marche ». Dans [l'article précédent](/goodhart-campbell), on a vu avec Goodhart et Campbell qu'un chiffre change de nature dès qu'il devient un objectif. Les projets IA cumulent deux pièges : on mesure les mauvaises choses, et on ne sait pas d'où l'on part.

<!--more-->

## Premier piège : mesurer l'activité plutôt que le résultat

Dans un régime, ce serait compter les séances de sport ou les salades mangées, et ne jamais regarder la balance.

L'IA produit vite et beaucoup. Il est donc tentant de mesurer ce qu'elle produit. Quelques indicateurs reviennent souvent :

* **Le nombre de pull requests** (une PR est une proposition de modification du code) : il augmente, mais chaque PR peut être plus petite, moins relue, ou corriger la précédente.
* **L'adoption :** le nombre de comptes activés ou de requêtes envoyées dit que l'outil est utilisé, pas qu'il est utile.
* **Le nombre de pages de documentation générées :** sans contrôle qualité, on produit surtout du texte que personne ne lit, ou des erreurs que personne ne voit.
* **La vélocité des équipes agiles :** les points livrés par sprint montent, mais ils restent une estimation que l'équipe fait elle-même. C'est l'indicateur rêvé pour Goodhart.

Tous ces chiffres mesurent l'activité. Aucun ne mesure ce que reçoivent les utilisateurs et les clients : un produit qui fonctionne, qui répond à leur besoin, avec moins de bugs et des corrections plus rapides.

Et Campbell n'est jamais loin. Si l'on félicite une équipe pour son nombre de PR, elle produira des PR. Si l'on affiche le taux d'adoption en comité de direction, les comptes s'activeront. La qualité, elle, n'apparaît sur aucun tableau de bord, donc personne ne la défend.

Pour mesurer l'effet de l'IA, il faut regarder en bout de chaîne : les incidents en production, les retours des utilisateurs, le délai entre une demande et sa livraison réelle, la part du travail qu'il faut refaire. Ces mesures sont plus lentes et moins flatteuses. C'est précisément pour cela qu'elles résistent mieux.

## Second piège : ne pas se peser avant

Même avec les bons indicateurs, une question reste : par rapport à quoi ? Le nombre d'incidents a baissé ce trimestre ? Peut-être, mais baissé par rapport à quoi, et était-ce déjà le cas avant l'IA ?

C'est la balance du régime : elle ne sert à rien si l'on ne monte dessus qu'à la fin. Or la plupart des projets IA démarrent sans cette mesure de départ, que l'on appelle une *baseline*. On lance l'outil, et trois mois plus tard on cherche à prouver qu'il a servi. On compare alors avec un souvenir, ou avec le ressenti des équipes.

Et le ressenti est justement la pire des balances.

> **Le ressenti ne mesure rien**
>
> En 2025, l'organisme de recherche METR a fait ce que presque aucune entreprise ne fait : peser avant. Seize développeurs expérimentés ont traité 246 tâches réelles, tirées au sort pour être faites avec ou sans IA ([METR](https://metr.org/Early_2025_AI_Experienced_OS_Devs_Study-paper.pdf)).
>
> Avant l'étude, ils prévoyaient d'aller 24 % plus vite avec l'IA. Après l'étude, ils estimaient être allés 20 % plus vite. Le chronomètre, lui, disait qu'ils avaient été 19 % plus lents.
>
> Le résultat a beaucoup circulé, souvent pour de mauvaises raisons. METR le juge lui-même dépassé : les outils ont progressé, et les développeurs sont probablement plus rapides aujourd'hui avec l'IA qu'en 2025. Ce qui reste vrai, c'est l'écart entre le ressenti et la mesure. Un écart de près de quarante points, dans le mauvais sens, chez des gens dont c'est le métier de savoir combien de temps prend une tâche.
>
> Le plus instructif est ailleurs. En 2026, METR a voulu refaire l'étude. Elle a bien eu lieu, mais 30 à 50 % des développeurs disaient écarter certaines tâches parce qu'ils ne voulaient plus les faire sans IA ([METR](https://metr.org/blog/2026-02-24-uplift-update/)). Le point de comparaison s'effritait, au point que METR a dû revoir son protocole. La balance, encore une fois, ne sert qu'avant.

Fixer une baseline demande peu de choses : choisir deux ou trois mesures de résultat avant le déploiement, les relever pendant quelques semaines, et noter le contexte (taille de l'équipe, type de projet). Si possible, garder une équipe ou un périmètre sans l'outil pendant un temps, pour comparer. Ce n'est pas un protocole scientifique, mais c'est une photo d'avant.

Et il faut la prendre tôt. Une fois l'outil adopté, plus personne ne veut revenir en arrière pour comparer.

## Des questions avant de lancer un projet IA

* **Qu'est-ce qui doit s'améliorer pour l'utilisateur ou le client ?** Si la réponse est « le nombre de PR », on mesure l'outil, pas le résultat.
* **Où en sommes-nous aujourd'hui sur ce point ?** Sans réponse chiffrée, il est temps de se peser.
* **Qu'est-ce qui pourrait se dégrader en silence ?** La qualité, la relecture, les compétences des équipes : il faut au moins un indicateur qui les surveille.
* **Le chiffre que je vais présenter sert-il à comprendre ou à justifier l'investissement ?** Dans le second cas, Goodhart a déjà gagné.

## À retenir

* Les indicateurs d'activité (PR, adoption, pages générées, vélocité) montent toujours avec l'IA. Ils ne disent rien de la qualité livrée.
* Il faut mesurer en bout de chaîne : ce que reçoivent les utilisateurs et les clients.
* Sans mesure de départ, aucun progrès n'est démontrable.
* Le ressenti n'est pas une mesure, même chez des experts.
* La baseline se prend avant le déploiement. Après, il est souvent trop tard.

## Sources

* METR, « Measuring the Impact of Early-2025 AI on Experienced Open-Source Developer Productivity », juillet 2025 ([article](https://metr.org/Early_2025_AI_Experienced_OS_Devs_Study-paper.pdf), en anglais).
* METR, « We are Changing our Developer Productivity Experiment Design », février 2026 ([billet](https://metr.org/blog/2026-02-24-uplift-update/), en anglais).
