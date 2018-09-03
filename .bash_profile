if [ -f ~/.bashrc ] ; then
. ~/.bashrc
fi

export PATH="/usr/local/bin:/usr/local/sbin:/bin:/usr/sbin:/sbin:/usr/X11/bin:$PATH:~/.roswell/bin"
export PATH=$HOME/.nodebrew/current/bin:$PATH
