surya describe contracts/**/*.sol > docs/describeContracts.md

surya inheritance contracts/**/*.sol | dot -Tpng > docs/inheritancemaps.png

surya graph contracts/**/*.sol | dot -Tpng > docs/Contractgraphs.png

surya mdreport docs/mdreport.md contracts/**/*.sol