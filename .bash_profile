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

# don't put duplicate lines or lines starting with space in the history.
# See bash(1) for more options
HISTCONTROL=ignoreboth

# append to the history file, don't overwrite it
shopt -s histappend

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=1000
HISTFILESIZE=2000

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# If set, the pattern "**" used in a pathname expansion context will
# match all files and zero or more directories and subdirectories.
#shopt -s globstar

# make less more friendly for non-text input files, see lesspipe(1)
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

# set a fancy prompt (non-color, unless we know we "want" color)
case "$TERM" in
    xterm-color) color_prompt=no;;
esac

# uncomment for a colored prompt, if the terminal has the capability; turned
# off by default to not distract the user: the focus in a terminal window
# should be on the output of commands, not on the prompt
#force_color_prompt=yes

if [ -n "$force_color_prompt" ]; then
    if [ -x /usr/bin/tput ] && tput setaf 1 >&/dev/null; then
	# We have color support; assume it's compliant with Ecma-48
	# (ISO/IEC-6429). (Lack of such support is extremely rare, and such
	# a case would tend to support setf rather than setaf.)
	color_prompt=yes
    else
	color_prompt=
    fi
fi

if [ "$color_prompt" = yes ]; then
    PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '
else
    PS1='${debian_chroot:+($debian_chroot)}\u:\w\$ '
fi
unset color_prompt force_color_prompt

# If this is an xterm set the title to user@host:dir
export PS1="\W\$ "
case "$TERM" in
xterm*|rxvt*)
    PS1="\[\e]0;${debian_chroot:+($debian_chroot)}\u@\h \w\a\]$PS1"
    ;;
*)
    ;;
esac

# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    alias dir='dir --color=auto'
    alias vdir='vdir --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

# some more ls aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

# page through partial history
bind '"\e[A": history-search-backward'
bind '"\e[B": history-search-forward'
# Use ctrl with left and right arrow to jump entire words on the command line
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
#export LS_COLORS='no=00:fi=00:di=01;34:ln=01;36:pi=40;33:so=01;35:bd=40;33;01:cd=40;33;01:or=01;05;37;41:mi=01;05;37;41:ex=01;32:*.cmd=01;32:*.exe=01;32:*.com=01;32:*.btm=01;32:*.bat=01;32:*.sh=01;32:*.csh=01;32:*.tar=01;31:*.tgz=01;31:*.arj=01;31:*.taz=01;31:*.lzh=01;31:*.zip=01;31:*.z=01;31:*.Z=01;31:*.gz=01;31:*.bz2=01;31:*.bz=01;31:*.tz=01;31:*.rpm=01;31:*.cpio=01;31:*.jpg=01;35:*.gif=01;35:*.bmp=01;35:*.xbm=01;35:*.xpm=01;35:*.png=01;35:*.tif=01;35:'

############################################################################################

# For Latex Commands in the shell
alias ltx='pdflatex'
alias bibltx='pdflatex && biber && pdflatex'


############################################################################################
#export PATH="/Library/Frameworks/Python.framework/Versions/2.7/bin:${PATH}"

export PATH="/usr/local/git/bin:/sw/bin/:/usr/local/bin:/usr/local/:/usr/local/sbin:/usr/local/mysql/bin:$PATH"
# add for MPAS
export PATH=/Users/benhills/Software/MPAS-Tools/visualization/mpas_draw:$PATH
alias draw='MpasDraw.x'
# added for Elmer installation
export PATH="/usr/local/Cellar/elmer/HEAD-2f2626c/bin:$PATH"
# added by Anaconda3 installer
export PATH="/Users/benhills/anaconda3/bin:$PATH"  # commented out by conda initialize  # commented out by conda initialize
# add python path
export PYTHONPATH="/Users/benhills/Software/MyGitRepos/TemperatureModels/:$PYTHONPATH"
export PYTHONPATH="/Users/benhills/Software/MyGitRepos/RadarScripts/:$PYTHONPATH"
export PYTHONPATH="/Users/benhills/Software/MyGitRepos/CylindricalStefan/cylindricalstefan/lib/:$PYTHONPATH"
export PYTHONPATH="/Users/benhills/Software/MyGitRepos/MappingTools/:$PYTHONPATH"
export PYTHONPATH="/Users/benhills/Software/MyGitRepos/IceFlow/:$PYTHONPATH"
export PYTHONPATH="/Users/benhills/Software/MyGitRepos/FractureMechanics/:$PYTHONPATH"
export PYTHONPATH="/Users/benhills/Software/MyGitRepos/iceotherm/iceotherm/lib/:$PYTHONPATH"
export PYTHONPATH="/Users/benhills/Software/MyGitRepos/EffectiveMedium/:$PYTHONPATH"
# added for spyder startup
export EVENT_NOKQUEUE=1

# for gmt
export DYLD_LIBRARY_PATH=/usr/local/opt/hdf5/lib/libhdf5.103.dylib
# add for seisunix make
export CWPROOT=/Users/benhills/Software/SeisUnix
export PATH=$PATH:$CWPROOT/bin:
# for teqc
alias teqc='/Users/benhills/Software/teqc'
# for runpkr00
alias runpkr00='/Users/benhills/Software/runpkr00-MountainLion-i386-5.40'
# for gamit
export PATH="/Users/benhills/Software/gamit_globk/updates/source/com/:$PATH"
export PATH="/Users/benhills/Software/gamit_globk/updates/source/gamit/bin/:$PATH"
export PATH="/Users/benhills/Software/gamit_globk/updates/source/kf/bin/:$PATH"
export HELP_DIR="/Users/benhills/Software/gamit_globk/updates/source/help/"
alias gg='/Users/benhills/Software/gamit_globk'
# for SeidarT
export PATH="/Users/benhills/Software/SeidarT/bin/:$PATH"
export PYTHONPATH="/Users/benhills/Software/SeidarT/bin/:$PYTHONPATH"
# for ICESat-2
export PYTHONPATH="/Users/benhills/Software/read-ICESat-2/icesat2_toolkit/:$PYTHONPATH"
# for GMSH
alias gmsh='/Applications/Gmsh.app/Contents/MacOS/gmsh'

# delete duplicate PATH entries
PATH=$(printf "%s" "$PATH" | awk -v RS=':' '!a[$1]++ { if (NR > 1) printf RS; printf $1 }')

# Homebrew path
eval "$(/opt/homebrew/bin/brew shellenv)"

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/Users/benhills/anaconda3/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/Users/benhills/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/Users/benhills/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/Users/benhills/anaconda3/bin:$PATH"
    fi
fi
#unset __conda_setup
# <<< conda initialize <<<

# ssh aliases
alias boodle="ssh -p 1212 -i ~/.ssh/boodle_key boodle@192.168.0.7"
alias boodleremote="ssh -p 1212 -i ~/.ssh/boodle_key boodle@boodle.hopto.org"
alias noodle="ssh -p 2222 -i ~/.ssh/noodle_key ubuntu@192.168.0.8"
alias noodleremote="ssh -p 2222 -i ~/.ssh/noodle_key ubuntu@boodle.hopto.org"
alias chuck="ssh -p 2323 -i ~/.ssh/chuck_key ubuntu@192.168.0.24"
alias chuckremote="ssh -p 2323 -i ~/.ssh/chuck_key ubuntu@boodle.hopto.org"
# Loki Aliases
alias loki="ssh -o 'IdentitiesOnly yes' -Y bhills@loki.ess.washington.edu"
alias cploki='scp -P 27777 bhills@icehouse.ess.washington.edu:'

