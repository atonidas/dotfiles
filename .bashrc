alias wgdown='/home/lgc/scripts/wgdown'
alias wgup='/home/lgc/scripts/wgup'
alias turnon='/home/lgc/scripts/turnon'

alias list='echo -e "\n$(grep DONE /home/lgc/list | wc -l) / $(cat /home/lgc/list | wc -l) complete" > /tmp/listNumber; cat /home/lgc/list /tmp/listNumber | grep -v DONE | bat; rm /tmp/listNumber'
alias listEdit='vim /home/lgc/list'

alias logoff='bspc quit'
