---
layout: post
title: "L'histoire de Git : pourquoi Linus Torvalds l'a créé"
description: "Comment un conflit de licence autour du noyau Linux a donné naissance à Git en 2005."
date: 2026-11-11 00:20:00
tags: [version-control]
---
Git est partout aujourd'hui, mais il est né d'une contrainte précise, en 2005, pour répondre à un besoin très concret : gérer le développement du noyau Linux. Voici l'histoire en quelques étapes.

<!--more-->

## Avant : des correctifs envoyés par email

Le noyau Linux est l'un des plus gros projets collaboratifs au monde, avec des milliers de contributeurs. Pendant ses premières années, les modifications circulaient sous forme de **correctifs** (*patches*) envoyés par email, et le projet archivait des versions complètes des fichiers. Cela fonctionnait avec peu de monde, et devenait vite pénible à grande échelle.

## 2002 : BitKeeper

En 2002, le projet adopte **BitKeeper**, un système de contrôle de version **propriétaire** et distribué. Il était mis à disposition gratuitement de la communauté du noyau. Beaucoup de développeurs critiquaient ce choix, car un outil fermé gérait le cœur d'un projet libre.

## 2005 : la rupture

En 2005, la relation entre la communauté Linux et l'éditeur de BitKeeper se dégrade, et l'usage gratuit est retiré. La communauté se retrouve sans outil adapté. Linus Torvalds décide alors d'en écrire un lui-même, en s'appuyant sur ce qu'il avait appris avec BitKeeper.

Selon le livre *Pro Git*, ses objectifs étaient les suivants :

* **la vitesse** ;
* **une conception simple** ;
* **un bon support du développement non linéaire**, avec des milliers de branches en parallèle ;
* **un fonctionnement entièrement distribué** ;
* **la capacité à gérer efficacement un projet de la taille du noyau Linux**, en vitesse comme en volume de données.

Le **7 avril 2005**, Linus Torvalds réalise le tout premier *commit* de Git. Dès l'été 2005, il confie la maintenance du projet à **Junio Hamano**, qui s'en occupe encore.

C'est la même année qu'est lancé Mercurial, autre système distribué dont nous parlons dans [SVN, Git, TFS : Késako ?]({{ site.baseurl }}/svn-git-tfs).

## Après : l'essor grâce aux plateformes

Git est un outil en ligne de commande, que beaucoup trouvent difficile d'accès au début. Ce sont les **plateformes** construites autour de lui qui l'ont rendu populaire :

* **2008 : GitHub** propose d'héberger des dépôts Git et d'y collaborer facilement.
* **2011 : GitLab** démarre comme projet open source, avec une approche tout-en-un.
* **2018 : Microsoft** annonce en juin le rachat de GitHub, finalisé en octobre.

Les différences entre ces deux plateformes sont détaillées dans [Git, GitLab, GitHub : qui fait quoi ?]({{ site.baseurl }}/git-gitlab-github).

## Ce qu'il faut retenir

* Git est né d'un **besoin pratique**, pas d'un projet académique : suivre efficacement le développement de Linux.
* Il a été conçu pour la **vitesse** et pour le **travail à plusieurs, en parallèle**, ce qui explique ses branches très légères.
* Sa popularité vient autant de son modèle que des **plateformes** qui l'ont rendu accessible.

Pour l'essayer vous-même, suivez [Premiers pas avec Git et GitLab]({{ site.baseurl }}/premiers-pas-git-gitlab).

## Sources

* [Pro Git, « A Short History of Git »](https://git-scm.com/book/en/v2/Getting-Started-A-Short-History-of-Git)
* [GitHub Blog, « Git turns 20 : a Q&A with Linus Torvalds »](https://github.blog/?p=86171)
* [Linux Journal, « Git origin story »](https://www.linuxjournal.com/content/git-origin-story)
* [LWN, message de transmission de la maintenance à Junio Hamano](https://lwn.net/Articles/145194/)

---

**Article suivant :** [Premiers pas avec Git et GitLab](/premiers-pas-git-gitlab)
