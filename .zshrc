##################################################
#                                                #
#     ███████╗███████╗██╗  ██╗██████╗  ██████╗   #
#     ╚══███╔╝██╔════╝██║  ██║██╔══██╗██╔════╝   #
#       ███╔╝ ███████╗███████║██████╔╝██║        #
#      ███╔╝  ╚════██║██╔══██║██╔══██╗██║        #
#     ███████╗███████║██║  ██║██║  ██║╚██████╗   #
#     ╚══════╝╚══════╝╚═╝  ╚═╝╚═╝  ╚═╝ ╚═════╝   #
#                                                #
#         © Aurobindo Mondal  2022               #
##################################################



#######################################################################
#                   Themes and Display Config                         #
#######################################################################
export EDITOR=nvim
export VISUAL=nvim
export ZSH="$HOME/.oh-my-zsh"
export JAVA_HOME="$(/usr/libexec/java_home)"
export KREW_HOME="${KREW_ROOT:-$HOME/.krew}/bin"
export MAVEN_HOME="/usr/local/opt/maven@3.8/bin"
export GO_HOME="/usr/local/go/bin"
export FLUTTER_HOME="/Users/aurobindo.m/tools/flutter/bin"
export ZPLUG_HOME=/usr/local/opt/zplug
export PROTOC_HOME="/Users/aurobindo.m/tools/protoc-21.7-osx-x86_64/bin"
export PATH="$JAVA_HOME:$MAVEN_HOME:$GO_HOME:$KREW_HOME:$FLUTTER_HOME:$PROTOC_HOME:$PATH"
export PROTOC_PYTHON_HOME="/Users/aurobindo.m/tools/protoc-21.7-osx-x86_64/include"
export PYTHONPATH=PROTOC_PYTHON_HOME:$PYTHONPATH
export TERM=xterm-256color

ZSH_THEME="powerlevel10k/powerlevel10k"

plugins=(git-prompt docker sublime git zsh-autosuggestions zsh-syntax-highlighting tmux kubectl virtualenv web-search)

HIST_STAMPS="dd/mm/yyyy"

source $ZSH/oh-my-zsh.sh

# Display Welcome Auro at the top of the screen
font_array=(3x5 alphabet banner banner3 basic bell big bulbhead chunky coinstak colossal computer contessa cosmic cursive doom drpepper eftifont eftirobot epic fender fourtops fuzzy graffiti hollywood invita kban larry3d letters linux marquee mnemonic nancyj-fancy nancyj-underlined nancyj nipples o8 ogre pawp peaks pebbles poison puffy rectangles rounded rowancap rozzo sblood script serifcap shadow slant slide slscript small smisome1 smscript smshadow smslant speed stampatello standard starwars stellar stop straight tanja thick thin threepoint tinker-toy tombstone trek usaflag weird)

font_index=$(awk -v min=1 -v max=75 'BEGIN{srand(); print int(min+rand()*(max-min+1))}')
echo "Font Used: $font_array[$font_index] "
clear
figlet -w 150 -f $font_array[$font_index] "Welcome Auro" | lolcat
source ~/.p10k.zsh

#######################################################################
#                            Alias Commands                           #
#######################################################################

# Print Alias Configs
source $ZSH/custom/plugins/print-alias/print-alias.plugin.zsh
export PRINT_ALIAS_PREFIX='  ╰─> '
export PRINT_ALIAS_FORMAT=$'\e[1m'
export PRINT_NON_ALIAS_FORMAT=$'\e[0m'
export PRINT_ALIAS_IGNORE_REDEFINED_COMMANDS=true
export PRINT_ALIAS_IGNORE_ALIASES=(my_alias my_other_alias)

# Zsh Aliases
    alias ss='source ~/.zshrc'
    alias speed='speedtest-cli'

# Kubectl Aliases
    alias kfind='cat ~/.oh-my-zsh/plugins/kubectl/kubectl.plugin.zsh | grep '
    alias kd='kubectl auth-proxy -n k8s-dashboard-oidc http://kubernetes-dashboard.svc'

# Python Aliases
    alias python="python3"
    alias pip="pip3"

# Tree 
    alias lll="tree"

# Maven Aliases
    alias mci="mvn clean install"

# Vim plugins
    alias vi="nvim"

# Type hg to search something from history
    alias hg='fc -li 2 | grep '

# Type pg to search something from ps -ef
    alias pg='ps -ef | grep '

# Git Alias
    alias gpo='git push origin '
    alias gfind='cat ~/.oh-my-zsh/plugins/git/git.plugin.zsh | grep '

    function gfor() {
        local branch=$1
        gfo $branch:$branch
    }

#######################################################################
#                      Customized Functions                           #
#######################################################################

# List directory size for current directory
dirsize ()
{
    du -shx * .[a-zA-Z0-9_]* 2> /dev/null | \
        egrep '^ *[0-9.]*[MG]' | sort -n > /tmp/list
    egrep '^ *[0-9.]*M' /tmp/list
    egrep '^ *[0-9.]*G' /tmp/list
    rm -f /tmp/list
}

function md()
{
    mkdir $1 && cd $1
}

function ydl()
{
    curr_dir=$(pwd)
    if [ -z "$2" ]
    then
        cd "/Users/aurobindo.m/Music/transfer"
    else
        cd "$2"
    fi
    youtube-dl --no-check-certificate -i --add-header Accept-Encoding:deflate -x --audio-format mp3 $1
    cd $curr_dir
}

function ydlv()
{
    curr_dir=$(pwd)
    if [ -z "$2" ]
    then
        cd "/Users/aurobindo.m/Music/transfer"
    else
        cd "$2"
    fi
    youtube-dl --no-check-certificate $1
    cd $curr_dir
}

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh" || true

alias ssh="fkst-cli installCert; ssh"

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/aurobindo.m/tools/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/aurobindo.m/tools/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/aurobindo.m/tools/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/aurobindo.m/tools/google-cloud-sdk/completion.zsh.inc'; fi
