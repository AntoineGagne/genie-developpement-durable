# Génie et développement durable [![Build Status](https://travis-ci.com/AntoineGagne/genie-developpement-durable.svg?token=z8MuAdp4BiCLDyKa2y46&branch=master)](https://travis-ci.com/AntoineGagne/genie-developpement-durable)

Ce dépot `git` contient le projet de session du cours *Génie et développement durable*.

## Bibliographie

La bibliographie est générée par `biblatex` (voir les liens [1](https://fr.sharelatex.com/learn/Biblatex_bibliography_styles), [2](https://fr.sharelatex.com/blog/2013/07/31/getting-started-with-biblatex.html), [3](https://en.wikibooks.org/wiki/LaTeX/Bibliography_Management) et [4](http://ctan.mirror.rafal.ca/macros/latex/contrib/biblatex/doc/biblatex.pdf)). Elle utilise le style [*APA*](http://www.bibl.ulaval.ca/services/citation-de-sources/style-apa) (voir [ici](http://www.bibl.ulaval.ca/aide-a-la-recherche/documents-d-aide-a-la-redaction/citer-vos-sources) pour d'autres styles de citations). Des exemples de comment écrire des entrées dans la bibliographie ont été donné dans le fichier `src/bibliographie`.

## Commandes déja existantes

### Commande `epigraph`

La commande `epigraph` permet de rajouter un court texte (tel qu'une citation) en dessous du nom du chapitre. Elle est utilisée comme suit:

```TeX
\chapter{Example}
\epigraph{``Parents of young organic life forms should be warned, that towels can be harmful, if swallowed in large quantities.''}{Douglas Adam} 
```

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

## Nouvelles commandes

La classe expose de nouvelles commandes.

### Commande `shortquote`

La commande `shortquote` est utilisée lorsqu'on a des citations courtes. Elle reçoit le texte, le code de la citation et, optionnellement, le numéro de la page de la référence en argument. On s'en sert comme suit:

```TeX
\shortquote{Je suis une citation assez courte}{<code>}[<numero de la page>]
```

### Commande `quotify`

La commande `quotify` est utilisée lorsqu'on veut mettre quelque chose entre guillemets français. Elle reçoit le texte ou le mot à mettre entre guillemets français. On s'en sert comme suit:

```TeX
\quotify{Je suis entre guillemets français.}
```

### Commande `wcite`

La commande `wcite` est utilisée lorsqu'on veut citer quelque chose et avoir la source en note de bas de page. Elle reçoit le code de la citation et, optionnellement, le numéro de la page de la référence en argument.
