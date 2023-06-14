if status is-interactive
    function alias_command
        ! set -l cmd (type -fp $argv[2]) || alias $argv[1] "$prefix $cmd $argv[3..]"
    end

    alias_command ls lsd
    alias_command lg lazygit
    alias_command rm rm -I
    alias_command rm safe-rm -I
    [ "$TERM_PROGRAM" != WezTerm ] || prefix='TERM=wezterm' alias_command nvim nvim -p

    functions -e alias_command
end
