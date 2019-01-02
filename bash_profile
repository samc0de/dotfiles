
# added by Anaconda2 5.1.0 installer
export PATH="/Users/sam/anaconda2/bin:$PATH"
alias ycmvim="/usr/local/Cellar/macvim/8.0-146_1/MacVim.app/Contents/bin/vim"
alias oldvim="/usr/bin/vim"
alias vim="/usr/local/Cellar/macvim/8.0-146_1/MacVim.app/Contents/bin/vim"

if [ -f $(brew --prefix)/etc/bash_completion ]; then
  . $(brew --prefix)/etc/bash_completion
fi


# The richer prompt doesn't work with conda env creations. Conflict about non-ascii chars prob.
# To fix, 3 ways.
# use Python 3 in the base environment (which I always recommend),
# run PYTHONIOENCODING=utf-8 source activate instead of just source activate,
# run export PYTHONIOENCODING=utf-8 once per shell session.
export PYTHONIOENCODING=utf-8
alias 'condactivate'='PYTHONIOENCODING=utf-8 source activate'
alias 'cndactivate'='PYTHONIOENCODING=utf-8 source activate'

# Changes for a richer bash prompt, Mac here.
if [ -f "$(brew --prefix)/opt/bash-git-prompt/share/gitprompt.sh" ]; then
  __GIT_PROMPT_DIR=$(brew --prefix)/opt/bash-git-prompt/share
  source "$(brew --prefix)/opt/bash-git-prompt/share/gitprompt.sh"
fi


# Set ipython as default interpreter for pyspark.
export PYSPARK_DRIVER_PYTHON='/Users/sam/anaconda2/envs/ds-py2/bin/ipython'

# Add scala-play-activator to path.
export PATH="$PATH:/Users/sam/scala_play/activator-1.3.2-minimal"

# Scala version 2.11
export PATH="/usr/local/opt/scala@2.11/bin:$PATH"


# To have sqlite first in PATH run:
export PATH="/usr/local/opt/sqlite/bin:$PATH"

# For compilers to find sqlite:
export LDFLAGS="-L/usr/local/opt/sqlite/lib"
export CPPFLAGS="-I/usr/local/opt/sqlite/include"

# This somehow messes 'python' command up, so unittest discovery doesn't work.
alias testpy="python -m unittest discover -p"
