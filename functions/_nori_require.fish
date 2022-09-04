function _nori_require
    for plugin in $argv
        if not command --query $plugin
            _nori_confirm "Install $plugin?"
            or return 1
            _nori_get $plugin
        end
    end
end
