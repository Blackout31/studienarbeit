#import "00_other/variables_functions.typ": *

#set document(author: author, title: title)
#set text(lang: "de", size: 11pt)

#show figure: set block(above: 30pt, below: 30pt)
#show heading: set block(above: 30pt, below: 15pt)
#show ref: abbr.show-rule
#show heading.where(level: 1): x => pagebreak() + x

// Other
#include "00_other/title_page.typ"

#set page(numbering: "I")

#include "00_other/declaration_of_independence.typ"

#outline()

#abbr.config(style:text)
#abbr.load("00_other/abbr.csv")
#abbr.list(title: "Abkürzungsverzeichnis")
// Introduction

#set align(left + top)
#set page(footer: footer, header: header, numbering: "1")
#set heading(numbering: "1.1")
#set par(leading: 1em, spacing: 2em, justify: true)
#set text(size: 11pt)
#counter(page).update(1)

= Einleitung <INTRODUCTION>
== Motivation <MOTIVATION> #include "01_introduction/00_motivation.typ"
== Ziel der Arbeit und Forschungsfrage <RESEARCH_QUESTION> #include "01_introduction/01_research_question.typ"
== Anforderungen <SCOPE> #include "01_introduction/02_scope.typ"

// Main Body

// Directories
#set heading(numbering: none)

#outline(target: figure.where(kind: image), title: [Abbildungsverzeichnis])

#bibliography("bib.yml",title: [Literaturverzeichnis])
<END>