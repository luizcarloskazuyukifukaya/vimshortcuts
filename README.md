# vimshortcuts
This is a memo for the shortcuts and useful information related to vim on Macbook.

# Setup Instructions
## VIM
**0. Prerequisites**
- NPM is required, so install Node.js first
> - npm init
- (Copy package.json to $HOME)

**1. Install NPM packages**
> - npm install -g eslint
> - npm install --save-dev eslint-config-google
> - npm i -D prettier eslint-plugin-prettier eslint-config-prettier
> - npm install --save-dev jquery

**2. Install all VIM plugins**
- Copy .vimrm to the $HOME directory
- Launch vim (by typing vim command on the terminal)
- Execute the following command within vim to install the vim plugins with Plug-vim plugins manager
> - :PlugInstall
- Execute the following command within vim to install Coc.nvim extensions:
> - :CocInstall coc-tsserver coc-json coc-html coc-css
> - :CocInstall coc-pairs

**3. Configuration**
- Copy .eslintrc.js and .tern-project to $HOME

## vimium
- https://chrome.google.com/webstore/detail/vimium/dbepggeogbaibhgnhhndojpepiihcmeb?hl=en
- https://github.com/philc/vimium

# References
## vimrc tips
- https://qiita.com/_snow_narcissus/items/f1633ecc40814acca4cf
## wim-hybrid
- https://github.com/w0ng/vim-hybrid
- https://timreynolds.org/2013/05/26/configuring-vim-on-mac-os-x/
-https://gist.github.com/joegoggins/8482408

## Plugins
- https://qiita.com/mysticatea/items/f523dab04a25f617c87d
- https://medium.com/vim-drops/javascript-autocompletion-on-vim-4fea7f6934e2
- https://qiita.com/ritukiii/items/a28033b30d7681492c98
