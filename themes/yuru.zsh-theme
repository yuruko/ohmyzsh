ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg_bold[green]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY=" %{$fg_bold[red]%}*%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_CLEAN=""

local git_branch='$(git_prompt_status)$(git_prompt_info)'

function update_prompt() {
	PROMPT="%{$fg_bold[cyan]%}%~%{$reset_color%} %{$fg_bold[magenta]%}$%{$reset_color%} "
	RPROMPT="${git_branch}"
}

update_prompt
