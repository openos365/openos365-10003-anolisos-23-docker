# less initialization script (sh)

if [ -z "$LESSOPEN" ] && [ -x /usr/bin/lesspipe.sh ]; then
        # Make a filter for less
        export LESSCHARSET="${LESSCHARSET:-utf-8}"
        export LESSOPEN="|/usr/bin/lesspipe.sh %s"
fi
