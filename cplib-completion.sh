_codeComplete()
{
    local cur=${COMP_WORDS[COMP_CWORD]}
    COMPREPLY=( $(compgen -W "$(ls /home/dherrada/adafruit/bundle/lib/)" -- $cur) )
}

complete -F _codeComplete cplib
