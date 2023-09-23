# less initialization script (csh)

# In case you are curious, the test for non-emptiness is not as easy as in
# Bourne shell.  This "eval" construct is probably inspired by Stack
# Overflow question 13343392.
if ( $?LESSOPEN && { eval 'test ! -z "$LESSOPEN"' } ) then
        :
else
        if ( -x /usr/bin/lesspipe.sh ) then
                if ! ( $?LESSCHARSET ) then
                        setenv LESSCHARSET utf-8
                endif
        endif
        # Make a filter for less
        setenv LESSOPEN "|/usr/bin/lesspipe.sh %s"
endif
