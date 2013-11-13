setwd('/Users/Dan/Documents/Coursework/Software_Carpentry/Homework/Homework3/')

meanVector <- function(x) {
  sum.vector <- 0
  for(i in 1:length(x)) {
    sum.vector <- sum.vector + x[i]
  }
  out <- sum.vector / length(x)
  return(out)
}

v1 <- c(1, 1, 1, 1, 1)
meanVector(v1)

v2 <- c(1, 2, 3, 4, 5)
meanVector(v2)

v3 <- c(1, 2,  NA, 4, 5)
meanVector(v3)

meanVector2 <- function(x, skip.na = FALSE) {
  sum.vector <- 0
  if(skip.na == FALSE){
    for(i in 1:length(x)) {
      sum.vector <- sum.vector + x[i]
    }
    mean.v <- sum.vector / length(x)
  } else {
    x.new <- x[!is.na(x)]
    for(i in 1:length(x.new)) {
      sum.vector <- sum.vector + x.new[i]
    }
    mean.v <- sum.vector / length(x.new)
  }
  return(mean.v)
}

meanVector2(v2)
meanVector2(v3)
meanVector2(v3, skip.na = TRUE)

  
  # now if this was a real function for general use, you would want to put in checks with warnings and error messages. For example, what happens if you try to input a matrix for x? This is the type of thing to think about when writing functions, but for now this should give you a basic idea of how to write your own utility functions and give you a better understanding of the built-in function you regularly use. Remember you can always type the name of the function to see the code behind it, for example,
  
sd # standard deviation function
  
  # This can also allow you to take and modify existing functions, just be sure to give it a new name.

# Create .md, .html, and .pdf files
library(knitr)
library(markdown)
knit("Rscript-meanFunction.Rmd")
markdownToHTML('Rscript-meanFunction.md', 'Rscript-meanFunction.html', options=c("use_xhml"))
system("pandoc -s Rscript-meanFunction.html -o Rscript-meanFunction.pdf -H margins.sty")