# dotvim

My personal vim config files.

I've currently switched over to the 'tried and true' [SPF13-vim](https://github.com/spf13/spf13-vim) settings, so I've included the `.local` files for such applications.

## Installation

Install SPF13-VIM.

Clone into `.dotvim` into your home directory and symlink the `.vimrc.local` and `.gvimrc.local` files to your home directory like so:

```bash
cd ~/
git clone git@github.com:mimiflynn/dotVim.git .dotVim
ln -s .dotVim/vimrc.local .vimrc.local
ln -s .dotVim/gvimrc.local .gvimrc.local
```

After symlinking, open up vim and run `:BundleInstall` to install Command-T and then go back to the terminal and `cd` your way into `.vim/Bundle/Command-t/` and run `rake make` to finish installation. This installation requires Ruby, gcc and such. Please refer to the [Command-T](https://github.com/wincent/Command-T) documentation if you run into any trouble.
