---
layout: post
title: "Chaque usage de l'IA est un mini projet software"
description: "Spécifier, planifier, implémenter, vérifier, sauvegarder, puis laisser un fichier de reprise : ma méthode pour travailler avec l'IA."
tags: [version-control, ia]
---
Aujourd'hui, je n'ouvre plus une conversation avec l'IA en tapant directement ma demande. J'aborde chaque usage comme un **mini projet software**, avec les mêmes étapes qu'un cycle de développement classique. Même pour rédiger un article ou préparer un document, cette discipline fait gagner du temps et évite de perdre le fil.

<!--more-->

## Pourquoi traiter une tâche IA comme un projet

Demander quelque chose à une IA est facile. Obtenir un résultat **fiable, vérifiable et reprenable** demande de la méthode. Les développeurs ont résolu ce problème depuis longtemps avec le cycle de vie logiciel (*SDLC*) : on ne code pas avant d'avoir écrit ce qu'on veut, et on ne livre pas avant d'avoir vérifié.

Je réutilise ce cadre tel quel. Une tâche IA, même petite, passe par cinq étapes.

## Les cinq étapes

1. **Spécifier.** Je commence par écrire ce que je veux : l'objectif, le public, les contraintes, ce qui est hors sujet, les critères de réussite. Dans Claude, j'utilise le skill interne `spec-driven-development`. Quand je travaille dans un autre outil, j'utilise les commandes du dépôt [`agent-skills` d'Addy Osmani](https://github.com/addyosmani/agent-skills), comme `/spec`. Le résultat est un fichier, pas une impression.
2. **Planifier.** Je découpe le travail en petites tâches ordonnées, chacune avec son critère de réussite (`/plan` dans [`agent-skills`](https://github.com/addyosmani/agent-skills)). Une tâche courte se vérifie facilement.
3. **Implémenter.** L'IA produit, tâche par tâche. Je garde la main sur le rythme et je relis ce qui arrive.
4. **Tester ou vérifier.** Pour du code, ce sont des tests. Pour un texte ou un document, c'est une relecture contre la spec : chaque critère de réussite est-il respecté, chaque source est-elle réelle ? L'étape se fait avant d'accepter le résultat.
5. **Sauvegarder.** Spec, plan et résultat sont versionnés avec Git, puis poussés sur GitHub ou GitLab. C'est ce qui rend les quatre étapes précédentes annulables, relisibles et partageables, comme expliqué dans [Pourquoi Git devient incontournable à l'ère de l'IA]({{ site.baseurl }}/git-et-ia).

Ce blog suit exactement ce chemin : chaque article a sa spec dans le dossier `specs/`, puis un texte, puis une vérification, puis un commit.

## Le fichier de reprise : capitaliser entre deux sessions

Il y a un réflexe que j'ai adopté plus tard et que je recommande vivement : **à la fin de chaque session, je demande à l'IA d'écrire un fichier de reprise**, nommé `HANDOFF.md`, que je commite comme le reste.

Pourquoi ne pas simplement reprendre la session précédente ? Parce que cette reprise ne fonctionne que dans une situation étroite : **vous êtes seul, dans le même outil, sur la même machine**. Dès que l'une de ces conditions saute, l'historique de conversation devient inaccessible :

* un collègue reprend le travail et n'a pas votre conversation ;
* vous changez d'outil IA, ou de modèle, et le contexte ne suit pas ;
* la session est trop longue, ou a été réinitialisée.

Le fichier de reprise remplace cette mémoire fragile par une mémoire **explicite, versionnée et indépendante de l'outil**. Il contient :

* l'**objectif** du projet, en une ou deux phrases ;
* ce qui est **fait**, avec les fichiers concernés ;
* ce qui **reste à faire**, dans l'ordre ;
* les **décisions prises** et leurs raisons, pour ne pas les rediscuter ;
* les **points ouverts** et les pièges rencontrés ;
* la **prochaine action** précise.

Un modèle minimal :

```markdown
# HANDOFF : nom du projet

## Objectif
...

## État actuel
- Fait : ...
- En cours : ...

## Décisions
- Choix A plutôt que B, parce que ...

## Points ouverts
- ...

## Prochaine action
...
```

Le jour suivant, ou le jour où quelqu'un d'autre prend le relais, la première consigne donnée à l'IA est : « lis `HANDOFF.md` et la spec, puis continue ». N'importe quel outil capable de lire des fichiers peut s'y mettre en quelques secondes.

## Ce que cette méthode apporte

* **Collaborer :** une autre personne, ou une autre IA, reprend le travail depuis le dépôt, sans dépendre de votre conversation.
* **Changer d'outil librement :** la connaissance du projet vit dans des fichiers, pas dans un outil particulier.
* **Ne rien perdre :** chaque étape laisse une trace relisible dans l'historique Git.
* **Mieux contrôler :** écrire la spec avant, c'est décider soi-même de ce qui compte, au lieu de découvrir ce que l'IA a compris.

## À retenir

* Toute utilisation sérieuse de l'IA gagne à suivre un mini cycle : spécifier, planifier, implémenter, vérifier, sauvegarder.
* Les livrables de chaque étape sont des **fichiers**, donc versionnables.
* Un **fichier de reprise commité** remplace la reprise de session, qui ne fonctionne qu'en solo et dans un seul outil.
* Cette discipline demande dix minutes au départ et en fait gagner beaucoup ensuite.

## Sources

* [Dépôt GitHub `addyosmani/agent-skills`, d'Addy Osmani](https://github.com/addyosmani/agent-skills)
