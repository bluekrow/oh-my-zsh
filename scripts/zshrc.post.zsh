#####ALIASES#######
#DIRS
alias cdhome="cd ~/"
#DEV
alias gdiff="git difftool -y --no-symlinks"
alias gdiffdir="git difftool -d -y --no symlinks"
alias vs="vstudio"
alias vc="vcode"
#EXPLORER
alias explorehere="explorer.exe ."
alias explore="explorer.exe"
alias exp="explore"
alias exphere="explorehere"
#GIT ALIASES
alias gitdocs-probook="cmd.exe /C start https://bluekrow.github.io/assets/documents/gitprobook.pdf "
alias gitdocs-cheatsheet="cmd.exe /C start https://bluekrow.github.io/assets/documents/gitsheet.pdf"
alias gitdocs-ref="cmd.exe /C start https://git-scm.com/docs"
alias gitdocs-labs="cmd.exe /C start http://gitimmersion.com/"

####FUNCTIONS#######
function test()
{
    echo $(pwd -P)/$1 | sed 's_/mnt/d_D:_'
    echo $(pwd -P)/$1 | sed 's_/mnt/\([:alpha:]\)_\1:_'
    echo $(pwd -P)/$1 | sed -r 's_/mnt/([[:alpha:]])_\u\1:_'
}

function bc() {
    /mnt/c/Program\ Files/Beyond\ Compare\ 4/BCompare.exe `echo $1 | sed 's_/mnt/d_D:_'` `echo $2 | sed 's_/mnt/d_D:_'`
}

function vstudio()
{
    (/mnt/c/Program\ Files\ \(x86\)/Microsoft\ Visual\ Studio/2017/Community/Common7/IDE/devenv.exe `echo $(pwd -P)/$1 | sed -r 's_/mnt/([[:alpha:]])_\u\1:_'` >/dev/null 2>&1 &)
}

function vcode()
{
    (/mnt/c/Users/Nino/AppData/Local/Programs/Microsoft\ VS\ Code/Code.exe `echo $(pwd -P)/$1 | sed -r 's_/mnt/([[:alpha:]])_\u\1:_'` >/dev/null 2>&1 &)
}

function winpath
{
    `echo readlink -f $1` | sed 's_/mnt/d_D:_'
}

function winopen
{
    cmd.exe /C start `winpath $1`
}
