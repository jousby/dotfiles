

###############################################################################
# Path Setup
###############################################################################

DEV_TOOLS=/scratch/opt

export JAVA_DEV_TOOLS=$DEV_TOOLS/java
JDK_INSTALLS=$JAVA_DEV_TOOLS/jdk
JAVA_HOME=$JDK_INSTALLS/java8.latest
GRADLE_HOME=$DEV_TOOLS/groovy/tools/gradle-2.0

export PATH=$JAVA_HOME/bin:$GRADLE_HOME/bin:/scratch/opt/scala/tools/sbt/bin:$PATH

 
###############################################################################
# Prompt Setup
###############################################################################

# Show current Git branch on bash prompt
source /etc/bash_completion.d/git-prompt
PS1="\n\[\033[00;34m\]\u@\h\[\033[00;34m\] \[\033[32m\]\w\[\033[0m\]\$(__git_ps1)\n$ \[\033[0m\]"

source ~/.bashrc_aliases

###############################################################################
# Functions
###############################################################################

function sinit {
  mkdir -p /scratch/{code/{current,archive},opt/{java/{ide,jdk,tools},javascript/{tools}},downloads}
}
