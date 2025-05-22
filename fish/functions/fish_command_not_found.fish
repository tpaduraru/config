function fish_command_not_found
    if test -d $argv[1]
        pushd $argv[1]
    else
        echo "Unknown command: $argv[1]"
    end
end
