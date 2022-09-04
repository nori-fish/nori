function _nori_install --on-event nori_install --on-event nori_update
    if not set --query NORI_REMOTE
        set --universal --export NORI_REMOTE nori-fish
    end

    if test -d $NORI_REMOTE
        set --function NORI_REMOTE_PLUGINS (echo $NORI_REMOTE/* | string split ' ' | path basename | grep -v nori)
    else
        set --function NORI_REMOTE_PLUGINS (_nori_remote_plugins)
    end

    for plugin in $NORI_REMOTE_PLUGINS
        _nori_wrap $plugin
    end
end

function _nori_uninstall --on-event nori_uninstall
    for plugin in _nori_list
        _nori_remove $plugin
        functions --erase $plugin
    end
    set --universal --erase NORI_REMOTE
end
