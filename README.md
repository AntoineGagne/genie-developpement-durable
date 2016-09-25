# Génie et développement durable [![Build Status](https://travis-ci.com/AntoineGagne/genie-developpement-durable.svg?token=z8MuAdp4BiCLDyKa2y46&branch=master)](https://travis-ci.com/AntoineGagne/genie-developpement-durable)

Ce dépot `git` contient le projet de session du cours *Génie et développement durable*.

## Bibliographie

La bibliographie est générée par `biblatex` (voir les liens [1](https://fr.sharelatex.com/learn/Biblatex_bibliography_styles), [2](https://fr.sharelatex.com/blog/2013/07/31/getting-started-with-biblatex.html), [3](https://en.wikibooks.org/wiki/LaTeX/Bibliography_Management) et [4](http://ctan.mirror.rafal.ca/macros/latex/contrib/biblatex/doc/biblatex.pdf)). Elle utilise le style [*APA*](http://www.bibl.ulaval.ca/services/citation-de-sources/style-apa) (voir [ici](http://www.bibl.ulaval.ca/aide-a-la-recherche/documents-d-aide-a-la-redaction/citer-vos-sources) pour d'autres styles de citations).

## Nouveaux environnements

### Création

La classe expose le *package* `xparse` qui permet de facilement redéfinir des environnements.

### Environnement `quoting`

L'environnement `quoting` sert lorsque des citations sont longues. L'environnement reçoit le code de la citation en argument et, optionnellement, le numéro de la page de la référence. On s'en sert comme suit:

```TeX
\begin{quoting}{<code>}[<numero de la page>]
    La citation vient ici.
\end{quoting}
```
