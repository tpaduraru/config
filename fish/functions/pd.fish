function pd
    if test (count $argv) -eq 0
        popd
    else
        pushd $argv[1]
    end
end
