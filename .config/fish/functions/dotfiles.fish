function dotfiles --wraps 'git'
  /usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME $argv
end
