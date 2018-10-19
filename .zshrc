## export variables
export home=/home/nan
export app=$home/app
export data=$home/data
export tool=$home/tool
export bin=$apps/bin
export lib=$apps/lib
export lib64=$apps/lib64
export proj=$home/project
export gb=$home/github
export dirs=$home/dirs
export conda_dir=$app/anaconda3

## bin path setting
add_path_top()
{
    typeset top="$1"
    typeset bin="$2"
    typeset man="$3"
    PATH="$top/$bin:$PATH"
    [ "$man" != "-" ] && MANPATH="$MANPATH:$top/$man"
    return 0
}

#BINS_PATH=$(echo $(ls -d $bins/*/ |sed   "s#//##"| tr "\n" ":" |sed "s/:$//"))
#PATH=$BINS_PATH:$PATH
add_path_top  $apps bin     share/man
add_path_top  $home .bin
add_path_top  /usr/local bin
add_path_top  $conda_dir bin

## library setting
#export CC=/usr/local/bin/gcc-6
#export BOOST_ROOT=/usr/prog/boost/1.52.0_intel
#export LIBRARY_PATH=$gcc_dir/lib64:$libs:$lib64:$LIBRARY_PATH
#export PKG_CONFIG_PATH=/usr/lib/pkgconfig:$PKG_CONFIG_PATH:$libs/pkgconfig:
#export LD_LIBRARY_PATH=/home/nice/tools/anaconda/lib:$LD_LIBRARY_PATH:$libs:$BOOST_ROOT/lib:/home/nice/tools/R-patched/lib:$gcc_dir/lib:$gcc_dir/lib64:$QT_BASE/lib
#export LD_RUN_PATH=$LD_RUN_PATH:$libs
#export C_INCLUDE_PATH=$C_INCLUDE_PATH:$apps/include:$BOOST_ROOT/include

## software setting
#python
export PYTHONPATH=$PYTHONPATH:$conda_dir/lib/python:.

# set R
#export RSTUDIO_WHICH_R=/usr/local/bin/R
#add_path_top  $R_HOME bin

# Big Data
#export SPARK_HOME=$spark_dir
#export PYSPARK_DRIVER_PYTHON=ipython
#export PYSPARK_DRIVER_PYTHON_OPTS="notebook --NotebookApp.open_browser=False --NotebookApp.ip='*' --NotebookApp.port=8880"

#perl
#export PERLLIB=$libs/perl5
#export PERL5LIB=$libs/perl5:/home/nice/tools/seq/snp/vcftools_0.1.11/perl

# setting QT
#export QTDIR=/picb/molsysbio/tools/qt/qt-everywhere-opensource-src-4.8.1
#export LD_LIBRARY_PATH=$QTDIR/lib:$LD_LIBRARY_PATH

#java
#export JCC_JDK=$tools/jdk1.7.0_11
#export JCC_JDK="/Library/Internet Plug-Ins/JavaAppletPlugin.plugin/Contents/Home"
#add_path_top $JCC_JDK  bin
#export CLASSPATH=.:$tools/seq/picard-tools-1.94
#export JAVA_HOME=$JCC_JDK/jre
#export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:$JAVA_HOME/lib/amd64/:$JAVA_HOME/lib/amd64/server/
#export MATLAB_JAVA=$JAVA_HOME
#export INSTALL4J_JAVA_HOME=$JAVA_HOME
#export ANT_HOME=/home/nice/tools/apache-ant-1.9.2

# other jars
#export BISSNP=/home/nice/tools/seq/bsseq/bissnp/BisSNP-0.82.2.jar
#export GSEA_JAR=/home/nice/tools/gsea2-2.1.0.jar

# set hg
export HGEDITOR= "vim"

# set vim
export MYVIMRC=$home/.vimrc

# set TERM
# ryan
export TERM="xterm-256color"
PS1="$PS1"'$([ -n "$TMUX"  ] && tmux setenv TMUXPWD_$(tmux display -p "#D" | tr -d %) "$PWD")'

