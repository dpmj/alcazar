<p align="center">
<img src="figures/examples/alcazar-title.png" width="100%"/>
</p>

<p align="center"><b>
<a href="https://raw.githubusercontent.com/dpmj/alcazar/main/output/main.pdf">See PDF Preview</a></b>
</p>

## Philosophy

- KISS.
- Easy to use.
- Organized, elegant, coherent and consistent.
- Compact, but not crowded.
- Compatible with `latexmk` and `pdflatex`
- No exotic or discontinued packages.

## Features

<p align="center">
<img src="figures/examples/alcazar-display-neue.png" width="100%"/>
</p>

- A page to include information about the authors.
- A page to include a license.
- Automatic generation of a bibtex cite.
- *"Executive overview"* page (sometimes required in University Degrees adhered to ABET).
- A page to cite your own papers as a result of the project.
- An acknowledgements page and a dedication page. 
- Automatic Table of Contents (ToC), List of Figures (LoF) and List of Tables (LoT).
- Two-column bibliography and glossary.
- Support for appendices. 
- Templates for the Sustainable Development Goals (SDGs) are included in Appendix C if required.

## Customisation

- Details about you and your work are defined in `main.tex'. Fill it in according to your thesis. The document will automatically update all occurrences, including a bibtex citation! 
- The title page can be easily configured by editing `opening/titlepage.tex`.
- Fill in information about the authors in `opening/about.tex`.
- Edit `opening/acknowledgements.tex` and `opening/dedication.tex` as you wish.
- Include your abstract in one or more languages in `opening/abstract.tex`.
- Chapter and appendix numbers on the page margins can be problematic for printing. They can be disabled by uncommenting a few lines in the `\fancypagestyle{chapters}` and `\fancypagestyle{addenda}` page styles in `style/alcazar.sty`.
- The default text font is *Libertinus Serif*, but you can change this in `style/pkgs.sty`. Other high quality options I recommend are Charter and Source Serif Pro, although you may need to change the font size from 12 pt to 11 pt.
- The default sans serif is Open Sans. Good alternatives are Inter and Source Sans Pro.
- The default monospace font is IBM Plex Mono. Good alternatives are Fira Mono and Inconsolata, although the size of the monospace font family should be adjusted.

## Build

### Requirements
 
- `biber` for `biblatex`, 
- `python 3` and the `pygments` package for the `minted` package.

### Important information

- This project can be built with `latexmk` or `pdflatex`, although I greatly encourage the use of `latexmk`. Below are examples of compilation commands with some recommended arguments. The `-shell-escape` flag is required for the `minted` package.

- This project is configured to automatically output all the auxiliary build files into the same `./output/` folder, **including the final PDF**.

<<<<<<< HEAD

### Using `latexmk`
=======
### `latexmk`
>>>>>>> 1a140a8d2d7af29e5f9173d929d6714390938f32

Simply use:
```bash
latexmk -shell-escape -synctex=1 -interaction=nonstopmode -file-line-error -pdf outdir=./output/ main.tex
```
This project uses a `latexmkrc` file to fix the `makeglossaries` tool when using a subfolder for saving build outputs.

<<<<<<< HEAD

### Using `pdflatex`
=======
### `pdflatex`
>>>>>>> 1a140a8d2d7af29e5f9173d929d6714390938f32

This method has problems with using a subfolder for build outputs. For this reason, it is recommended to execute `pdflatex` without setting an `-output-directory=`:
```bash
pdflatex -shell-escape -synctex=1 -interaction=nonstopmode -file-line-error main
biber main
makeglossaries main
pdflatex -shell-escape -synctex=1 -interaction=nonstopmode -file-line-error main
pdflatex -shell-escape -synctex=1 -interaction=nonstopmode -file-line-error main
```

### Makefile

A `Makefile` is already included, which invokes `latexmk`.

### Overleaf

Download this repo as a `.zip` file, then upload the file to Overleaf as a new project. Although Overleaf uses `latexmk`, the `minted` package will send an error regarding the output folder. To fix this, you need to remove the `outputdir=output` setting from the `minted` package import in `style/pkgs.sty`. 

### LaTeX Workshop by James Yu (extension for VS Code / Codium)

<<<<<<< HEAD
#### `latexmk` recipe
=======
#### Using `latexmk`
>>>>>>> 1a140a8d2d7af29e5f9173d929d6714390938f32

Works with the default `latexmk` recipe almost out of the box. Some settings need to to be changed:

```json
"latex-workshop.latex.autoBuild.run": "never",
"latex-workshop.intellisense.citation.backend": "biblatex",
"latex-workshop.latex.outDir": "%DIR%/output"
```

#### Creating a new `pdflatex` recipe

To compile using `biber` and `makeglossaries` with `pdflatex` you need to add the following tools to your `.vscode/settings.json` configuration file, under the section `latex-workshop.latex.tools` (In the UI, navigate to *Latex-workshop > Latex: Recipes > Edit in settings.json*): 
```json
{
    "name": "biber",
    "command": "biber",
    "args": [
        "%DOC%"
    ],
},
{
    "name": "makeglossaries",
    "command": "makeglossaries",
    "args": [
        "%DOCFILE%"
    ],
}
```
Edit the `pdflatex` entry as follows to include the `-shell-escape` argument:
```json
{
    "name": "pdflatex",
    "command": "pdflatex",
    "args": [
        "-shell-escape",
        "-synctex=1",
        "-interaction=nonstopmode",
        "-file-line-error",
        "%DOC%"
    ],
    "env": {}
}
```
Now add a new recipe, under `latex-workshop.latex.recipes` (to generate the configuration section from the UI, go to *Latex-workshop > Latex: Tools > Edit in settings.json*):
```json
{
    "name": "alcazar",
    "tools": [
        "pdflatex",
        "makeglossaries",
        "biber",
        "pdflatex",
        "pdflatex"
    ]
}
```
And run the `alcazar` recipe. 

**Note:** If you keep getting a `makeglossaries` error saying that `main.aux` could not be found, set the `latex-workshop.latex.autoBuild.cleanAndRetry.enabled` setting to `false` (in the UI, uncheck *"Latex-workshop > Latex > AutoBuild > Clean and retry: Enabled"*)

## File structure

The file structure of Alcázar is simple and self-explanatory:
```
./
├── bibliography/               # BIBLIOGRAPHY
|   ├── bibliography.tex        # Bibliography generation
|   └── references.bib          # BibTeX references
|
├── figures/                    # Put your figures here
|
├── glossary/                   # GLOSSARY
|   ├── glossary.sty            # Glossary definitions
|   └── glossary.tex            # Glossary generation
|
├── opening/                    # OPENING
|   ├── resources/              # Graphics used in the opening (logos, etc)
|   |
|   ├── about.tex               # Details about the authors
|   ├── abstract.tex            # Abstract, in various languages
|   ├── acknowledgements.tex    # Acknowledgements
|   ├── dedication.tex          # Dedication
|   ├── opening.tex             # Structures the opening part of the document
|   └── publications.tex        # Your publications. Optional, comment line in opening.tex
|   └── titlepage.tex           # Title page
|
├── style/                      # STYLE
|   ├── alcazar.sty             # Style definition and configuration
|   ├── colors.sty              # Colors definition
|   └── pkgs.sty                # Only used to import packages
|
├── text/                       # TEXT
|   ├── appendix/               # Put your addendum here
|   |   ├── appendix.tex        # Appendix generation
|   |   └── thanks.tex          # Say thanks. Optional, comment line in main.tex
|   |
|   └── chapters/               # Put your chapters here
|
└── main.tex                    # The main document.
```

## Thanks!

Alcázar was born as a personal project to replace the poor quality report templates I encountered throughout my academic life. It continued to grow until it made sense to create a comprehensive template. I have learned a lot during the development of Alcázar.

Thanks to my friends and colleagues who beta-tested Alcázar. You found many bugs, made excellent suggestions and inspired me a lot.

And to all the people who have already used Alcázar, I hope I have helped you despite my questionable LaTeX skills!

## Credits / citation

If you use and like this template, please consider giving credit :)
```bibtex
@misc{alcazar-latex-template,
  author = {Del Pino Mena, Juan},
  title = {Alcazar: A free and Open-Source LaTeX template for academic works},
  url = {https://github.com/dpmj/alcazar}
}
```
There is already a small acknowledgement in `opening/license.tex` below the license text. It's completely optional, of course ;)

## License
    
This work is licensed under a
[Creative Commons Attribution-NonCommercial-ShareAlike 4.0 International License](http://creativecommons.org/licenses/by-nc-sa/4.0/).

## Disclaimer

This work is not affiliated with any institution, and the references, logos, and the like are merely examples of usage. All third-party resources included in this repository are the property of their respective owners and are provided for convenience only.
