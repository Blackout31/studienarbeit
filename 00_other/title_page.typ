#import "variables_functions.typ" : *

#set align(center)

#image("../98_assets/uni.svg")
#v(1cm)
#text(20pt, weight: "bold",par[#uni])
#text(16pt ,par[#faculty])
#v(1cm)
#text(18pt, weight: "bold", par[#type_of_work])
#par[von]
#par[#author]
#par[Matr.-Nr.: 2001 8542]
#v(1cm)
#par[gemäß Bachelorprüfungsordnung für den Studiengang Technische Informatik in der Fassung der Bekanntmachung vom 22. September 2022 (Verkündigungsblatt der Hochschule 2022/Nr. 49)]
#v(1cm)
#grid(
    align: left,
    columns: (1fr, 3fr),
    row-gutter: 1cm,
    underline[*Thema:*], title,
    underline[*Prüfer:*], professor,
)

#set align(bottom + left)
#par[Die #type_of_work umfasst #context locate(<END>).page() Seiten.]