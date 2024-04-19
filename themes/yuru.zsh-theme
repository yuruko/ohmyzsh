ZSH_THEME_GIT_PROMPT_PREFIX=""
ZSH_THEME_GIT_PROMPT_SUFFIX=""
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg_bold[red]%}*%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_CLEAN=""
local git_branch='$(git_prompt_status)$(git_prompt_info)'

function update_prompt() {
        PROMPT="%{$fg_bold[magenta]%}%~%{$reset_color%}$(git_prompt_info) "
        RPROMPT="${git_branch}"
}

update_prompt
