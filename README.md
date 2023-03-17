# Quarto-yaac Format

This is a mostly LaTeX template right now. If you want to use just
markdown, this isn't the template to use. I'm trying to work on some lua
filters that might facilitate this template in a more language agnostic
way. Pull requests welcome!

The [YAAC: Another Awesome CV](https://github.com/darwiin/yaac-another-awesome-cv) 
template is licensed under LaTeX Project Public License v1.3c (LPPL).

## Installing

``` bash
quarto use template mps9506/quarto-yaac
```

This will install the extension and create an example .qmd file that you can 
use as a starting place for your article.

If you are using R, the [quartoYAAC](https://github.com/mps9506/quartoYAAC) 
package has functions to add the template files to your active project and 
provides other convienence functions in R.

``` r
remotes::install_github("mps9506/quartoYAAC")
library(quartoYAAC)
use_quarto_yaac(file_name = "My_CV")
```

## Using

Specify section headings using H1 (`#`) and adding the `.sectiontitle`
class. To include a formatted fontawesome icon in the heading include
the `.faIcon` class as the second class (replacing “Icon” with the
desired icon name). For example:

``` Markdown
# Experience {.sectiontitle .faSuitcase}
```


See [the fontawesome5 Latex package
documentation](https://mirrors.mit.edu/CTAN/fonts/fontawesome5/doc/fontawesome5.pdf)
for a full list of FontAwesome icons and names that can be used in this
template.

Most of the document relies on `.tex`, examples are included in 
[template.qmd](template.qmd). R users can utilize functions in 
[quartoYAAC](https://github.com/mps9506/quartoYAAC) to convert data frames to
formatted `.tex` within the quarto document.


## Format Options

Plenty of formatting options that can be set in the document yaml:

``` yaml
title: YAAC-CV
format:
  quarto-yaac-pdf:
    ## Set header colors to one of: ##
    ## green, red, indigo, orange, monochorome ##
    color: monochrome
    ## Set font size to: 10pt, 11pt, or 12pt ##
    ptsize: 10pt
firstname: William
lastname: Gosset

## optional tagline for the top, follows name ##
tagline: Brewmaster and Student

## optional links
## currently linkedin, github, and 
## website are supported
linkedin: username
website-name: quarto.org
website-address: quarto.org
github: github 

## contact info
smartphone: 1-(234)-567-8901
email: guinness@customer-care.net
address: Guinness Brewery · Park Royal · London NW10 7RR, UK

## other optional info 
# infos: optional additional info 
#photo: resources/William_Sealy_Gosset # optional photo

## date used in the footer
date: last-modified

## use the following if you want to use citeproc
## to insert a short publication references
## section. Otherwise comment it out.
nocite: '@*'
bibliography: "peer_bib.bib"
csl: apa-cv.csl
```

## Example

Here is the source code for a minimal sample document: [template.qmd](template.qmd).

