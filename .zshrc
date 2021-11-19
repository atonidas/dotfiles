# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

alias wgdown='/home/lgc/scripts/wgdown'
alias wgup='/home/lgc/scripts/wgup'
alias turnon='/home/lgc/scripts/turnon'

alias list='echo -e "\n$(grep DONE /home/lgc/list | wc -l) / $(cat /home/lgc/list | wc -l) complete" > /tmp/listNumber; cat /home/lgc/list /tmp/listNumber | grep -v DONE | bat; rm /tmp/listNumber'
alias listEdit='vim /home/lgc/list'

alias logoff='bspc quit'

alias ls='ls --color=auto'

source /usr/share/zsh-theme-powerlevel10k/powerlevel10k.zsh-theme

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh

#Configure bindkeys for using arrows and supr keys
bindkey "^[[1;5D" backward-word
bindkey "^[[1;5C" forward-word
bindkey "^[[3~" delete-char

ZSH_THEME="powerlevel10k/powerlevel10k"

PATH="/home/lgc/perl5/bin${PATH:+:${PATH}}"; export PATH;
PERL5LIB="/home/lgc/perl5/lib/perl5${PERL5LIB:+:${PERL5LIB}}"; export PERL5LIB;
PERL_LOCAL_LIB_ROOT="/home/lgc/perl5${PERL_LOCAL_LIB_ROOT:+:${PERL_LOCAL_LIB_ROOT}}"; export PERL_LOCAL_LIB_ROOT;
PERL_MB_OPT="--install_base \"/home/lgc/perl5\""; export PERL_MB_OPT;
PERL_MM_OPT="INSTALL_BASE=/home/lgc/perl5"; export PERL_MM_OPT;
