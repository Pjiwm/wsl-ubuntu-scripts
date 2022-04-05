# navigation aliases
alias dev='cd ~/dev/'
alias home='cd ~/'
alias win_desktop='cd /mnt/c/Users/PMhol/Desktop'
alias win_desk=win_desktop
alias wdesk=win_desk
alias desktop=win_desk
alias win_c='cd /mnt/c'
alias win_downloads='cd /mnt/c/Users/PMhol/Downloads'
alias win_down=win_downloads
alias cdrive='win_c'
alias win_d='cd /mnt/d'
alias ddrive='win_d'

#alias for alias
alias alias_reload='source ~/.bash_aliases; echo reloaded aliases'
alias a_rel='alias_reload'
alias arl='a_rel'
alias rla='arl'
alias open_alias='sudo nano ~/.bash_aliases'

#projects
alias prog4='dev; cd programmeren-4-nodejs/nodejs-samen-eten-server-avans/; code .'
alias pi='ssh pi@raspberrypi.local'


#shortcuts


# docker
# create docker-compose.ynl and dockerfile in project folder
alias dpo='f() { 
    if [ $1 != 0 ]; 
    then 
    mkdir -p "$1"; 
    cd "$1"; 
    touch dockerfile; 
    touch docker-compose.yml; 
    code .
    else
    echo "docker project create: cannot create project folder without name"
    fi
    unset -f f; 
    }; f'

#docker-compose
alias dcu='docker-compose up'
alias dcb='docker-compose build'
#exec
alias dexec='f() {
    docker exec -it "$1" /bin/sh 
};'

#git
alias git_clear_dev="git branch --merged dev | grep -v '^[ *]*dev$' | xargs"

# WSL 2 - free up memory
alias drop_cache="sudo sh -c \"echo 3 >'/proc/sys/vm/drop_caches' && swapoff -a && swapon -a && printf '\n%s\n' 'Ram-cache and Swap Cleared'\""

# open software 
alias chrome='cd /mnt/c && cmd.exe "/c start chrome" && cd - > /dev/null 2>&1'
alias discord='cd /mnt/c && cmd.exe "/c start "C:\\Users\\PMhol\\AppData\\Local\\Discord\\Update.exe" --processStart Discord.exe" && cd - > /dev/null 2>&1'
alias photoshop='cd /mnt/c && cmd.exe "/c cd C:\ &&  start "C:\\Program Files\\Adobe\\Adobe Photoshop 2020\\photoshop.exe"" && cd - > /dev/null 2>&1'
alias teams='cd /mnt/c cmd.exe "/c cd C:\ && start C:\\Users\PMhol\\AppData\\Local\\Microsoft\\Teams\\Update.exe --processStart "Teams.exe"" && cd - > /dev/null 2>&1'
# linux software with gwsl
alias intellij='f() {
cd /opt/idea-IU-212.5080.55/bin/;
./idea.sh;
}; f'

#github tree
alias git-tree='git log --oneline --graph --decorate --all'
