_codeComplete()
{
    local cur=${COMP_WORDS[COMP_CWORD]}
    COMPREPLY=( $(compgen -W "$(ls $USER/adafruit/bundle/lib/)" -- $cur) )
}

complete -F _codeComplete cplib
