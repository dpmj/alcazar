```
           ,,                                        
         `7MM            _.o9                                
           MM                                             
 ,6"Yb.    MM  ,p6"bo   ,6"Yb.  M"""MMV  ,6"Yb.  `7Mb,od8 
8)   MM    MM 6M'  OO  8)   MM  '  AMV  8)   MM    MM' "' 
 ,pm9MM    MM 8M        ,pm9MM    AMV    ,pm9MM    MM     
8M   MM    MM YM.    , 8M   MM   AMV  , 8M   MM    MM     
`Moo9^Yo..JMML.YMbmd'  `Moo9^Yo.AMMmmmM `Moo9^Yo..JMML.   

```

A free and Open-Source template for academic works


## Phylosophy

- KISS.
- Easy to use.
- Organized, elegant, coherent and consistent.
- Compact, but not crowded.
- Compatible with `pdflatex`.
- No strange packages.


## Build

You can build it with your favourite LaTeX frontend. Also, this project can easily be built with `pdflatex`. In the project directory, run:

```
$ pdflatex main.tex
$ bibtex main
$ makeglossaries main
$ pdflatex main.tex
```



## Usage

The file structure of Alcázar is simple and self-explanatory. Some important things:

- `main.tex` is, as its name indicates, the main document. There you will find some variable definitions, fill them in according to your thesis and the document will update all occurrences automatically.
- Fill in your details about the authors, licence, etc. in the file `opening/about.tex`.


## License

Creative Commons Attribution-ShareAlike 4.0 International (CC-BY-SA 4.0)


## Disclaimer

This work is unrelated to any institution, and the citation and logos are merely an example of usage.


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
    
    
## Fix    

- [ ] Inconsistent skips above and below floats, too much space sometimes.
- [ ] Inconsistent skips above and below titles
- [ ] Hyphenation is weird?
- [ ] In listings, for some reason the comments of lots of `%` are bugged.




