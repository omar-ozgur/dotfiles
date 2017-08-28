###############################################################################
#                                                                             #
#                                   General                                   #
#                                                                             #
###############################################################################

# The path to the oh-my-zsh installation
export ZSH=/Users/oozgur/.oh-my-zsh

# The oh-my-zsh source
source $ZSH/oh-my-zsh.sh

# The name of the theme to load
ZSH_THEME="robbyrussell"

# Enable command auto-correction
ENABLE_CORRECTION="true"

# Display red dots whilst waiting for completion
COMPLETION_WAITING_DOTS="true"

# The plugins to load
# Plugins can be found in ~/.oh-my-zsh/plugins/*
plugins=(git colored-man sublime web-search osx)

###############################################################################
#                                                                             #
#                                  Bindings                                   #
#                                                                             #
###############################################################################

# Enable vim key bindings
bindkey -v

###############################################################################
#                                                                             #
#                                  Functions                                  #
#                                                                             #
###############################################################################

# Add aliases
ALIASES_FILE_PATH=$HOME/.aliases
ALIASES_SECRET_FILE_PATH=$HOME/.aliases_secret
function addalias() {
    ALIAS_NAME=`echo "$1" | grep -o ".*="`
    sed -i "" "/alias $ALIAS_NAME/d" $2
    QUOTED=`echo "$1"\" | sed "s/$ALIAS_NAME/$ALIAS_NAME\"/g"`
    echo "alias $QUOTED" >> $2
    source $2
}
function aa() {
    addalias $1 $ALIASES_FILE_PATH
}
function aas() {
    addalias $1 $ALIASES_SECRET_FILE_PATH
}

###############################################################################
#                                                                             #
#                                   Sources                                   #
#                                                                             #
###############################################################################

source $HOME/.aliases
source $HOME/.aliases_secret

