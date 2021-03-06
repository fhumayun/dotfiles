##############
#   zshenv   #
##############

# select your umask
export UMASK="0077"

# GOlang
export GOPATH="${HOME}/.go"
export GOBIN="${GOPATH}/bin"

# Skip the not really helping Ubuntu global compinit
skip_global_compinit=1

###################################################################################
# plugin settings (settings down before the plugins are loaded)
###################################################################################

# dot env 
export ZSH_DOTENV_PROMPT=false # load .env file without asking


#############################################################
# local settings to override
##############################################################
[[ -f ${HOME}/.zshenv.local ]] && source ${HOME}/.zshenv.local

# Aliases
alias ll='ls -l'
alias la='ls -A'
alias l='ls -CF'