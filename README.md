# FLE

Lien du blog : https://lili-lines.github.io/fle/ 

Site de ressources FLE construit avec [Quarto](https://quarto.org), publié sur GitHub Pages.

- `liens.qmd` : liens utiles
- `activites/` : un dossier par activité, avec `index.qmd` (page enseignante), `slides.qmd` (diapos) et `img/`
- `diapos/index.qmd` : liste automatique de toutes les diapos
- `assets/outil-texte.html` : outil pour écrire au clavier sur les diapos (touche T)

Pour une nouvelle présentation, garder dans l'en-tête :

```yaml
format:
  revealjs:
    chalkboard: true
    include-after-body: ../../assets/outil-texte.html
```

Aperçu local : `quarto preview`

## Livre-jeu (diapos à choix)

Dans une présentation, ajouter le filtre `../../assets/numeros-diapos.lua` dans `filters:`, donner un identifiant aux diapos (`## Titre {#musee}`) et écrire les boutons ainsi :

```markdown
[A. Je vais au musée → diapo @musee](#musee){.choix}
[← Retour → diapo @carrefour](#carrefour){.retour}
```

`@musee` est remplacé automatiquement par le numéro de la diapo.
