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
  scan()
  system(ln)
}

cat('* continue to source("_build_book.R")?\n')
yn = scan()
if (yn == 'y') {
  source('_build_book.R')  
}


