function get_c_host {
	echo ' '$HOST | sed s/.local//
}

autoload -U add-zsh-hook
add-zsh-hook chpwd update_prompt
add-zsh-hook zshaddhistory update_prompt
add-zsh-hook precmd update_prompt

function update_prompt() {
	PROMPT="%{$fg[magenta]%}>%{$reset_color%} "
	RPROMPT="%{$fg[cyan]%}%~%{$reset_color%}%{$fg[green]%}$(git_prompt_info)%{$reset_color%}%{$fg[black]%}@%{$reset_color%}%{$fg[magenta]%}%$(get_c_host)%{$reset_color%}"

	ZSH_THEME_GIT_PROMPT_DIRTY="%{$reset_color%}%{$fg[yellow]%}*"
	ZSH_THEME_GIT_PROMPT_PREFIX="%{$reset_color%}%{$fg[black]%}(%{$reset_color%}%{$fg[green]%}"
	ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}%{$fg[black]%})%{$reset_color%}"
}

update_prompt
