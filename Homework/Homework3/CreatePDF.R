# Create .md, .html, and .pdf files
library(knitr)
library(markdown)
knit("Rscript-meanFunction.Rmd")
markdownToHTML('Rscript-meanFunction.md', 'Rscript-meanFunction.html', options=c("use_xhml"))
system("pandoc -s Rscript-meanFunction.html -o Rscript-meanFunction.pdf -H margins.sty")

knit("powerFunction.Rmd")
markdownToHTML('powerFunction.md', 'powerFunction.html', options=c("use_xhml"))
system("pandoc -s powerFunction.html -o powerFunction.pdf -H margins.sty")