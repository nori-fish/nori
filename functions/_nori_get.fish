function _nori_get
    if not test "$argv"
        echo "You must specify the name of a plugin to install"
        return 1
    end

    for plugin in $argv
        fisher install $NORI_REMOTE/$plugin
    end
end
