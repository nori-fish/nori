function _nori_update
    if not test "$argv"
        set --function argv (_nori_list)
    end

    fisher update $NORI_REMOTE/nori
    for plugin in $argv
        fisher update $NORI_REMOTE/$plugin
    end
end
