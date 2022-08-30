## docker pull
## git pull
## & 

cat('* Current directory = ', getwd(), '\n')
if (getwd()!="/home/rstudio/geocompr") {
  stop('!E Check current directory!')
}


lns = readLines('_git.sh')

for (ln in lns) {
  cat(paste('$ ', ln, '\n', collapse=""))
  yn = scan() # dfsdfas311:zv"asdf@!@#$&(*^" -> Error in scan()
  if (length(yn)==0) {
    if (grepl("^ *$", ln)) next
    system(ln)  
  } else {
    cat("! Skipping the line:", ln, "\n")
  }
  
}

cat('* continue to source("_build_book.R")?\n')
yn = scan()
if (length(yn) == 0) {
  source('_build_book.R')  
} else if (yn != 'n' && yn != 'N') {
  source('_build_book.R')  
}


