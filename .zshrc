# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH
 
export ZSH="/Users/burkeb1/.oh-my-zsh"
 
ZSH_THEME="powerlevel9k/powerlevel9k"
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(dir rbenv vcs)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status root_indicator background_jobs history time)
POWERLEVEL9K_PROMPT_ON_NEWLINE=true
DISABLE_UPDATE_PROMPT=true
#POWERLEVEL9K_VCS_MODIFIED_BACKGROUND=’red’
 
# Add a space in the first prompt
POWERLEVEL9K_MULTILINE_FIRST_PROMPT_PREFIX="%f"
# Visual customisation of the second prompt line
local user_symbol="$"
if [[ $(print -P "%#") =~ "#" ]]; then
    user_symbol = "#"
fi
POWERLEVEL9K_MULTILINE_LAST_PROMPT_PREFIX="%{%B%F{black}%K{yellow}%} $user_symbol%{%b%f%k%F{yellow}%} %{%f%}"
 
COMPLETION_WAITING_DOTS="true"

export FPATH=$HOME/usr/share/zsh/5.3/functions:$FPATH
export PATH="/usr/local/include:$PATH"
export PATH="$HOME/dev/bin:$PATH"
export PATH="$PATH:$HOME/npm/bin"
export NODE_PATH="$NODE_PATH:$HOME/npm/lib/node_modules"
 
export PATH="$HOME/go/bin:$PATH"
export HTTP_PROXY=http://localhost:3128
export http_proxy=http://localhost:3128
export HTTPS_PROXY=http://localhost:3128
export https_proxy=http://localhost:3128
export NODE_EXTRA_CA_CERTS=$HOME/anz-certificates/ANZ_Global_Root_CA_v2.pem
 
# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"
 
# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
                git
                zsh-autosuggestions
)
 
source $ZSH/oh-my-zsh.sh
 
# User configuration
 
export GOPATH=$HOME/dev
export GOBIN=$HOME/dev/bin
export PATH=$PATH:$GOBIN 
 
# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi
 
# Compilation flags
# export ARCHFLAGS="-arch x86_64"
 
# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh
alias l="exa --all --long --header --git --icons -s=type"
alias dev="cd ~/dev"
alias play="cd ~/dev/playground"
alias cd..="cd .."
alias nodeUpdate="ncu -u"
alias k="kubectl"
alias g="git"
alias st="git status"
alias gc="git checkout"
alias gb="git checkout -b "
alias m="git checkout master || git checkout main"
alias jamit="git add . && git commit --amend --no-edit && git push -f"
alias multipull="find . -mindepth 1 -maxdepth 1 -type d -print -exec git -C {} pull \;"
alias multipullmain="find . -mindepth 1 -maxdepth 1 -type d -exec git -C {} checkout main \; \
  -exec git -C {} pull \; \
  -exec figlet 'Main for : {}' \; \
"
alias multipullmaster="find . -mindepth 1 -maxdepth 1 -type d -exec git -C {} restore --staged . \; \
  -exec git -C {} checkout . \; \
  -exec git -C {} checkout master \; \
  -exec git -C {} pull \; \
  -exec figlet 'Master for : {}' \; \
"
alias multipullall="multipullmaster && multipullmain"
alias gp="git pull"
alias groan="echo '░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░
░░░░░░░░░░░░░░░░▄▄███▄▄▄░▄▄██▄░░░░░░░
░░░░░░░░░██▀███████████████▀▀▄█░░░░░░
░░░░░░░░█▀▄▀▀▄██████████████▄░░█░░░░░
░░░░░░░█▀▀░▄██████████████▄█▀░░▀▄░░░░
░░░░░▄▀░░░▀▀▄████████████████▄░░░█░░░
░░░░░▀░░░░▄███▀░░███▄████░████░░░░▀▄░
░░░▄▀░░░░▄████░░▀▀░▀░░░░░░██░▀▄░░░░▀▄
░▄▀░░░░░▄▀▀██▀░░░░░▄░░▀▄░░██░░░▀▄░░░░
█░░░░░█▀░░░██▄░░░░░▀▀█▀░░░█░░░░░░█░░░
█░░░▄▀░░░░░░██░░░░░▀██▀░░█▀▄░░░░░░▀▀▀
▀▀▀▀░▄▄▄▄▄▄▀▀░█░░░░░░░░░▄█░░█▀▀▀▀▀█░░
░░░░█░░░▀▀░░░░░░▀▄░░░▄▄██░░░█░░░░░▀▄░
░░░░█░░░░░░░░░░░░█▄▀▀▀▀▀█░░░█░░░░░░█░
░░░░▀░░░░░░░░░░░░░▀░░░░▀░░░░▀░░░░░░░░
░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░
'"
#source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
 
# Cloud Setup
#source '/usr/local/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/path.zsh.inc'
#source '/usr/local/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/completion.zsh.inc'
 
anz-sandpit()
{
    export CLUSTER=anz-abt-sandpit-np-gke
    export GCP_PROJECT=anz-abt-sandpit-np-d0fe24
    echo | gcloud config configurations activate anz-sandpit
    echo | k config use-context gke_anz-abt-sandpit-np-d0fe24_australia-southeast1_anz-abt-sandpit-np-gke
    while getopts ":n:" opt; do
        case $opt in
            n)
                echo | k config set-context gke_anz-abt-sandpit-np-d0fe24_australia-southeast1_anz-abt-sandpit-np-gke --namespace=$OPTARG
                ;;
        esac
    done
   setcert
}
 
setcert ()
{
    sed -i .bak 's/certificate-authority-data.*/insecure-skip-tls-verify\: true/' ${KUBECONFIG}
    rm -f ${KUBECONFIG}.bak
}
 
export NVM_DIR="$HOME/.nvm"
  [ -s "/usr/local/opt/nvm/nvm.sh" ] && . "/usr/local/opt/nvm/nvm.sh"  # This loads nvm
  [ -s "/usr/local/opt/nvm/etc/bash_completion" ] && . "/usr/local/opt/nvm/etc/bash_completion"  # This loads nvm bash_completion


# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/burkeb1/dev/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/burkeb1/dev/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/burkeb1/dev/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/burkeb1/dev/google-cloud-sdk/completion.zsh.inc'; fi
