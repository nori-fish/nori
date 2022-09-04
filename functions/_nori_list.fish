function _nori_list --argument-names plugin
    set --local pattern "^$NORI_REMOTE"
    test "$plugin"; and set --local pattern "$pattern/$plugin"
    echo $plugin / $pattern
    fisher list $pattern | grep -v nori | sed -e "s#^$NORI_REMOTE/##g"
end
