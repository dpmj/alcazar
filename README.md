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

Also, this project can easily be built with `pdflatex`. In the project directory, run:

```
$ pdflatex main.tex
$ bibtex main
$ makeglossaries main
$ pdflatex main.tex
```


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
|   |   └── thanks.tex          # Say thanks to your readers!
|   |
|   └── chapters/               # Put your chapters here
|
└── main.tex                    # The main document.
```

- In `main.tex` you will find some variable definitions, fill them in according to your thesis and the document will update all occurrences automatically.
- Fill in your details about the authors in the file `opening/about.tex`.


## License

This template is under a Creative Commons Attribution-ShareAlike 4.0 International (CC-BY-SA 4.0) license.



## Disclaimer

This work is unrelated to any institution, and the references, logos and the like are merely an example of usage.


## To-Do

- [x] Opening
    - [x] Cover
    - [x] About the document
    - [x] Dedication
    - [x] Acknowledgements
    - [x] Tables of contents
    - [x] Glossary
        - [x] Example Entries
- [x] Chapters
    - [x] Example Text
    - [x] Example Figures
    - [x] Example Listings
- [x] Bibliography (bibtex)
    - [x] Example Citations
- [x] Addendum
    - [x] Example Text
    - [x] Thanks
    
    
## Fixes

- [ ] Inconsistent skips above and below floats, too much space sometimes.
- [ ] Inconsistent skips above and below titles
- [ ] Hyphenation is weird?
- [ ] In listings, for some reason the comments of lots of `%` are bugged.




