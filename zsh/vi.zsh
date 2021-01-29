bindkey -v
bindkey -M vicmd "h" vi-insert
bindkey -M vicmd "H" vi-insert-bol
bindkey -M vicmd "l" vi-forward-char
bindkey -M vicmd "j" vi-backward-char
bindkey -M vicmd "L" vi-end-of-line
bindkey -M vicmd "J" vi-beginning-of-line
bindkey -M vicmd "I" up-line-or-history
bindkey -M vicmd "k" down-line-or-history

function zle-keymap-select {
	if [[ ${KEYMAP} == vicmd  ]] || [[ $1 = 'block'  ]]; then
		echo -ne '\e[1 q'
	elif [[ ${KEYMAP} == main  ]] || [[ ${KEYMAP} == viins  ]] || [[ ${KEYMAP} = ''  ]] || [[ $1 = 'beam'  ]]; then
		echo -ne '\e[5 q'
	fi
}

zle -N zle-keymap-select
echo -ne '\e[5 q'
