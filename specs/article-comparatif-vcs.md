# Spec : article « SVN, Git, TFS et les autres »

Statut : **validée** (cadrage confirmé par Féliks). Branche : `feat/scriptor-theme`.

## Objectif

Publier un article de blog qui compare rapidement les systèmes de contrôle de version SVN, Git et TFS, et qui recommande Git à la fin.

- **Pour qui ?** Des débutants. Le vocabulaire est expliqué (centralisé, distribué, branche, commit).
- **Pourquoi ?** Compléter l'article « Comprendre le Contrôle de Version (VCS) en 4 Piliers », qui explique le principe, en répondant à la question suivante : quel outil choisir ?
- **Succès :** lecture en moins de 10 minutes, comparaison lisible d'un coup d'œil, recommandation claire.

## Hypothèses

1. L'article est en français, sans expérience personnelle racontée (aucun élément fourni, rien n'est inventé).
2. « TFS » désigne ici **TFVC**, son système centralisé. L'article précise que TFS propose aussi Git et s'appelle désormais Azure DevOps Server.
3. **CVS** et **Mercurial** sont ajoutés au tableau et traités plus brièvement que SVN, Git et TFVC. Les autres systèmes (Perforce, Fossil, Jujutsu, etc.) ne sont pas cités.
4. Aucun chiffre de parts de marché, faute de source.

## Contraintes de contenu

- 800 à 1 300 mots, soit environ 4 à 6 minutes de lecture.
- Structure : intro courte, deux notions clés (centralisé et distribué), tableau comparatif, un paragraphe par outil, recommandation.
- La recommandation finale est Git, avec ses raisons et un mot sur la migration depuis un ancien outil.

## Fichiers

- `docs/_posts/2026-11-11-svn-git-tfs.md` : l'article (`layout: post`, tag `version-control`, `<!--more-->` après l'intro, lien vers l'article des 4 piliers).

## Limites

- Toujours : vérifier que `script/jekyll build --source docs` passe et que l'article apparaît sur l'accueil.
- Jamais : inventer une expérience, un chiffre ou une date non sourcés.

## Critères de réussite

- Le build local passe et l'article s'affiche à `/svn-git-tfs`.
- Le nombre de mots est inférieur à 1 400 (`wc -w`).
- Le tableau compare les cinq outils sur les mêmes critères.
- La conclusion recommande Git explicitement.

## Questions ouvertes

Aucune. Le titre et le slug sont modifiables à la relecture.
