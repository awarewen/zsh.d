# ZSH_profiles
使用 ZI 插件管理器，由于配置比较另类请酌情取用。
fzf-tab fzf fd rg bat exa 等终端工具都通过 zi meta 插件包安装了，不通过包管理

# Jump Histpath 依赖于 zoxide
`yay -S zoxide`

# Configuare
- 将这些写入到 `~/.zshrc`
```
#                                                 ZSH Options                                                #
##############################################################################################################
# 设置历史保存的文件

HISTFILE=${HOME}/.histfile
if [[ -f ${HOME}/.zshhistfile || ! -f $HISTFILE ]]; then
  command touch $HISTFILE
fi
  HISTSIZE=10000
  SAVEHIST=10000
setopt autocd extendedglob
bindkey -v # vim keybind

#                                                 Load zinit                                                 #
##############################################################################################################

ZI_CONFIG=${XDG_CONFIG_HOME:-$HOME/.config/zsh.d/zi.d/zi_config}
for file in ${ZI_CONFIG}/**/*(.N)
do
    [ -x "$file" ] &&  . "$file"
done
```
