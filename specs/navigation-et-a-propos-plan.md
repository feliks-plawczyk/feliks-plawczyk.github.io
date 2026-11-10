# Plan et tâches : navigation du site et page « À propos »

Spec associée : [navigation-et-a-propos.md](navigation-et-a-propos.md)
Statut : **terminé**

Les questions ouvertes de la spec sont tranchées avec les valeurs par défaut :
accueil avec les sections Blog et Applications, onglet « À propos » à `/about/`,
CV sans employeurs ni dates précis, pas de photo, `.gitignore` ajouté.

## Plan technique

### Composants et dépendances

```
T0  Chaîne de build local (bundle + jekyll)        ── prérequis de la vérification
 │
T1  .gitignore
 │
T2  Données + include de navigation  (_data, _includes)
 │
T3  Layout surchargé  (_layouts/default.html)  ── dépend de T2
 │
T4  Style de la navigation  (assets/css/style.scss) ── dépend de T3
 │
 ├─ T5  Page /blog/            ── dépend de T3 (pour voir l'onglet actif)
 ├─ T6  Page /about/ (trame)   ── dépend de T3
 │
T7  Accueil allégé  (index.md)  ── dépend de T5 (le lien Blog doit exister)
 │
T8  Vérification finale + push + contrôle en production
```

T5 et T6 sont indépendantes l'une de l'autre et peuvent se faire dans n'importe quel ordre.

### Risques et parades

| Risque | Parade |
|---|---|
| **Ruby 4.0.9** est très récent. Le gem `github-pages` (Jekyll 3.x) peut ne pas s'installer ou ne pas démarrer. | T0 est un test de faisabilité fait **en premier**. En cas d'échec, on propose une alternative (Ruby plus ancien via `brew` ou `rbenv`, ou prévisualisation sans build local) avant d'aller plus loin. |
| Le layout surchargé est une **copie** du layout du thème : il ne suivra pas ses évolutions. | Garder le diff minimal (une seule ligne `{% include nav.html %}`), et le signaler en commentaire dans le fichier. |
| Un lien en dur casse sous un préfixe différent. | Utiliser `relative_url` partout (déjà imposé par la spec). |
| `/compte-gouttes/privacy/` est cassé par une régression. | Vérifié explicitement en T8 (code 200 et contenu inchangé). |
| La détection de l'onglet actif se trompe (`/` correspond à toutes les URLs). | Cas particulier pour `/`, couvert par la vérification de chaque page en T3. |

### Points de contrôle

- Après **T3** : une page quelconque affiche la navigation. C'est le point où le build local doit fonctionner.
- Après **T7** : toutes les pages se construisent et les quatre onglets mènent à des pages qui répondent.
- Après **T8** : production vérifiée.

## Tâches

- [x] **T0 : valider la chaîne de build local**
  - Acceptation : `bundle install` réussit et `script/jekyll build --source docs --destination _site` produit `_site/index.html`.
  - Vérification : la commande se termine sans erreur ; `ls _site/compte-gouttes/privacy/index.html` existe.
  - Fichiers : aucun fichier suivi (génère `Gemfile.lock` et `_site/`).
  - Si ça échoue : on s'arrête et on décide ensemble.

- [x] **T1 : ajouter `.gitignore`**
  - Acceptation : `_site/`, `.jekyll-cache/`, `Gemfile.lock` et `.sass-cache/` sont ignorés par git.
  - Vérification : après T0, `git status --short` ne montre ni `_site/` ni `Gemfile.lock`.
  - Fichiers : `.gitignore`.

- [x] **T2 : données et include de navigation**
  - Acceptation : `docs/_data/navigation.yml` liste trois entrées (Blog `/blog/`, Applications `/applications/`, À propos `/about/`). `docs/_includes/nav.html` génère une liste de liens avec `relative_url` et `aria-current="page"` sur la page courante.
  - Vérification : build sans erreur Liquid.
  - Fichiers : `docs/_data/navigation.yml`, `docs/_includes/nav.html`.

- [x] **T3 : surcharger le layout**
  - Acceptation : `docs/_layouts/default.html` est la copie du layout de `jekyll-theme-minimal`, avec uniquement `{% include nav.html %}` ajouté dans `<header>`. Toutes les pages affichent la navigation.
  - Vérification : `grep -c 'site-nav' _site/index.html _site/compte-gouttes/privacy/index.html` renvoie 1 pour chacune ; l'ancien affichage (titre, description) est inchangé.
  - Fichiers : `docs/_layouts/default.html`.

- [x] **T4 : styler la navigation**
  - Acceptation : `docs/assets/css/style.scss` importe le thème puis ajoute les règles de `.site-nav` : liste sans puces, lien actif visible (`[aria-current="page"]`), lisible dans la colonne latérale et à largeur mobile.
  - Vérification : build sans erreur SCSS ; contrôle visuel à ~1200 px et ~375 px avec `jekyll serve`.
  - Fichiers : `docs/assets/css/style.scss`.

- [x] **T5 : page `/blog/`**
  - Acceptation : `docs/blog/index.md` liste les articles existants (pour l'instant « What is a version control system »). L'onglet Blog est actif sur `/blog/` et sur `/blog/20261109-vcs`.
  - Vérification : liens vers l'article fonctionnels ; `aria-current` présent sur le bon onglet.
  - Fichiers : `docs/blog/index.md`.

- [x] **T6 : page `/about/` (trame)**
  - Acceptation : `docs/about/index.md` contient la trame de la spec (Qui suis-je, Parcours, Compétences, Ce que j'aime) et la section « Me retrouver » avec les quatre liens (LinkedIn, deux Instagram, GitLab). Les parties à compléter sont repérables (« À compléter »). Aucune information personnelle inventée.
  - Vérification : les quatre URLs correspondent exactement à celles de la spec ; l'onglet À propos est actif.
  - Fichiers : `docs/about/index.md`.

- [x] **T7 : alléger l'accueil**
  - Acceptation : `docs/index.md` ne contient plus « Sommaire » ni « Rien pour l'instant sauf… ». Il garde le titre d'introduction et les sections Blog et Applications, dont les liens passent par les pages `/blog/` et `/applications/`.
  - Vérification : `grep -n "Sommaire\|Rien pour" _site/index.html` ne renvoie rien ; les liens répondent.
  - Fichiers : `docs/index.md`.

- [x] **T8 : vérification finale, push, contrôle en production**
  - Acceptation : tous les critères de réussite de la spec sont remplis.
  - Vérification : `git pull`, build propre, puis après push, `curl` renvoie 200 sur `/`, `/blog/`, `/applications/`, `/about/`, `/blog/20261109-vcs` et `/compte-gouttes/privacy/` (dont le contenu reste inchangé).
  - Fichiers : aucun nouveau.

## Découpage des commits (Conventional Commits)

1. `chore: add .gitignore` (T1)
2. `feat: add site navigation` (T2, T3, T4)
3. `feat: add blog index page` (T5)
4. `feat: add about page` (T6)
5. `refactor: simplify home page` (T7)

Un `git pull` précède chaque commit, comme convenu.
