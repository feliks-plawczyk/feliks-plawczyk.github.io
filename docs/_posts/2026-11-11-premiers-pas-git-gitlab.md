---
layout: post
title: "Premiers pas avec Git et GitLab"
description: "Créer un compte GitLab, un dépôt, et l'initialiser avec un README et un CONTRIBUTING."
date: 2026-11-11 00:30:00
tags: [version-control]
---
Vous avez compris [ce que sont Git et GitLab]({{ site.baseurl }}/git-gitlab-github) : passons à la pratique. En une demi-heure, vous allez créer un compte, un dépôt, et y publier un premier changement avec les bonnes pratiques de départ.

<!--more-->

L'interface de GitLab évolue régulièrement : les intitulés des menus peuvent varier un peu, mais la démarche reste la même.

## 1. Installer Git

Vérifiez d'abord si Git est déjà installé, dans un terminal :

```bash
git --version
```

Sinon, téléchargez-le sur [git-scm.com](https://git-scm.com/downloads), puis dites à Git qui vous êtes. Ces informations sont inscrites dans chacun de vos enregistrements :

```bash
git config --global user.name "Prénom Nom"
git config --global user.email "vous@exemple.fr"
```

GitLab permet d'utiliser une adresse de substitution pour ne pas exposer votre vraie adresse email. Cette option se trouve dans les paramètres de votre profil.

## 2. Créer un compte GitLab

Rendez-vous sur [gitlab.com](https://gitlab.com), cliquez sur **Register**, renseignez vos informations, puis confirmez votre adresse email.

<!-- Capture à ajouter : page d'inscription GitLab -->

## 3. Connecter votre ordinateur avec une clé SSH

Une clé SSH permet à GitLab de vous reconnaître sans mot de passe à chaque envoi. Dans un terminal :

```bash
ssh-keygen -t ed25519 -C "vous@exemple.fr"
cat ~/.ssh/id_ed25519.pub
```

La deuxième commande affiche votre **clé publique**, que l'on peut partager. Copiez-la, puis, dans GitLab, ouvrez les préférences de votre profil, section **SSH Keys**, collez-la et validez. Ne partagez jamais le fichier sans l'extension `.pub` : c'est votre clé privée.

<!-- Capture à ajouter : page SSH Keys de GitLab -->

## 4. Créer un projet

Dans GitLab, cliquez sur **New project**, puis **Create blank project**.

* Donnez-lui un nom, par exemple `mon-premier-depot`.
* Choisissez la visibilité : **Private** pour un essai.
* Laissez cochée l'option qui **initialise le dépôt avec un README**.

Validez : votre dépôt existe, avec déjà un premier fichier.

<!-- Capture à ajouter : formulaire de création de projet -->

## 5. Récupérer le dépôt sur votre ordinateur

Sur la page du projet, le bouton **Code** donne l'adresse SSH. Utilisez-la pour **cloner** le dépôt, c'est-à-dire en faire une copie locale :

```bash
git clone git@gitlab.com:votre-utilisateur/mon-premier-depot.git
cd mon-premier-depot
```

## 6. Écrire un bon README

Le `README.md` est la **vitrine** du projet : c'est le premier fichier que lit une personne qui arrive. Ouvrez-le dans un éditeur et remplacez son contenu par une version courte :

~~~markdown
# Mon premier dépôt

Une phrase qui explique à quoi sert ce projet.

## Utilisation

Comment l'installer ou l'utiliser, en quelques lignes.

## Contribuer

Voir [CONTRIBUTING.md](CONTRIBUTING.md).
~~~

## 7. Ajouter un CONTRIBUTING

Le `CONTRIBUTING.md` explique **comment participer** : signaler un problème, proposer un changement, respecter les conventions. Créez le fichier à la racine du dépôt :

~~~markdown
# Contribuer

## Signaler un problème

Ouvrez un ticket (issue) en indiquant ce qui ne va pas et, si possible, comment le reproduire.

## Proposer un changement

1. Créez une branche à partir de `main`.
2. Faites vos modifications dans de petits commits.
3. Ouvrez une demande de fusion (merge request).

## Messages de commit

Format `type: description courte`, par exemple `docs: add contributing guide`.
~~~

Pour les messages de commit, ce format s'inspire des [*Conventional Commits*](https://www.conventionalcommits.org/fr/v1.0.0/), une convention très répandue. Voici les types les plus courants :

> **Les types de commit courants**
> * `feat` : une nouvelle fonctionnalité
> * `fix` : une correction de bug
> * `docs` : un changement de documentation
> * `style` : une mise en forme, sans changement de comportement
> * `refactor` : une réorganisation du code, sans nouvelle fonction ni correction
> * `perf` : une amélioration des performances
> * `test` : l'ajout ou la correction de tests
> * `build`, `ci` : le système de build ou l'intégration continue
> * `chore` : une tâche d'entretien
>
> Seuls `feat` et `fix` sont définis par la spécification. Les autres types sont une pratique courante.

## 8. Enregistrer et publier

Voyez ce qui a changé, ajoutez les fichiers à l'enregistrement, validez-le, puis envoyez-le à GitLab :

```bash
git status
git add README.md CONTRIBUTING.md
git commit -m "docs: add README and CONTRIBUTING"
git push
```

Actualisez la page de votre projet : vos deux fichiers y sont, et le `README` s'affiche sous la liste des fichiers.

## Et ensuite ?

* **Une licence**, avec un fichier `LICENSE`, pour dire ce que les autres ont le droit de faire de votre projet.
* **Un `.gitignore`**, pour que Git ignore les fichiers inutiles ou sensibles : dossiers temporaires, secrets, etc.
* **Des branches**, pour expérimenter sans toucher à la version principale.

Pour comprendre d'où vient cet outil, lisez [L'histoire de Git]({{ site.baseurl }}/histoire-de-git).

---

**Article suivant :** [Pourquoi Git devient incontournable à l'ère de l'IA](/git-et-ia)
