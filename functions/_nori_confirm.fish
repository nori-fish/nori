function _nori_confirm --argument-names prompt_message default_response
    if [ -z "$default_response" ]
        set --function default_response y
    else
        set --function default_response (string lower $default_response)
    end

    if status is-interactive
        if [ -z "$prompt_message" ]
            set --function prompt_message "Continue?"
        end

        set --function prompt_options (echo "y/n" | sed -e "s#$default_response#"(string upper $default_response)"#")
        set --function prompt "$prompt_message [$prompt_options]: "

        read --nchars 1 --prompt-str "$prompt" --function response
        or return 1
    end

    and if [ -z "$response" ]
        set --function response $default_response
    end

    test (string lower $response) = y
end
