function _nori_list --argument-names plugin
    set --local pattern "^$NORI_REMOTE"
    if test "$plugin"
        set --local pattern "$pattern/$plugin"
    end
    fisher list $pattern | grep -v "$NORI_REMOTE/nori" | sed -e "s#^$NORI_REMOTE/##g"
end
