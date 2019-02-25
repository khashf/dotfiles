# System related
export PATH=$PATH:~/bin;
export PATH=$PATH:.;

# Directories shortcuts
export MEDIA="/media/$USER/Data"
export DEV="/home/$USER/dev"

# Program related

export CHEATPATH=~/.cheat;
export DEFAULT_CHEAT_DIR=~/.cheat;
export CHEATCOLORS=true;

# Programming related

# Make python use UTF-8 encoding for output to stdin, stdout, stderr
export PYTHONIOENCODING='UTF-8';

export JAVA_HOME="/usr/"

# colored GCC warnings and errors;
export GCC_COLORS='error=01;31:warning=01;35:note=01;36:caret=01;32:locus=01:quote=01' 

# NVM
export NVM_DIR="$HOME/.nvm";
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh";  # loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion";  # loads nvm bash_completion

# Intel C++ compiler (icpc)
source /opt/intel/parallel_studio_xe_2018/bin/psxevars.sh > /dev/null 2>&1

source /usr/share/virtualenvwrapper/virtualenvwrapper.sh
export WORKON_HOME=~/.venvs/

