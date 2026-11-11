---
layout: post
title: "SVN, Git, TFS : Késako ?"
description: "Comparaison rapide de CVS, SVN, TFS (TFVC), Mercurial et Git, pour les débutants."
tags: [version-control]
---
Vous savez [à quoi sert un système de contrôle de version]({{ site.baseurl }}/blog/20261109-vcs) : garder l'historique d'un projet et travailler à plusieurs sans s'écraser. Reste une question concrète : **quel outil utiliser ?** En voici cinq, du plus ancien au plus répandu, et une recommandation à la fin.

> Bien évidemment, en 2026 cette question est un "no brainer". Git correspond à 95% des besoins
> On va donc sur git, mais c'est bien de remettre un peu de contexte !

<!--more-->

## Deux notions à connaître

* **Centralisé :** il existe **un serveur unique** qui détient l'historique. Vous récupérez les fichiers dont vous avez besoin, puis vous renvoyez vos modifications. Sans accès au serveur, on ne peut presque rien faire.
* **Distribué :** **chaque personne a une copie complète** du projet et de son historique. On enregistre et on consulte l'historique sans réseau, puis on synchronise quand on le souhaite.

Un mot sur les **branches** : ce sont des lignes de travail parallèles, par exemple pour tester une idée sans toucher à la version principale. Plus elles sont faciles à créer et à fusionner, plus on les utilise.

## Le tableau d'ensemble

| | CVS | SVN | TFS (TFVC) | Mercurial | Git |
|---|---|---|---|---|---|
| **Apparition** | 1990 | 2004 (v1.0) | 2005 | 2005 | 2005 |
| **Modèle** | Centralisé | Centralisé | Centralisé | Distribué | Distribué |
| **Travail hors ligne** | Non | Très limité | Limité | Oui | Oui |
| **Branches** | Pénibles | Possibles, fusion moins confortable | Possibles, plus lourdes | Légères | Légères, au cœur de l'outil |
| **État aujourd'hui** | Historique | Maintenu, usage en recul | Déconseillé pour les nouveaux projets | Usage de niche | Standard |

## CVS : l'ancêtre

CVS est le premier outil largement utilisé. Il a posé les bases : un dépôt central, des révisions, des branches. Il a aussi de vrais défauts : un enregistrement peut s'arrêter à moitié, renommer un fichier fait perdre son historique, et les branches sont lourdes. On le croise encore dans de très vieux projets, mais on ne le choisit plus. **SVN** a été créé pour le remplacer.

## SVN : CVS en mieux

**Subversion** garde le modèle centralisé et corrige les défauts de CVS : un enregistrement est **tout ou rien**, les renommages sont suivis et les branches sont de simples copies. Il est simple à comprendre : un serveur, une version à jour, peu de concepts. Il sait aussi **verrouiller un fichier** pour éviter les conflits sur des fichiers qu'on ne peut pas fusionner, comme des images ou des documents binaires.

Ses limites viennent du modèle centralisé : sans réseau, on ne peut pas enregistrer son travail dans l'historique, et fusionner de grosses branches reste pénible.

## TFS : le choix de l'écosystème Microsoft

TFS (*Team Foundation Server*) s'appelle aujourd'hui **Azure DevOps Server**. Il regroupe le suivi des tâches, l'intégration continue et la gestion du code. Attention : il propose **deux** systèmes de versions.

* **TFVC**, son système centralisé maison, proche de SVN dans l'esprit, mais lié à l'écosystème Microsoft et à Visual Studio. C'est lui qu'on compare ici.
* **Git**, disponible dans TFS depuis 2013.

Microsoft recommande aujourd'hui Git pour les nouveaux projets. TFVC reste utile pour comprendre l'existant dans des entreprises qui l'ont adopté il y a longtemps.

## Mercurial : le cousin discret de Git

Mercurial est né **en 2005, quelques jours avant Git**, et repose sur la même idée : un modèle distribué. Beaucoup lui trouvent des commandes plus simples et plus cohérentes. Il a pourtant perdu la bataille de l'écosystème, et des plateformes d'hébergement ont arrêté de le prendre en charge. Il reste utilisé dans quelques grands projets, mais vous le rencontrerez rarement.

## Git : le standard

Git est distribué, rapide et conçu autour de branches très légères : créer une branche prend une seconde, ce qui encourage à expérimenter. Il est devenu le **standard** : la plupart des projets, des outils et des plateformes (GitHub, GitLab, Azure DevOps, etc.) s'appuient sur lui.

Son point faible est l'apprentissage. Il a beaucoup de commandes et un vocabulaire qui déroute au début, par exemple la zone d'index (*staging area*). Quelques commandes suffisent pourtant pour l'essentiel : `clone`, `add`, `commit`, `push`, `pull`.

## Ma recommandation : Git

Pour un nouveau projet, **choisissez Git**.

1. **Écosystème :** les plateformes, les éditeurs et les outils d'intégration continue le prennent tous en charge.
2. **Compétence répandue :** c'est l'outil que la plupart des développeurs connaissent déjà. Se former à Git sert partout.
3. **Travail hors ligne et branches légères :** on expérimente sans risque et on garde l'historique même sans réseau.
4. **Pas d'impasse :** SVN, TFVC et Mercurial peuvent migrer vers Git, avec des outils existants comme `git svn` ou `git-tfs`.

Quand garder un autre outil ? Si un projet existant fonctionne bien avec SVN ou TFVC et que personne n'a besoin de changer, il n'y a pas d'urgence. Pour tout le reste, commencez avec Git.

---

**Article suivant :** [Git, GitLab, GitHub : qui fait quoi ?](/git-gitlab-github)
