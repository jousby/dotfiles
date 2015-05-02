###############################################################################
# Personal bash extensions that imports personal bash aliases
###############################################################################

DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )


###############################################################################
# Path Setup
###############################################################################

DEV_TOOLS=/scratch/opt

JAVA_HOME=${DEV_TOOLS}/java/jdk/java8.latest

export PATH=$JAVA_HOME/bin:$PATH

 
###############################################################################
# Prompt Setup
###############################################################################

# Show current Git branch on bash prompt
source /etc/bash_completion.d/git-prompt
PS1="\n\[\033[00;34m\]\u@\h\[\033[00;34m\] \[\033[32m\]\w\[\033[0m\]\$(__git_ps1)\n$ \[\033[0m\]"

source ${DIR}/bashrc_alias

###############################################################################
# Functions
###############################################################################

function sinit {
  mkdir -p /scratch/{code/{current,archive},opt/{java/{ide,jdk,tools},javascript/tools},downloads}
}
