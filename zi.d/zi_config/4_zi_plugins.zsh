##############################################################################################################
#                                                                                                            #
#                                                Load Plugins                                                #
# plagin list:
# Use meta-plugins to install common annexes as a group:
# =====================================================
# - z-shell/z-a-meta-plugins
#   - @annexes+
#   - @zsh-users+fast
#   - @z-shell SKIP: H-S-MW
#   - @fuzzy
#   - @romkatv
#   - @console-tools
# =====================================================
# - jeffreytse/zsh-vi-mode # zsh vi 模式
# - z-shell/H-S-MW         # 替换 ~cantino/mcfly~ ## 历史命令搜索
# - z-shell/zsh-zoxide     # 历史路径跳转
# =====================================================

# meta Plugins
# ## https://wiki.zshell.dev/zh-Hans/ecosystem/annexes/meta-plugins
# zi 中受到支持的多数插件以关联的实用工具链的形式成组提供 meta 包
# =====================================================
zi light-mode for \
  z-shell/z-a-meta-plugins \
  @annexes+ \
  @zsh-users+fast \
  skip'H-S-MW' @z-shell \
  @fuzzy \
  @romkatv \
  @console-tools
  #skip'F-Sy-H' @z-shell \

# zsh-vi-mode
# ## https://github.com/jeffreytse/zsh-vi-mode
zi ice depth=1;zi light jeffreytse/zsh-vi-mode     # ## zsh-vi-mode

# zoxide
zi has'zoxide' wait lucid for z-shell/zsh-zoxide   # ## 需要 zoxide 二进制文件, 如果存在则加载

#  H-S-MW
# ## https://github.com/z-shell/H-S-MW
zi ice wait lucid; zi light z-shell/H-S-MW

