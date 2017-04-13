# /home/user/.bash_aliases
#
# default UBUNTU
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'
alias l='ls -CF'
alias la='ls -A'
alias ll='ls -alF'
alias ls='ls --color=auto'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'
alias grep='grep --color=auto'
#
alias editalias='nano ~/.bash_aliases && reloadalias'
alias reloadalias='. ~/.bash_aliases'
alias editbash='nano ~/.bashrc'
alias snano='sudo nano'
#
# Keepalived
alias hacheck='ip addr sh eth0 | grep '\''inet '\'''
alias hastart=''
alias hastop=''
#
# NGINX aliases
alias ngbackup='tar -czf ~/nginx_backup/nginx-backup-$(date +%Y%m%d-%H%M%S).tgz /etc/nginx /home/adminuser/nginx && ll ~/nginx_backup/'
alias ngclear='sudo rm -rf /tmp/cache'
alias ngconf='sudo nano /etc/nginx/nginx.conf && ngtest'
alias ngdebug='tail -f /var/log/nginx/access_debug.log'
# See .bashrs for nginx_edit funciton
alias ngedit='nginx_edit'
alias ngerr='tail -f /var/log/nginx/error.log'
alias ngperf='tail -f /var/log/nginx/access_perf.log'
alias ngproxy='nano ~/nginx/nginx-proxypass && ngreload'
alias ngredirect='nano ~/nginx/nginx-redirect && ngreload'
alias ngreload='ngtest && sudo service nginx reload'
alias ngrestart='ngtest && ngstop && ngstart'
alias ngsize='sudo du /tmp/cache/ -h -d 0'
alias ngspider='sudo nano /etc/nginx/conf.d/spider-mapping.conf && ngtest'
alias ngstart='ngtest && sudo service nginx start'
alias ngstop='sudo service nginx stop'
alias ngtail='tail -f /var/log/nginx/access.log'
alias ngtest='sudo nginx -t'
alias ngupstream='sudo nano /etc/nginx/conf.d/upstream.conf && ngtest'
alias ngwww='cd /var/www/html'
#
# Web testing
alias webtest='xargs -n1 -P 10 curl -o /dev/null --silent --write-out "%{http_code};%{time_total};%{time_namelookup};%{time_connect};%{size_download};%{speed_download};%{url_effective};\n" < wwwbluk-sitelist | column -s ";" -t | grep -v "^200\|^301\|^302"'
