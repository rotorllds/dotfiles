function fish_prompt -d "Write out the prompt"
    # This shows up as USER@HOST /home/user/ >, with the directory colored
    # $USER and $hostname are set by fish, so you can just use them
    # instead of using `whoami` and `hostname`
    printf '%s@%s %s%s%s > ' $USER $hostname \
        (set_color $fish_color_cwd) (prompt_pwd) (set_color normal)
end

if status is-interactive
    # Commands to run in interactive sessions can go here
    set fish_greeting

end

starship init fish | source
if test -f ~/.cache/ags/user/generated/terminal/sequences.txt
    cat ~/.cache/ags/user/generated/terminal/sequences.txt
end

alias grep="grep --color=auto"

alias ls="lsd"
alias la="lsd -A"
alias lla='lsd -la'
alias ll='lsd -l'
alias l='lsd -CF'

alias doc='cd ~/Documents'
alias dl='cd ~/Downloads'
alias bups='cd ~/.backups'
alias msd='cd /run/media/ampharos/msd'
alias conf='cd ~/.config'

alias hlogout='hyprctl dispatch exit'
alias hconf='nvim ~/.config/hypr/hyprland.conf'

alias vi='nvim'
alias vim='nvim'
alias n='nvim'
alias nv='nvim'

alias off='shutdown now'
alias rs='shutdown -r now'

alias cat='bat'

alias whoami='whoami && curl ident.me'

alias dfg='git --git-dir=$DFP/ --work-tree=$HOME'
# function fish_prompt
#   set_color cyan; echo (pwd)
#   set_color green; echo '> '
# end

thefuck --alias | source
