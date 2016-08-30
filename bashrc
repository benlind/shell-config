# -*- mode: Shell-script -*-

. ~/.shell/aliases
. ~/.shell/functions
. ~/.shell/variables
. ~/.shell/prompt

# Print fortune on new shell
if [ `which fortune` ]; then
    echo ""
    fortune
    echo ""
fi
