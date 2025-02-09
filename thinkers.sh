#!/bin/bash
plantuml -p -tpng -fileename "plantuml_thinkers.puml" > plantuml_thinkers.svg <<EOF
@startuml
scale 100 as 100 pixels
robust thinker

@-500
thinker is "Unkown"

@1
thinker is "Jesus Christ"

thinker@0 <-> @+11 : holocene

thinker is {hidden}
@enduml
EOF

termux-open ./plantuml_thinkers.svg
