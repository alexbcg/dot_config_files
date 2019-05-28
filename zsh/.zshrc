source "$HOME/antigen.zsh"
#export WORKON_HOME="$HOME/.virtualenvs"
# source /usr/local/bin/virtualenvwrapper.sh

antigen use oh-my-zsh
antigen bundle command-not-found
antigen bundle git
# antigen bundle virtualenvwrapper
# Syntax highlighting bundle.
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle zsh-users/zsh-completions
antigen bundle mollifier/cd-gitroot
antigen theme avit 
antigen apply
# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=990000
SAVEHIST=990000
bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename "$HOME/.zshrc"

autoload -Uz compinit
compinit

alias gpff='git pull --ff-only origin master'
alias gprb='git pull --rebase origin master'
alias gprbi='git pull --rebase=interactive origin master'

alias cdu='cd-gitroot'

export VISUAL=vim
export EDITOR="$VISUAL"
 #End of lines added by compinstall

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/admin/Downloads/.zshrc/google-cloud-sdk/path.zsh.inc' ]; then source '/Users/admin/Downloads/.zshrc/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/admin/Downloads/.zshrc/google-cloud-sdk/completion.zsh.inc' ]; then source '/Users/admin/Downloads/.zshrc/google-cloud-sdk/completion.zsh.inc'; fi

# Spark Path magic
export SPARK_VERSION=`ls /usr/local/Cellar/apache-spark/ | sort | tail -1`
export SPARK_HOME="/usr/local/Cellar/apache-spark/$SPARK_VERSION/libexec"
export PYTHONPATH=$SPARK_HOME/python/:$PYTHONPATH
export PYTHONPATH=$SPARK_HOME/python/lib/py4j-0.9-src.zip:$PYTHONPATH

# PySpark to ipython3 terminal
#export PYSPARK_DRIVER_PYTHON=ipython3

# Pyspark to jupyter notbebook
#export PYSPARK_DRIVER_PYTHON=jupyter
#export PYSPARK_DRIVER_PYTHON_OPTS=notebook

# Fix java issue
export JAVA_HOME=$(/usr/libexec/java_home -v 1.8) 
