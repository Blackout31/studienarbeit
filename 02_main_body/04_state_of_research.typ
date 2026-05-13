=== Anomaliearten in der Forschung
Zur systematischen Einordnung von Abweichungen vom Normalzustand wird in der Literatur häufig zwischen Punkt‑, Kontext‑ und kollektiven Anomalien unterschieden. Punktanomalien bezeichnen einzelne Datenpunkte oder lokal begrenzte Bildregionen, die signifikant vom erlernten Normalverhalten abweichen. Kontextuelle Anomalien sind nur unter bestimmten Rahmenbedingungen als auffällig zu bewerten, während kollektive Anomalien erst durch das gemeinsame Auftreten mehrerer an sich unauffälliger Muster identifizierbar werden.

In der bildbasierten industriellen Qualitätsprüfung liegt der Forschungsschwerpunkt überwiegend auf Punkt‑ und lokalen Anomalien, da Defekte typischerweise räumlich begrenzt auftreten. Kollektive Anomalien gewinnen insbesondere dann an Bedeutung, wenn mehrere Bildbereiche oder Perspektiven gemeinsam ausgewertet werden, wie es bei Multi‑View‑Ansätzen der Fall ist. Die Klassifikation von Anomaliearten dient dabei primär der methodischen Einordnung und unterstützt die Auswahl geeigneter Erkennungsverfahren.

// INSERT ANOMALYTYPES <TODO>

=== Klassische Ansätze zur Anomalieerkennung
Frühere Arbeiten zur _ @AD _basieren häufig auf klassischen statistischen oder baumbasierten Verfahren. Ein verbreiteter Ansatz ist der Isolation Forest, bei dem Anomalien als Datenpunkte modelliert werden, die sich mit einer vergleichsweise geringen Anzahl von Partitionierungsschritten isolieren lassen. Diese Verfahren zeichnen sich durch eine geringe Modellkomplexität, gute Skalierbarkeit und einen moderaten Trainingsaufwand aus.

Für hochdimensionale Bilddaten sind klassische Ansätze jedoch nur eingeschränkt geeignet, da sie komplexe visuelle Strukturen nur unzureichend erfassen und häufig auf manuell definierte Merkmale angewiesen sind. In der aktuellen Forschung werden sie daher vor allem als _Baseline_‑Methoden eingesetzt, während leistungsfähigere _Deep‑Learning_‑basierte Ansätze den Stand der Technik bestimmen.

// INSERT FEATURE ENGINEERING -> CLASSIC ALGORITHIM <TODO>
// INSERT IMAGE -> CNN -> FEATURE SPACE -> ANOMALYSCORE <TODO>

=== Deep-Learning-basierte Anomalieerkennung
Mit dem zunehmenden Einsatz tiefer neuronaler Netze hat sich die _Deep‑Learning_‑basierte _ @AD _ als dominanter Forschungszweig etabliert. Eine frühe Klasse solcher Verfahren nutzt Autoencoder, die auf fehlerfreien Bilddaten trainiert werden, um den Normalzustand möglichst verlustarm zu rekonstruieren. Abweichungen vom Normalverhalten äußern sich hierbei in erhöhten Rekonstruktionsfehlern.

Darüber hinaus wurden @GAN‑basierte Ansätze entwickelt, bei denen der Normalzustand durch generative Modelle approximiert wird. Die Abweichung zwischen realen und generierten Bilddaten dient dabei als Maß für Anomalien. Neuere Arbeiten untersuchen zudem transformerbasierte Architekturen, die globale Abhängigkeiten innerhalb von Bilddaten expliziter modellieren und insbesondere bei komplexen visuellen Strukturen Potenzial zeigen.

Trotz ihrer hohen Leistungsfähigkeit weisen viele _Deep‑Learning_‑basierte Verfahren Einschränkungen hinsichtlich Trainingsstabilität, Interpretierbarkeit und Rechenaufwand auf. Zudem sind zahlreiche Ansätze primär für monoperspektivische Szenarien konzipiert, was ihre Übertragbarkeit auf mehrperspektivische industrielle Anwendungen begrenzt.


 // #figure(image("../98_assets/pipeline_with_heatmap.png"),caption: [Pipeline]) <PIPELINE_WITH_HEATMAP> <TODO>

=== Multi-View-spezifische Ansätze
Die Nutzung mehrerer Perspektiven wird in der aktuellen Forschung zunehmend als vielversprechender Ansatz zur Steigerung der Robustheit bildbasierter _ @AD _-verfahren betrachtet. Ziel von _Multi‑View_‑Ansätzen ist es, Informationen aus unterschiedlichen Blickwinkeln konsistent zu integrieren, um Verdeckungen zu reduzieren und perspektivabhängige Effekte auszugleichen.

In der Literatur lassen sich unterschiedliche Strategien zur _Multi‑View‑Fusion_ identifizieren. Diese reichen von frühzeitiger Merkmalsfusion über die separate Analyse einzelner Ansichten mit anschließender Kombination der Ergebnisse bis hin zu hybriden Verfahren. Während frühe Fusionsansätze eine gemeinsame Repräsentation aller Perspektiven anstreben, bieten späte Fusionsstrategien eine höhere Robustheit gegenüber fehlerhaften Einzelansichten.

Eine zentrale Herausforderung besteht darin, die zusätzlichen Informationen aus mehreren _Views_ nutzbar zu machen, ohne die Modellierung des Normalzustands zu erschweren. Insbesondere im Kontext _unsupervised_ Verfahren ist die Vermeidung unerwünschter Abhängigkeiten zwischen den einzelnen Perspektiven von entscheidender Bedeutung.

// INSERT EARLY FUSION <TODO>
// INSERT LATE FUSION <TODO>
// INSERT HYBRID <TODO>

=== Zusammenfassung und Forschungslücke
Der Stand der Forschung zeigt, dass _Deep‑Learning_‑basierte Verfahren der _unsupervised @AD _ ein hohes Potenzial für bildbasierte industrielle Anwendungen besitzen. Gleichzeitig bestehen weiterhin offene Herausforderungen im Umgang mit hochvarianten Fehlerbildern sowie mehrperspektivischen Bilddaten. Viele bestehende Ansätze sind entweder auf Einzelansichten beschränkt oder erfordern komplexe, schwer übertragbare Modellarchitekturen.

Insbesondere fehlt es an systematischen Untersuchungen, wie _Multi‑View_-Informationen in unsupervised _ @AD _-verfahren integriert werden können, ohne den Annotierungsaufwand signifikant zu erhöhen oder die Robustheit der Modelle zu beeinträchtigen. An dieser Stelle setzt die vorliegende Arbeit an und untersucht unterschiedliche Strategien zur Nutzung mehrperspektivischer Bilddaten im industriellen Kontext.