function _nori_remove
    if not test "$argv"
        echo "You must specify the name of a plugin to remove"
        return 1
    end

    for plugin in $argv
        fisher remove $NORI_REMOTE/$plugin
    end
end
