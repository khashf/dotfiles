# local config loaded after main config
#source /etc/profile.d/undistract-me.sh

export JAVA_HOME="/usr/"

# colored GCC warnings and errors;
export GCC_COLORS='error=01;31:warning=01;35:note=01;36:caret=01;32:locus=01:quote=01' 

# NVM
export NVM_DIR="$HOME/.nvm";
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh";  # loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion";  # loads nvm bash_completion

# Intel C++ compiler (icpc)
source /opt/intel/parallel_studio_xe_2018/bin/psxevars.sh > /dev/null 2>&1

# ROS (Robot Operating System)
source /opt/ros/kinetic/setup.bash
source /home/khuong/lwork/gfr/gfr19d_ws/devel/setup.bash
