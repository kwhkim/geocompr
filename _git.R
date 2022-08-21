cat('* Check current directory\n')
if (getwd()!="/home/rstudio/geocompr") {
  stop('!E Check current directory!')
}

cat("* git config core.sshCommand 'ssh -i .ssh/id_rsa'\n")
system("git config core.sshCommand 'ssh -i .ssh/id_rsa'")
cat("* git remote set-url origin git@github.com:kwhkim/geocompr.git\n")
system("git remote set-url origin git@github.com:kwhkim/geocompr.git")
cat('* git config --local user.name "kwhkim"\n')
system('git config --local user.name "kwhkim"')
cat('* git config --local user.email "kwonhyun.kim@gmail.com"\n')
system('git config --local user.email "kwonhyun.kim@gmail.com"')
cat('* git pull\n')
system('git pull')

cat('* source("_build_book.R")')
source('_build_book.R')