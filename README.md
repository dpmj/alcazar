<p align="center">
    <img src="opening/resources/logos/alcazar.svg" height=150px/>
</p>
<p align="center">A free and Open-Source template for academic works<p>




## Philosophy

- KISS.
- Easy to use.
- Organized, elegant, coherent and consistent.
- Compact, but not crowded.
- Compatible with `pdflatex`.
- No strange packages.


### [See preview](https://github.com/dpmj/alcazar/blob/main/main.pdf)


## Build

You can build it with your favorite LaTeX frontend.

This project can easily be built by using the following commands:

```
$ pdflatex main
$ biber main
$ makeglossaries main
$ pdflatex main
$ pdflatex main
```


### Requirements

This project requires:

- `biber` for the multi-bibliography support of `biblatex`.
- `pygments` (and thus `python`) for the `minted` package.


## Usage

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
- Fill in your details about the authors in the file `opening/about.tex`.


## License
    
This work is licensed under a
[Creative Commons Attribution-ShareAlike 4.0 International License][cc-by-sa].

[![CC BY-SA 4.0][cc-by-sa-image]][cc-by-sa]

[cc-by-sa]: http://creativecommons.org/licenses/by-sa/4.0/
[cc-by-sa-image]: https://licensebuttons.net/l/by-sa/4.0/88x31.png
[cc-by-sa-shield]: https://img.shields.io/badge/License-CC%20BY--SA%204.0-lightgrey.svg


## Disclaimer

This work is unrelated to any institution, and the references, logos and the like are merely an example of usage.


## To-Do

- [x] Opening
    - [x] Cover
    - [x] About the document
    - [x] Abstract and keywords
    - [x] Publications
    - [x] Acknowledgements
    - [x] Dedication
    - [x] Tables of contents
    - [x] Glossary
        - [x] Example Entries
- [x] Chapters
    - [x] Example Text
    - [x] Example Figures
    - [x] Example Tables
    - [x] Example Listings
- [x] Bibliography
    - [x] Example Citations
- [x] Addendum
    - [x] Example Text
    - [x] Thanks


## Style 

- [x] Compress space used by citations (small, double column)
- [x] Compress space used by glossary (small, double column)
- [x] Choose default serif font - Libertinus
- [x] Choose default sans-serif font - Open Sans (unused for now)
- [x] Choose default monospace font - IBM Plex Mono
- [x] Default font size: 11pt
- [x] Page size: A4 paper
- [x] Simple and compact chapter title style 
- [x] Chapter number marker on the side margins
- [x] Check footnote style
- [ ] Change style of paragraph and subparagraph
- [ ] Uniformize vertical skips on figures, subfigures, tables, listings, etc.


    
## Fixes

- [ ] Inconsistent skips above and below floats, too much space sometimes.
- [ ] Inconsistent skips above and below titles sometimes
- [x] In listings, for some reason the comments of lots of `%` are bugged.
- [X] Page style not consistent in opening


## Known issues

- For the two-column table of contents `minitoc` is used, which seems to be abandoned.


