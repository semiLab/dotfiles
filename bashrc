
month=`date +%m`

if (( $month > 10 || $month < 3 )); then
	symbol="\[\033[01;37m\]❄"
elif (( $month < 6 )); then
	symbol='\[\033[38;5;28m\]'
elif (( $month > 8 )); then
	symbol='\[\033[38;5;3m\]'
else
	symbol='\[\033[38;5;220m\]☀'
fi



LOCALE=UTF-8
PS1="${debian_chroot:+($debian_chroot)}\[\033[01;34m\]\u\[\033[01;30m\]@\[\033[01;36m\]\h\[\033[01;32m\] \w ${symbol} \[\033[00m\]"

alias l='ls -l'
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"
export PATH="$HOME/.rbenv/plugins/ruby-build/bin:$PATH"
