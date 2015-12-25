typeset -U path
path=(~/bin:/usr/local/sbin:/usr/local/bin:/usr/bin:/usr/lib/jvm/default/bin:/usr/bin/site_perl:/usr/bin/vendor_perl:/usr/bin/core_perl $path[@])

# sudo -e file, edits copy of file using normal privileges then overwrites original using sudo.
export SUDO_EDITOR=vim
# Use XDG_HOME configs only.
export RANGER_LOAD_DEFAULT_RC=FALSE
