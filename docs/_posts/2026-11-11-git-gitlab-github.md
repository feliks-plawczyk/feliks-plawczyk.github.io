---
layout: post
title: "Git, GitLab, GitHub : qui fait quoi ?"
description: "Comprendre la différence entre Git, GitLab et GitHub, et choisir une plateforme selon son profil."
date: 2026-11-11 00:10:00
tags: [version-control]
---
![Git vs GitHub : vraiment la même chose ?](/_images/posts/git-gitlab-github_1_git-vs-github.jpeg)

« Mon code est sur Git », « Envoie-moi le lien GitHub », « On passe sur GitLab ». Quand on débute, ou quand on vient d'un autre métier, ces trois noms se mélangent vite. Pourtant, ils ne désignent pas la même chose. Cet article remet de l'ordre, puis compare GitHub et GitLab.

<!--more-->

## Git est un outil, GitHub et GitLab sont des plateformes

* **Git** est un **logiciel**. Vous l'installez sur votre ordinateur, et il garde l'historique de vos fichiers : c'est le [contrôle de version]({{ site.baseurl }}/blog/20261109-vcs). Il fonctionne sans internet et sans compte.
* **GitHub** et **GitLab** sont des **services en ligne**. Ils hébergent des dépôts Git sur des serveurs, pour les sauvegarder et les partager.

Une comparaison qui parle à tout le monde : Git ressemble à **Word**, et GitHub ou GitLab ressemblent à **SharePoint** ou **Google Drive**. Le premier crée et modifie vos documents, les seconds les stockent en ligne et permettent de travailler à plusieurs. On peut très bien utiliser Word sans Drive. De même, on peut utiliser Git seul, sur sa machine.

![Git est un outil, GitHub et GitLab sont des plateformes](/_images/posts/git-gitlab-github_3_outil-vs-plateforme.jpeg)

![Git, c'est comme Word ; GitHub, c'est comme Drive](/_images/posts/git-gitlab-github_2_word-drive-analogie.jpeg)

## Ce qu'ajoutent les plateformes

Autour du dépôt Git, GitHub et GitLab fournissent :

* **L'hébergement** : une copie du projet accessible de partout, qui sert de sauvegarde.
* **La collaboration** : des demandes de fusion pour proposer une modification, la faire relire et la valider avant qu'elle entre dans le projet.
* **Le suivi des tâches** : des tickets (*issues*) pour signaler un bug ou une idée.
* **L'automatisation** : l'intégration continue lance des vérifications à chaque modification, par exemple les tests, et peut déployer le résultat.
* **La gestion des droits** : qui peut lire, qui peut modifier.

## GitHub contre GitLab

| | GitHub | GitLab |
|---|---|---|
| **Création** | 2008 | 2011 |
| **Propriétaire** | Microsoft, depuis 2018 | GitLab Inc. |
| **Demande de modification** | *Pull request* | *Merge request* |
| **Automatisation** | GitHub Actions | GitLab CI/CD, intégré |
| **Auto-hébergement** | Possible avec GitHub Enterprise Server, payant | Possible, avec une édition communautaire gratuite |
| **Offre gratuite** | Oui, avec des limites | Oui, avec des limites |
| **Réputation** | La plus grande communauté, surtout pour l'open source | Une plateforme tout-en-un, appréciée en entreprise |

Le fond est le même : les deux hébergent du Git et proposent la même collaboration. Ce qui change, ce sont le vocabulaire, l'interface et quelques choix de produit. Les offres et les limites gratuites évoluent : vérifiez-les sur le site de chaque plateforme avant de choisir.

## Que choisir selon votre profil ?

* **Vous débutez, ou vous voulez contribuer à des projets open source :** choisissez **GitHub**. C'est là que se trouvent la plupart des projets publics et la plus grande communauté. Votre profil y fait aussi office de vitrine.
* **Vous travaillez en entreprise et voulez un seul outil du code jusqu'au déploiement :** regardez **GitLab**. L'automatisation y est intégrée, et le suivi des tâches et la livraison sont réunis dans la même interface.
* **Vous devez héberger vos données sur vos propres serveurs :** **GitLab** est le plus simple, grâce à son édition communautaire gratuite.
* **Votre entreprise est déjà très ancrée chez Microsoft :** **GitHub** s'intègre naturellement à cet environnement.
* **Vous ne savez pas :** prenez celui qu'utilise votre équipe ou votre entourage. Git est le même partout, et un dépôt se déplace d'une plateforme à l'autre sans perdre son historique.

Il existe d'autres plateformes, par exemple Bitbucket ou Azure DevOps. Elles reposent elles aussi sur Git.

---

**Article suivant :** [L'histoire de Git : pourquoi Linus Torvalds l'a créé](/histoire-de-git)