## environment setting
#setting allias
alias ll='ls -l '
alias wl='wc -l '
alias lh='ls -lh'
alias lt='ls -lht'
alias la='ls -la'
alias ld='ls -d */ | sed "s@//@/@"'
alias md='mkdir'
alias topu='htop -unice'
alias top='htop'
alias hc='hg clone '
alias psg='ps aux | grep '
alias vi='vim -p'
alias tx='tmux -2 '
alias txp='tmuxp load '
alias txn='tmux -2 new -s '
alias txl='tmux -2 list-se '
alias txa='tmux -2 att -t '
alias dl='curl -O'
alias tarz='tar xvfz'
alias tarj='tar xvfj'
alias w='wget --no-check-certificate -c '
alias inote='jupyter lab'
alias hgsee='hg sglog | less'
alias hgnb='hg push --new-branch '
alias hgcb="hg commit --close-branch -m 'close branch' "
alias run_h2o='java -jar /Users/nan/app/bd/h2o-3.8.1.4/h2o.jar'
alias condar="conda install -c r "
alias py3='export PATH=$app/anaconda3/bin:$PATH'
alias pengjia='ssh bigdata@zhupengjia.cn -p 10022 '
alias connect="ssh -i '/home/nan/aws/vpn_ss.pem' -D 7777 -f -C -q -N ec2-user@13.231.169.144"
alias sproxy= "sudo proxychains "
alias proxy= "proxychains "
#alias java='java -Xms16m -Xmx256m'

#File search
alias loc='locate '


#setting time out time
#export TMOUT=36000000
#readonly TMOUT

# set ulimit memory
#ulimit -v 60000000

# set proxy
#export http_proxy=http://cnzj-proxy.ap.novartis.net:2010
#export https_proxy=http://cnzj-proxy.ap.novartis.net:2010
#export ftp_proxy=http://cnzj-proxy.ap.novartis.net:2010
#export http_proxy=http://86.117.135.134:2011

## zsh settings
#export ZSH=$HOME/.oh-my-zsh
#plugins=(git)
plugins=(git bundler osx docker brew gradle history-substring-search pip python sbt scala sudo vi-mode vim-interaction kubectl)
plugins=(zsh-autosuggestions)

# theme
ZSH_THEME="jtriley"
#ZSH_THEME="ys"
# CASE_SENSITIVE="true"
#DISABLE_AUTO_UPDATE="true"
# export UPDATE_ZSH_DAYS=13
# DISABLE_LS_COLORS="true"
# DISABLE_AUTO_TITLE="true"
#ENABLE_CORRECTION="true"
# COMPLETION_WAITING_DOTS="true"
# DISABLE_UNTRACKED_FILES_DIRTY="true"
# HIST_STAMPS="mm/dd/yyyy"
# User configuration
export LANG="en_US.UTF-8"
export LC_COLLATE="en_US.UTF-8"
export LC_CTYPE="en_US.UTF-8"
export LC_MESSAGES="en_US.UTF-8"
export LC_MONETARY="en_US.UTF-8"
export LC_NUMERIC="en_US.UTF-8"
export LC_TIME="en_US.UTF-8"
export LC_ALL=
export EDITOR='vim'
#export ARCHFLAGS="-arch x86_64"
export SSH_KEY_PATH="~/.ssh/dsa_id"
#source $ZSH/oh-my-zsh.sh
bindkey  "^[[1~"   beginning-of-line
bindkey  "^[[4~"   end-of-line


## powershell
source /home/nan/app/anaconda3/lib/python3.7/site-packages/powerline/bindings/zsh/powerline.zsh
#source '/home/nan/.local/lib/python3.7/site-packages/powerline/bindings/zsh/powerline.zsh'

# Path to your oh-my-zsh installation.
export ZSH=/home/nan/.oh-my-zsh
source $ZSH/oh-my-zsh.sh

