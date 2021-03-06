alias sudo='sudo '
alias bashrc='vim ~/.bash_aliases && source ~/.bashrc'
alias vim='nvim'
alias v='nvim'

alias bfg='java -jar /opt/bfg/bfg-1.12.16.jar'
alias ga='git add'
alias gc='git commit'
alias gs='git status'

alias cd..='cd ..'
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'
alias ......='cd ../../../../..'

alias js='cd ~/Code/js/'
alias jv='cd ~/Code/java/'
alias c='cd ~/Code/c/'
alias cc='cd ~/Code/cpp/'
alias py='cd ~/Code/python'
alias hs='cd ~/Code/haskell'
alias rs='cd ~/Code/rust'
alias other='cd ~/Code/other/'
alias dwn='cd ~/Downloads/'
alias doc='cd ~/Documents/'

alias monStart='sudo service mongod start'
alias monStop='sudo service mongod stop'
alias monRestart='sudo service mongod restart'

alias sqlStart='sudo service mysql start'
alias sqlStop='sudo service mysql stop'
alias sqlRestart='sudo service mysql restart'

alias redStart='/etc/init.d/redis-server start'
alias redStop='/etc/init.d/redis-server stop'
alias redRestart='/etc/init.d/redis-server restart'

alias psgStart='/etc/init.d/postgresql start'
alias psgStop='/etc/init.d/postgresql stop'

alias docStart='sudo systemctl start docker'
alias docStop='sudo systemctl stop docker'

alias elsStart='sudo systemctl start elasticsearch.service'
alias elsStatus='sudo systemctl status elasticsearch.service'
alias elsStop='sudo systemctl stop elasticsearch.service'

alias ni='npm install'
alias ns='npm run start'
alias nt='npm run test'
alias createReact='create-react-app'
alias createTypeReact='create-react-app --scripts-version=react-scripts-ts'

alias status="elsStatus"
alias stopAll='sudo -- sh -c "service mongod stop; service mysql stop; /etc/init.d/redis-server stop; /etc/init.d/postgresql stop; systemctl stop docker; systemctl stop elasticsearch.service"'


alias df='df -Tha --total'
alias du='du -ach | sort -h'
alias free='free -mt'
alias ps='ps auxf'

alias trkStop='xinput --set-prop "SynPS/2 Synaptics TouchPad" "Device Enabled" 0'
alias trkStart='xinput --set-prop "SynPS/2 Synaptics TouchPad" "Device Enabled" 1'

alias snap="byzanz-record -d 10 --delay=2 -x 0 -y 0 -w 1920 -h 1080 ~/Desktop/desktop-animation.gif"

alias screen='brightness-controller'
alias sound='alsamixer'

# Netstat
alias ports='netstat -tulanp'

# Wget
alias wget='wget -c'

# Browsers
alias chrome='/opt/google/chrome/chrome'
alias browser=chrome

# Typos
alias clera='clear'
alias claer='clear'

# Recursively remove .DS_Store files
alias cleanupds="find . -type f -name '*.DS_Store' -ls -delete"

alias dotfiles="/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME"

# Rust
alias cb='cargo build'
alias cr='cargo run'
alias ct='cargo test'

alias firefox='(/opt/firefox/firefox &) && exit'

# Backup
alias backup='rsync --archive \
      --delete \
      --progress \
      --human-readable \
      --exclude node_modules \
      --exclude .DS_Store \
      --exclude .meteor/local \
      ~/Code \
      ~/Desktop \
      ~/Documents \
      ~/Videos \
      ~/Music \
      ~/Pictures \
      /media/m/Seagate\ Backup\ Plus\ Drive\
      | tee /media/m/Seagate Backup Plus Drive/backup.log'



function extract {
  if [ -z "$1" ]; then
    # display usage if no parameters given
    echo "Usage: extract <path/file_name>.<zip|rar|bz2|gz|tar|tbz2|tgz|Z|7z|xz|ex|tar.bz2|tar.gz|tar.xz>"
    echo "       extract <path/file_name_1.ext> [path/file_name_2.ext] [path/file_name_3.ext]"
    return 1
  else
    for n in $@
    do
      if [ -f "$n" ] ; then
          case "${n%,}" in
            *.tar.bz2|*.tar.gz|*.tar.xz|*.tbz2|*.tgz|*.txz|*.tar)
                         tar xvf "$n"       ;;
            *.lzma)      unlzma ./"$n"      ;;
            *.bz2)       bunzip2 ./"$n"     ;;
            *.rar)       unrar x -ad ./"$n" ;;
            *.gz)        gunzip ./"$n"      ;;
            *.zip)       unzip ./"$n"       ;;
            *.z)         uncompress ./"$n"  ;;
            *.7z|*.arj|*.cab|*.chm|*.deb|*.dmg|*.iso|*.lzh|*.msi|*.rpm|*.udf|*.wim|*.xar)
                         7z x ./"$n"        ;;
            *.xz)        unxz ./"$n"        ;;
            *.exe)       cabextract ./"$n"  ;;
            *)
                         echo "extract: '$n' - unknown archive method"
                         return 1
                         ;;
          esac
      else
          echo "'$n' - file does not exist"
          return 1
      fi
    done
  fi
}

if [ -f ~/.bash_private ]; then
  . ~/.bash_private
fi

PATH=/usr/bin/java:$PATH
export PATH
