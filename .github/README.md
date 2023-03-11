dotfiles for my arch setup with i3

![image](https://user-images.githubusercontent.com/49073956/221408769-68b97417-fa3b-4e68-8457-0825eb37d88a.png)
![image](https://user-images.githubusercontent.com/49073956/221408779-2e5b2a77-c24b-4b33-a222-45e66288fe57.png)


```
mkdir .dotfiles
git clone --bare https://github.com/brhiro/dotfiles.git $HOME/.dotfiles
alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
dotfiles config status.showUntrackedFiles no
dotfiles checkout
dotfiles submodule update --init
```
