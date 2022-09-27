(TeX-add-style-hook
 "oving2"
 (lambda ()
   (TeX-add-to-alist 'LaTeX-provided-package-options
                     '(("geometry" "margin=1.0in")))
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "path")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "url")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "nolinkurl")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "hyperbaseurl")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "hyperimage")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "hyperref")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "href")
   (add-to-list 'LaTeX-verbatim-macros-with-delims-local "path")
   (TeX-run-style-hooks
    "latex2e"
    "report"
    "rep10"
    "amsfonts"
    "amsmath"
    "amssymb"
    "amsthm"
    "geometry"
    "hyperref"
    "float"
    "fancyhdr"
    "graphicx"
    "mathrsfs"
    "comment")
   (TeX-add-symbols
    '("til" 1)
    '("iLplc" 1)
    '("Lplc" 1)
    '("threematrix" 9)
    '("twomatrix" 4)
    '("linebrack" 1)
    '("abrack" 1)
    '("cbrack" 1)
    '("bbrack" 1)
    '("nbrack" 1)
    '("ninevector" 9)
    '("eightvector" 8)
    '("sevenvector" 7)
    '("sixvector" 6)
    '("fivevector" 5)
    '("fourvector" 4)
    '("threevector" 3)
    '("twovector" 2)
    '("M" 2)
    "inserttitle"
    "insertauthor")
   (LaTeX-add-labels
    "eq:1"))
 :latex)

