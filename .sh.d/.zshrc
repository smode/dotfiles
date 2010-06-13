# ---- language-env DON'T MODIFY THIS LINE!
# ----- ๅบๆฌ็ใช่จญๅฎ -----
# XIM ใตใผใใผใฎๅๅใๅฎ็พฉใใ
# (XIM ใฏใlanguge-env ใ ใใงไฝฟใใทใงใซๅคๆฐใงใ)
XIM=skkinput

JLESSCHARSET=utf-8
LANG=ja_JP.UTF-8
LV=-Ou8

SHELL=/bin/zsh

export XIM
export LANG
export JLESSCHARSET
export LV
export SHELL

umask 022

# Colored listings
if test -x /usr/bin/dircolors ; then
  if test -f $HOME/.dir_colors ; then
    eval "`direcolors -b $HOME/.dir_colors`"
  elif test -f /etc/DIR_COLORS ; then
    eval "`dircolors -b /etc/DIR_COLORS`"
  fi
fi
LS_OPTIONS=--color=tty
LS_OPTIONS="-N $LS_OPTIONS -T 0"

#Emacs shell mode
if test "$EMACS" = "t" ; then
  LS_OPTIONS='-N --color=none -T 0';
  test -I -Q
  stty coocked pass8 dec nl -echo
fi

export LS_OPTIONS

# zsh line editing
: ${ZSHEDIT:="emacs"}
: ${TERM:=linux}

if [[ "$ZSHEDIT" == "vi" ]] then
    bindkey    -v
else
    bindkey    -e
    bindkey    "^[ "	magic-space
    bindkey    "^[!"	expand-history
fi

# Environment
HISTSIZE=65536
HISTFILE=${HOME}/.sh.d/.zsh_history
SAVEHIST=65536

# Prompt on the right side. zsh feature
# RPROMPT="[%T]"

# Set/unset  shell options
setopt   globdots nocorrect pushdtohome autolist nopromptcr
setopt   nocorrectall autocd recexact longlistjobs autoresume
setopt   histignoredups pushdsilent appendhistory histexpiredupsfirst
setopt   autopushd pushdminus extendedglob rcquotes
unsetopt bgnice autoparamslash hup

# Setup some basic programmable completions.  To see more examples
# of these, check out /usr/doc/packages/zsh/compctl-examples.
# You you have a slow machine, you might want to comment the lines below
# with compctl in, and comment the below two lines out.
#
# compctl -g '*(-/)' cd pushd
# compctl -g '*(/)' rmdir dircmp
# compctl -j -P % -x 's[-] p[1]' -k signals -- kill
# compctl -j -P % fg bg wait jobs disown
# compctl -A shift
# compctl -caF type whence which
# compctl -F unfunction
# compctl -a unalias
# compctl -v unset typeset declare vared readonly export integer
# compctl -e disable
# compctl -d enable
#
# The default way is the usage of the zsh built-in completer
# Comment the two below lines out, if you are on a slow machine, and
# comment the above compctl lines in.

autoload -U compinit
compinit -u

# Completion so "cd ..<TAB>" -> "cd ../"
# zstyle ':completion:*' special-dirs ..

# Online help
unalias  run-help 2>/dev/null || true
autoload run-help

# Don't use zsh builtin which
alias which >/dev/null && unalias which

# Common standard keypad and cursor
bindkey    "^[[2~"		yank
bindkey    "^[[3~"		delete-char

# History completion on pgup and pgdown
autoload -U history-search-end
zle -N history-beginning-search-backward-end history-search-end
zle -N history-beginning-search-forward-end history-search-end
bindkey "^[[5~" history-beginning-search-backward-end
bindkey "^[[6~" history-beginning-search-forward-end



