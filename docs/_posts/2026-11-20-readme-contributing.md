---
layout: post
title: "README et CONTRIBUTING : deux fichiers à créer dès le premier jour"
description: "Pourquoi un README et un CONTRIBUTING servent autant les humains que les agents IA, et pourquoi les écrire dès le début."
tags: [version-control]
---
Quand on crée un projet, on a envie d'avancer vite et ces deux fichiers semblent secondaires. Ce sont pourtant les premiers que je crée, et ils rendent service à tout le monde : à vos futurs collègues, à vous dans six mois, et aux agents IA qui travailleront dans le dépôt.

<!--more-->

## Deux fichiers, deux rôles

* Le **`README.md`** est la **vitrine** : de quoi parle le projet, à qui il s'adresse, comment le lancer.
* Le **`CONTRIBUTING.md`** est le **règlement intérieur** : comment signaler un problème, comment travailler, quelles conventions respecter (nom des branches, format des messages de commit).

Le premier répond à « qu'est-ce que c'est ? », le second à « comment participer sans rien casser ? ». Les deux sont affichés automatiquement par GitHub et GitLab.

## Pour les humains

Une personne qui arrive sur un dépôt sans ces fichiers doit deviner. Elle fouille le code, pose des questions, ou pire, fait à sa façon. Avec eux, elle est opérationnelle en quelques minutes. Cela vaut aussi pour vous : le projet que vous comprenez parfaitement aujourd'hui sera flou après quelques mois de pause.

## Pour les agents IA

Un agent IA qui arrive dans votre dépôt est dans la situation d'un nouvel arrivant : il n'a **aucun souvenir** de vos échanges précédents, il ne dispose que des fichiers. Le `README` lui donne le contexte (le but, la structure, comment lancer le projet) et le `CONTRIBUTING` lui donne les règles (comment tester, comment nommer ses commits, ce qu'il ne faut pas faire).

Sans eux, l'agent comble les vides avec ses propres hypothèses. Avec eux, il suit **vos** conventions, et c'est le même document que lira un humain. Ce blog en est un exemple : son [`README`](https://github.com/feliks-plawczyk/feliks-plawczyk.github.io/blob/main/README.md) et son [`CONTRIBUTING`](https://github.com/feliks-plawczyk/feliks-plawczyk.github.io/blob/main/CONTRIBUTING.md) décrivent comment lancer le site, comment rédiger un article et comment écrire un commit.

## Pourquoi dès le début

* **Coût minimal :** au premier jour, tout est frais, quelques lignes suffisent.
* **Pas de dette :** écrire plus tard oblige à reconstituer des choix oubliés.
* **Des habitudes dès le départ :** une convention posée au début est suivie par tout le monde, humains et IA. Corriger un historique de cinquante commits désordonnés est bien plus pénible.

Ces fichiers n'ont pas besoin d'être parfaits : un `README` de dix lignes vaut mieux que pas de `README`. Ils évoluent avec le projet, sous Git, comme le reste.

## Encart : pourquoi les Conventional Commits ?

Les [*Conventional Commits*](https://www.conventionalcommits.org/fr/v1.0.0/) sont une convention d'écriture des messages de commit :

```
<type>(<portée optionnelle>): <description>
```

Par exemple : `feat: ajouter la page À propos`, `fix: corriger le lien cassé`, `docs: mettre à jour le README`. Les types usuels sont `feat`, `fix`, `docs`, `style`, `refactor` et `chore`.

**Pourquoi le développement logiciel l'a adoptée :**

* **Un historique lisible :** en un coup d'œil, on distingue une nouvelle fonctionnalité d'une correction ou d'un simple changement de documentation.
* **Une base pour l'automatisation :** la spécification indique que ce format permet de générer automatiquement un journal des modifications et de déterminer le prochain numéro de version.
* **Un langage commun :** dans une équipe, tout le monde écrit ses commits de la même façon, sans débat à chaque fois.

Pour une IA, c'est une consigne claire à ajouter au `CONTRIBUTING` : « les messages de commit suivent Conventional Commits ». L'historique reste cohérent, quel que soit l'auteur.

## À retenir

* Le `README` présente le projet, le `CONTRIBUTING` fixe les règles.
* Ils servent les humains comme les agents IA, qui n'ont que les fichiers pour comprendre.
* Les écrire dès le début coûte quelques minutes et évite une dette.
* Les Conventional Commits rendent l'historique lisible et automatisable.

Pour créer ces deux fichiers pas à pas, relisez [Premiers pas avec Git et GitLab]({{ site.baseurl }}/premiers-pas-git-gitlab).

## Sources

* [Spécification Conventional Commits 1.0.0](https://www.conventionalcommits.org/fr/v1.0.0/)
