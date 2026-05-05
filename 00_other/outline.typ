#set par(leading: 0.5em, spacing: 1em, justify: true)
#set heading(numbering: "1.1",)
#show heading.where(level: 1): set text(size: 12pt)
#show heading.where(level: 2): set text(size: 11pt)
#show heading.where(level: 3): set text(size: 10pt)

#{
  show outline.entry.where(level: 1): set block(above: 1em)
  show outline.entry.where(level: 1): set text(weight: "bold")
 
  outline(title: "Gliederung")
}
 
#heading(numbering: none)[Inhaltsverzeichnis]
#heading(numbering: none)[Abkürzungsverzeichnis]
#heading(numbering: none)[Abbildungsverzeichnis]
#heading(numbering: none)[Tabellenverzeichnis]

= Einleitung
== Motivation
== Zielsetzung der Arbeit und Forschungsfrage

= Theoretischer Hintergrund
== Cross-Industry Standard Process for Data Mining
== Grundlagen
== Multiview-Bildanalyse
== Stand der Forschung
=== Anomaliearten in der Forschung
=== Klassische Ansätze zur Anomalieerkennung
=== Deep-Learning-basierte Anomalieerkennung
=== Multi-View-spezifische Ansätze
=== Zusammenfassung und Forschungslücke
== Bewertungsmetriken
=== Metriken zur Bewertung der Erkennungsleistung
=== Besonderheiten unbalancierter Datensätze
=== Benchmarks und reale Industriedaten
=== Vergleichsrahmen und Bewertungskontext

= Versuchsaufbau und Ergebnisse
== Problemdefinition und Ziele
== Datensatzbeschreibung
== Vorverarbeitung und Normalisierung
== Implementierung verschiedener Modelle
== Evaluation

= Zusammenfassung und Ausblick

= Limitationen der Arbeit

= Literaturverzeichnis

= Anhang
