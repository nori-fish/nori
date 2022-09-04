function nori --argument-names action plugin
    switch $action
        case list
            _nori_list $plugin
        case install
            _nori_get $plugin
        case update
            _nori_update $plugin
        case remove
            _nori_remove $argv[2..-1]
        case '*'
            echo "Usage: nori <command> [...plugins]"
            echo ""
            echo "Available commands:"
            echo "       nori list [...plugins]"
            echo "       nori install [...plugins]"
            echo "       nori update [...plugins]"
            echo "       nori remove [...plugins]"

            if test "$action" != help
                return 1
            end
    end
    or return 1
end
