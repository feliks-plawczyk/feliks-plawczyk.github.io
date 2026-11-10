# Spec : navigation du site et page « À propos »

Statut : **validée** (questions ouvertes tranchées avec les valeurs par défaut). Plan et tâches : [navigation-et-a-propos-plan.md](navigation-et-a-propos-plan.md)

## Objectif

Remplacer l'accueil actuel, qui est une simple liste de liens, par un site organisé en trois onglets : **Blog**, **Applications** et **À propos**.

- **Pour qui ?** Les visiteurs du blog, les personnes qui consultent la fiche d'une application (par exemple depuis un store), et les recruteurs ou contacts qui veulent connaître Féliks.
- **Pourquoi ?** Le site grandit (blog, pages d'applications, politiques de confidentialité) et n'a aucune navigation. Une page « À propos » donne un visage au site.

Ce qui change :

1. Une **barre de navigation** présente sur toutes les pages, avec l'onglet actif mis en évidence.
2. Un **accueil allégé** : on supprime « Sommaire » et « Rien pour l'instant sauf… ». On ne garde que les parties Blog et Applications.
3. Une **page « À propos »** : CV synthétique, liste de ce que j'aime, réseaux sociaux (LinkedIn, Instagram, GitLab).

## Hypothèses

À corriger maintenant, sinon je les suivrai :

1. Chaque onglet est une **vraie page avec sa propre URL**, sans JavaScript. Choix confirmé : « barre de navigation sur tout le site ».
2. Les listes d'articles et d'applications restent **manuelles**, avec un lien ajouté à la main. Choix confirmé.
3. La page « À propos » est d'abord livrée sous forme de **trame à compléter**. Choix confirmé. Je ne rédige pas le CV à votre place.
4. La navigation s'insère dans l'en-tête du thème `minimal`. Sur ordinateur, c'est la colonne de gauche, sous le titre. Sur mobile, c'est le haut de page. Le thème n'a pas de barre horizontale et je n'en ajoute pas, pour garder son design.
5. L'accueil `/` garde **les deux sections Blog et Applications**, avec leurs listes. Les onglets **Blog** et **Applications** mènent à des pages dédiées : `/blog/`, qui est à créer, et `/applications/`, qui existe déjà.
6. La page « À propos » est en **français**, à l'URL `/about/`.
7. Le thème et l'hébergement ne changent pas : `jekyll-theme-minimal`, GitHub Pages, branche `main`, dossier `/docs`.
8. Aucune nouvelle dépendance n'est ajoutée au `Gemfile`.

## Stack technique

- Jekyll, via le gem `github-pages`, avec le thème `jekyll-theme-minimal`.
- Markdown pour le contenu, Liquid pour la navigation, SCSS pour le style.
- Le thème fournit des points d'extension, vérifiés dans son code source :
  - `_layouts/default.html` peut être surchargé en créant `docs/_layouts/default.html`.
  - `assets/css/style.scss` peut être surchargé en important le thème, puis en ajoutant nos règles.

## Commandes

```bash
# Installer les dépendances
bundle install

# Prévisualiser en local (http://localhost:4000)
script/jekyll serve --source docs

# Construire sans servir, pour détecter les erreurs Liquid ou SCSS
script/jekyll build --source docs --destination _site

# Vérifier le site publié, une fois poussé
curl -s -o /dev/null -w '%{http_code}\n' https://feliks-plawczyk.github.io/about/
```

## Structure du projet

```
docs/
  _config.yml              → configuration (titre « Féliks's Homepage »)
  _data/navigation.yml     → NOUVEAU : liste des onglets (titre + URL)
  _includes/nav.html       → NOUVEAU : rendu de la barre de navigation
  _layouts/default.html    → NOUVEAU : copie du layout du thème + {% include nav.html %}
  assets/css/style.scss    → NOUVEAU : import du thème + styles de la navigation
  index.md                 → MODIFIÉ : accueil allégé (Blog + Applications)
  blog/index.md            → NOUVEAU : liste des articles
  blog/20261109-vcs.md     → inchangé
  applications/index.md    → inchangé, ou léger ajustement du titre
  about/index.md           → NOUVEAU : page « À propos »
specs/                     → ce dossier, non publié car hors de docs/
```

Le dossier `specs/` est à la racine et non dans `docs/`, pour ne pas être publié.

## Style de code

Exemple de navigation. Les onglets viennent de `_data/navigation.yml`, pour ne pas dupliquer les liens :

```liquid
<nav aria-label="Navigation principale">
  <ul class="site-nav">
    {% for item in site.data.navigation %}
      <li>
        <a href="{{ item.url | relative_url }}"
           {% if page.url == item.url or page.url contains item.url and item.url != '/' %}aria-current="page"{% endif %}>
          {{ item.title }}
        </a>
      </li>
    {% endfor %}
  </ul>
</nav>
```

Conventions :

- Contenu en français, avec accents.
- Liens internes **relatifs ou via `relative_url`**, jamais commençant par `/` en dur.
- Noms de fichiers en minuscules, sans espace.
- L'état actif utilise `aria-current="page"`, qui sert aussi de cible CSS.

## Contenu de la page « À propos »

Trame livrée, à compléter par Féliks :

```markdown
# À propos

## Qui suis-je
(2-3 phrases de présentation)

## Parcours
(CV synthétique : postes, formations, dates)

## Compétences
(liste courte)

## Ce que j'aime
(liste libre)

## Me retrouver
* [LinkedIn](https://www.linkedin.com/in/feliks-plawczyk/)
* [Instagram](https://www.instagram.com/feliks.plawczyk/)
* [Instagram – @felikslovesfood](https://www.instagram.com/felikslovesfood/)
* [GitLab](https://gitlab.com/feliks.plawczyk)
```

## Stratégie de test

Le site est statique et n'a pas de suite de tests. La validation repose sur :

1. **Construction** : `jekyll build` termine sans erreur ni avertissement Liquid ou SCSS.
2. **Vérification des liens** : tous les liens internes (onglets, accueil, retours) répondent 200 en local, puis en production après le push.
3. **Contrôle visuel** : relecture sur ordinateur et à largeur mobile (environ 375 px). La navigation doit rester lisible et ne pas casser la colonne latérale du thème.
4. **Accessibilité de base** : navigation au clavier, onglet actif signalé par `aria-current`, contraste suffisant.

L'ajout d'un vérificateur automatique de liens (`html-proofer`) est une **nouvelle dépendance** : à valider avant.

## Limites

- **Toujours** : faire `git pull` avant de commiter. Respecter Conventional Commits. Construire en local avant de pousser. Ne publier que des informations que Féliks a validées pour le public.
- **Demander d'abord** : ajouter une dépendance (`Gemfile`) ou un script JavaScript. Changer de thème. Modifier la configuration GitHub Pages. Ajouter un `.gitignore` (`_site/`, `.jekyll-cache/`, `Gemfile.lock`). Supprimer ou déplacer des pages existantes, ce qui casserait des URLs déjà diffusées, notamment `/compte-gouttes/privacy/`.
- **Jamais** : publier des coordonnées personnelles (adresse, téléphone) sans accord explicite. Inventer des informations de CV ou des URLs de réseaux sociaux. Casser `/compte-gouttes/privacy/`, dont l'URL est destinée aux stores.

## Critères de réussite

1. Toutes les pages affichent une barre avec **Blog**, **Applications** et **À propos**, et l'onglet de la page courante est mis en évidence.
2. `/` n'affiche plus « Sommaire » ni « Rien pour l'instant sauf… ». Elle contient les sections Blog et Applications.
3. `/blog/`, `/applications/` et `/about/` répondent 200, en local et en production.
4. `/about/` contient le CV (trame ou contenu fourni), la liste « Ce que j'aime » et une section « Me retrouver » avec les quatre liens (LinkedIn, deux comptes Instagram, GitLab) pointant vers les URLs de la section « Contenu de la page ».
5. `/compte-gouttes/privacy/` répond toujours 200 et son contenu est inchangé.
6. `jekyll build` passe sans erreur, et le rendu est correct à largeur mobile.

## Questions ouvertes

1. ~~URLs des réseaux sociaux~~ : **résolu**. LinkedIn, GitLab et deux comptes Instagram (`feliks.plawczyk` et `felikslovesfood`) ont été fournis.
2. **Accueil** : l'hypothèse 5 vous convient-elle ? Autre option : `/` devient directement la page Blog, et l'onglet Blog pointe vers `/`.
3. **Libellé et URL de l'onglet** : « À propos » avec `/about/`, ou « About me » avec `/about-me/` ?
4. **Contenu du CV** : voulez-vous y mettre vos employeurs et dates précis ? Ces informations deviendraient publiques et indexables.
5. **Photo** : souhaitez-vous une photo ou un logo sur la page ou dans l'en-tête ?
6. **`.gitignore`** : je propose de l'ajouter dans la même passe (`_site/`, `.jekyll-cache/`, `Gemfile.lock`). D'accord ?
