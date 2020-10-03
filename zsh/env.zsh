# Go
export GOROOT=/usr/local/go
export GOPATH=$HOME/go
export GOBIN=$GOPATH/bin
export PATH=$GOPATH:$GOBIN:$GOROOT/bin:$PATH
export GOPROXY=https://goproxy.io 

# Python VirtualEnvWrapper
export WORKON_HOME=$HOME/.PYTHON_ENVS
export VIRTUALENVWRAPPER_PYTHON=/usr/bin/python36
export VIRTUALENVWRAPPER_VIRTUALENV=/usr/local/python36/bin/virtualenv

# hadoop
export HADOOP_HOME=/usr/local/hadoop
export PATH=$HADOOP_HOME/bin:$PATH

# jdk8
export JAVA_HOME=/usr/local/jdk8
export JRE_HOME=$JAVA_HOME/jre
export CLASSPATH=$JAVA_HOME/lib:$JRE_HOME/lib
export PATH=$JAVA_HOME/bin:$PATH

export GIT_TERMINAL_PROMPT=1

# zplug
export ZPLUG_HOME=~/.zplug

# ranger
export RANGER_LOAD_DEFAULT_RC=FALSE
