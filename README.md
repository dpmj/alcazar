<p align="center">
<img src="figures/examples/alcazar-title.jpg" width="100%"/>
</p>

<p align="center">
<img src="https://img.shields.io/badge/License-CC%20BY--SA%204.0-lightgrey.svg" height="24px"/>
</p>


<p align="center"><b>
<a href="https://raw.githubusercontent.com/dpmj/alcazar/main/main.pdf">See PDF Preview</a></b>
</p>


## Philosophy

- KISS.
- Easy to use.
- Organized, elegant, coherent and consistent.
- Compact, but not crowded.
- Compatible with `pdflatex`.
- No strange packages.


## Features

<p align="center">
<img src="figures/examples/alcazar-feature-display.jpg" width="100%"/>
</p>


## Requirements

- `biber` for `biblatex`.
- `python 3` and `pygments` for the `minted` package.


## Build

### CLI, makefiles, etc.

This project can be easily built using the following commands with these recommended parameters. The `-shell-escape' flag is required for the `minted' package.

```bash
$ pdflatex -shell-escape -synctex=1 -interaction=nonstopmode -file-line-error main
$ biber main
$ makeglossaries main
$ pdflatex -shell-escape -synctex=1 -interaction=nonstopmode -file-line-error main
$ pdflatex -shell-escape -synctex=1 -interaction=nonstopmode -file-line-error main
```

### Overleaf

Works out of the box, no configuration required. Simply download this repo as a `.zip` and then upload the archive to Overleaf as a new project.

### LaTeX Workshop extension for VS Code / Codium

If you are using the LaTeX Workshop extension by James Yu, you need to add the following tools to your configuration file, under `latex-workshop.latex.tools` (In the UI, navigate to *Latex-workshop > Latex: Recipes > Edit in settings.json*): 

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

Edit the `pdflatex` entry as follows to include the `-shell-escape` argument, necessary for the `minted` package.

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

Now add a new recipe, under `latex-workshop.latex.recipes` (In the UI: *Latex-workshop > Latex: Tools > Edit in settings.json*):

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

And run the `alcazar' recipe on a `.tex' file from the project. 

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

- In `main.tex` you will find some variable definitions, fill them in according to your thesis and the document will update all occurrences automatically.
- Fill in your author information in the `opening/about.tex` file.


## License
    
This work is licensed under a
[Creative Commons Attribution-NonCommercial-ShareAlike 4.0 International License](http://creativecommons.org/licenses/by-nc-sa/4.0/).


## Disclaimer

This work is not affiliated with any institution, and the references, logos, and the like are merely examples of usage. Any third-party resources included in this repository are the property of their respective owners, and are provided for convenience only.
