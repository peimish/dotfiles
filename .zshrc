#	
# Executes commands at the start of an interactive session.
#
# Authors: peimish

# 自動補完を有効にする
# コマンドの引数やパス名を途中まで入力して <Tab> を押すといい感じに補完してくれる
# 例： `cd path/to/<Tab>`, `ls -<Tab>`
autoload -U compinit; compinit

# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

# Customize to your needs...

if type brew &>/dev/null; then
FPATH=$(brew --prefix)/share/zsh/site-functions:$FPATH
fi
