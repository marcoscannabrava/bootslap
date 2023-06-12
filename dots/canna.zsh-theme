current_time() {
   echo "%{$fg[white]%}%*%{$reset_color%}"
}

PROMPT='$(current_time) %{%B$FG[202]%}%c%f $(git_prompt_info)'
PROMPT+="
    %{$fg_bold[green]%}⤷ %b"

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg_bold[blue]%}(%{$fg[red]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%} "
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[blue]%}) %{$fg[yellow]%}✗"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[blue]%})"
