#import "@preview/abbr:0.3.0"
#abbr.load("abbr.csv")

// variables
#let author = "Sujan Sirimorhan"
#let uni = "Technische Hochschule Ostwestfalen-Lippe"
#let faculty = "Fachbereich Informatik und Automation"
#let title = "Unsupervised Multi‑View Vision-Based Anomaly Detection and Active Learning for Sensor–Actor Cable Production"
#let professor = "Prof. Dr. rer. nat. Markus Lange-Hegermann"
#let type_of_work = "Studienarbeit"

// functions
#let over(..args) = grid(columns: args.pos().map(_ => 1fr), inset: (top: 4pt), grid.hline(), ..args)
#let under(..args) = grid(columns: args.pos().map(_ => 1fr), inset: (bottom: 4pt), ..args, grid.hline())

#let footer = over(author, align(right, context counter(page).display()))
#let header = under(context query(heading.where(level: 1)).rev().find(it => it.location().page() <= here().page()).body)
