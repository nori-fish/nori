function _nori_remove_path
    for to_remove in $argv
        if set --local index (contains --index $to_remove $fish_user_paths)
            echo "Removing $to_remove from fish_user_paths[$index]"
            set --erase --universal fish_user_paths[$index]
        else if set --local index (contains --index $to_remove $PATH)
            echo "Cannot remove $to_remove from PATH; it is being set somewhere else"
        end
    end
end
