# Formalization of Sierpinski's Carpet and Similar Fractals in 2D and Higher Dimensions

LaTeX source for the article *"Formalization of Sierpinski's carpet and similar fractals in 2d and higher"* by M. F. Hamza Ryad (April 12, 2017).

## Contents

- `file.tex` — main LaTeX source (article class, `amsmath`, `amssymb`, `amsthm`, `graphicx`, `hyperref`)
- `images/` — 23 figures (`img-000.jpg` … `img-022.jpg`) extracted from the source PDF

## Build

```bash
pdflatex file.tex
```

The `.tex` does not currently contain `\includegraphics` calls or a `\graphicspath`, so the images are included as reference material. To embed them, add to the preamble:

```latex
\graphicspath{{images/}}
```

and insert figures with:

```latex
\includegraphics{img-000}
```

## License

This repository contains a reformatted LaTeX transcription of the article. Please respect the original author's copyright.
