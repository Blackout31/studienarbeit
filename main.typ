#import "00_other/variables_functions.typ": *

#set document(author: author, title: title)
#set text(lang: "de", size: 14pt)
#set image(height: 4cm)

#show figure: set block(above: 30pt, below: 30pt)
#show heading: set block(above: 30pt, below: 15pt)
#show ref: abbr.show-rule
#show heading.where(level: 1): x => {
  pagebreak(weak: true)
  x
}

// Other
#include "00_other/title_page.typ"
#pagebreak(weak: true)
#include "00_other/declaration_of_independence.typ"

#set text(size: 11pt)
#set par(leading: 1em, spacing: 2em, justify: true)


#show outline: set heading(outlined: true)
#set page(footer: footer, header: header, numbering: "I")
#counter(page).update(1)

#{
  show outline.entry.where(level: 1): set block(above: 2em)
  show outline.entry.where(level: 1): set text(weight: "bold")
 
  outline()
}
 
#abbr.config(style:text)
#abbr.load("00_other/abbr.csv")
#abbr.list(title: "Abkürzungsverzeichnis") 
#outline(target: figure.where(kind: image), title: [Abbildungsverzeichnis])
#outline(target: figure.where(kind: table), title: [Tabellenverzeichnis])

#pagebreak(weak: true) <END_DIRECTORIES>

// Introduction
#set align(left + top)
#set page(footer: footer, header: header, numbering: "1")
#set heading(numbering: "1.1")
#set text(11pt)
#counter(page).update(1)

= Einleitung <INTRODUCTION>
== Motivation <MOTIVATION> #include "01_introduction/01_motivation.typ"
== Ziel der Arbeit und Forschungsfrage <RESEARCH_QUESTION> #include "01_introduction/02_research_question.typ"

// Main Body
= Theoretischer Hintergrund <BACKGROUND>
== Cross-Industry Standard Process for Data Mining <METHODICAL_APPROACH> #include "02_main_body/01_methodical_approach.typ"
== Grundlagen <FUNDAMENTALS> #include "02_main_body/02_fundamentals.typ"
== Multiview-Bildanalyse <SPECIAL_FUNDAMENTALS> #include "02_main_body/03_special_fundamentals.typ"
== Stand der Forschung <STATE_OF_RESEARCH> #include "02_main_body/04_state_of_research.typ"
== Bewertungsmetriken <METRICS> #include "02_main_body/05_metrics.typ"

= Versuchsaufbau und Ergebnisse <DOING>
== Problemdefinition und Ziele <BUSINESS_UNDERSTANDING> #include "02_main_body/07_business_understanding.typ"
== Datensatzbeschreibung <DATA_UNDERSTANDING> #include "02_main_body/08_data_understanding.typ"
== Vorverarbeitung und Normalisierung <DATA_PREPARATION> #include "02_main_body/09_data_preparation.typ"
== Implementierung verschiedener Modelle <MODELLING> #include "02_main_body/10_modelling.typ"
== Evaluation <EVALUATION> #include "02_main_body/11_evaluation.typ"

//Conclusion
= Zusammenfassung und Ausblick <CONCLUSION> #include "04_conclusion/conclusion.typ"
= Limitationen der Arbeit <LIMITATION> #include "04_conclusion/limitation.typ"

// Directories
#set page(numbering: "I")
#context counter(page).update(counter(page).at(<END_DIRECTORIES>).first())

#bibliography("bib.yml",title: [Literaturverzeichnis])
<END>

#set heading(numbering: (_, ..it) => "A" + it.pos().map(str).join())
#set page(numbering: "i")
#counter(page).update(1)
= Anhang
==