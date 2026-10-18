# FLE

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
