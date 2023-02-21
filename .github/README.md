dotfiles for my minimal, barebones arch setup with i3

![image](https://user-images.githubusercontent.com/49073956/220308184-6723ce17-8f37-4f0f-b6bb-a8c42b9fc82a.png)

```
mkdir .dotfiles
git clone --bare https://github.com/brhiro/dotfiles.git $HOME/.dotfiles
alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
dotfiles config status.showUntrackedFiles no
dotfiles checkout
dotfiles submodule update --init
```
