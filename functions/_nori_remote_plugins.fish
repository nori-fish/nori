function _nori_remote_plugins
    curl -fs https://api.github.com/orgs/nori-fish/repos \
        | jq -r ".[] | select(.topics[] | contains(\"nori-plugin\")) | .name"
end
