export PS1="\w: "

##########################################################################

### from https://natelandau.com/my-mac-osx-bash_profile/

alias cd..='cd ../'                         # Go back 1 directory level (for fast typers)
alias ..='cd ../'                           # Go back 1 directory level
alias ...='cd ../../'                       # Go back 2 directory levels
alias .3='cd ../../../'                     # Go back 3 directory levels
alias .4='cd ../../../../'                  # Go back 4 directory levels
alias .5='cd ../../../../../'               # Go back 5 directory levels
alias .6='cd ../../../../../../'            # Go back 6 directory levels
alias ~="cd ~"                              # ~:            Go Home
alias c='clear'                             # c:            Clear terminal display
alias which='type -all'                     # which:        Find executables

#   lr:  Full Recursive Directory Listing
#   ------------------------------------------
alias lr='ls -R | grep ":$" | sed -e '\''s/:$//'\'' -e '\''s/[^-][^\/]*\//--/g'\'' -e '\''s/^/   /'\'' -e '\''s/-/|/'\'' | less'

alias qfind="find . -name "                 # qfind:    Quickly search for file
ff () { /usr/bin/find . -name "$@" ; }      # ff:       Find file under the current directory
ffs () { /usr/bin/find . -name "$@"'*' ; }  # ffs:      Find file whose name starts with a given string
ffe () { /usr/bin/find . -name '*'"$@" ; }  # ffe:      Find file whose name ends with a given string

##########################################################################

### From Matt Hoffman

bind '"\e[A": history-search-backward'
bind '"\e[B": history-search-forward'
bind -r "\e[1;5C"
bind -r "\e[1;5D"
bind '"\e[1;5C":forward-word'
bind '"\e[1;5D":backward-word'
export SHELL=/bin/bash
export CLICOLOR=1
export TERM=xterm-color
export EDITOR=/usr/bin/vim
export HISTFILESIZE=200
export HISTSIZE=200
export LSCOLORS=Gxfxcxdxbxegedabagacad

############################################################################################

# For Latex Commands in the shell
alias ltx='pdflatex'
alias bibltx='pdflatex && biber && pdflatex'

############################################################################################
export PATH="/Library/Frameworks/Python.framework/Versions/2.7/bin:${PATH}"

export PATH="$PATH:/usr/local/bin/"
export PATH="/usr/local/git/bin:/sw/bin/:/usr/local/bin:/usr/local/:/usr/local/sbin:/usr/local/mysql/bin:$PATH"


# added by Anaconda2 4.4.0 installer
export PATH="/Users/new/anaconda3/bin:$PATH"
export LD_LIBRARY_PATH=/usr/lib:$LD_LIBRARY_PATH

# added for Elmer installation
export PATH="/usr/local/Cellar/elmer/HEAD-2f2626c/bin:$PATH"

# added for spyder startup
export EVENT_NOKQUEUE=1

# added by Anaconda2 installer
export PATH="/Users/benhills/anaconda2/bin:$PATH"
