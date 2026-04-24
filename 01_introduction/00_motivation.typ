#set image(height: 4cm)

In industriellen test Fertigungsprozessen nimmt die Qualitätsicherung der produzierten Produkte und Bauteile eine zentrale Rolle ein. Zur frühzeitigen Identifikation von Abweichungen vom Sollzustand sogenannte Anomalien, kommen häufig optische Prüfverfahren zum Einsatz. Solche Anomalien äußern sich beispielsweise in Form von geometrischen Verformungen, Oberflächenfehlern oder Verschmutzungen und werden in der Praxis oftmals durch geschultes Fachpersonal erkannt. Um eine gleichbleibend hohe Prüfqualität sicherzustellen und subjektive Einflüsse zu reduzieren, wird zunehmend auf Methoden des @ML zurückgegriffen.

@ML stellt ein Teilgebiert der @KI dar, bei dem Algorithmen in der Lage sind, aus Daten Muster und Zusammenhänge eigenständig zu erlernen. Inserbesondere Verfahren der Anomalieerkennung aus dem Bereich des _Unsupervised Learnings_ bieten hierbei entscheidende Vorteile, da sie ohne explizit gelabelte Fehlerdaten auskommen. Dies ist inserbesondere in industiellen Produktionsumgebungen von Bedeutung, da fehlerhate Bauteile häufig nur in begrenzter Anzahl oder nicht in ausreichender Variationsbreite verfügbar sind. Ein repräsentatives Beispiel für einen solchen Ansatz stellt der Algorithmus _PatchCore_ dar, der sich in der visuellen bewährt hat.   

Die optische Erfassung der Bauteile erfolgt über Kamerasysteme, welche Bilddaten zur weiteren Analyse bereitstellen. Um stabile und vergleichbare Bildaufnahmen zu gewährleisten, wird in der Regel eine möglichst konsistente Ausrichtung der Bauteile angestrebt. Bei komplexen Objekten, die aus mehreren Perspektiven erfasst werden müssen, um sowohl rotationsbedingte Merkmale als auch das gesamte Bauteil vollständig zu überprüfen, ist eine solche Ausrichtung jedoch nur eingeschränkt realisierbar. Aus diesem Grund kommt eine speziell konzipierte Vorrichtung zum Einsatz, welche das Objekt zentriert zwischen mehreren Kameras positioniert und sicherstellt, dass relevante Sichtbereiche nicht verdeckt werden. Dadurch wird eine konsistente _Multi‑View_-Erfassung ermöglicht, die als Grundlage für weiterführende Anomalieerkennungsverfahren dient.

Als Beispiel dient das Produkt _SAC #footnote[Sensor Actuator Cable] M12_ , welcher von der _Phoenix Contact GmbH % Co. KG_ prouziert wird. 

#figure(image("../98_assets/Product.png"),caption: [Sensor Actor Kabel]) <Product>

Die Pusher werden im Spritzgussverfahren hergestellt. Je nach Werkzeugauslegung entstehen mehrere Pusher pro Zyklus - beispielsweise 16 Stück alle vier Sekunden. Dabei können verschiedene Fehler auftreten: Neben Farbabweichungen zählen auch mechanische Defekte wie Grat oder Unterspritzung dazu. Grat entsteht, wenn Kunststoff zwischen die Werkzeughälften oder in andere Spalten gelangt und dort erhärtet. Dabei entstehen unerwünschte, d ̈unne Materialanh ̈aufungen am fertigen
Kunststoffteil. Unterspritzung tritt auf, wenn das Werkzeug nicht vollst ̈andig gef ̈ullt wird,
was zu unvollst ̈andig ausgeformten Bereichen f ̈uhrt. Wir k ̈onnen die Fehler in Abbildung 2 (b)
bzw. (c) erkennen. Da fehlerhafte PT 1,5/S Pusher zum Zeitpunkt der Erstellung der Arbeit
nicht vorhanden waren, sind in der Abbildung andere Kleinteile der Phoenix Contact GmbH
& Co. KG der gleichen Gr ̈oßenordnung dargestell