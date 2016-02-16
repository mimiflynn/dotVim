# dotvim

My personal vim config files.

I've currently switched over to the 'tried and true' [SPF13-vim](https://github.com/spf13/spf13-vim) settings, so I've included the `.local` files for such applications.

## Installation

Install SPF13-VIM.

Clone into `.dotvim` into your home directory and symlink the `.vimrc.local` and `.gvimrc.local` files to your home directory like so:

```bash
cd ~/

npm install -g eslint
npm install -g babel-eslint
npm install -g eslint-plugin-react
npm install -g syntastic-react
npm install -g jshint

git clone git@github.com:mimiflynn/dotVim.git .dotVim
ln -s .dotVim/vimrc.local .vimrc.local
ln -s .dotVim/vimrc.bundle.local .vimrc.bundle.local
ln -s .dotVim/gvimrc .gvimrc
```

