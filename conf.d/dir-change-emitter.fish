function __dir_change_emitter --on-variable dirprev
    set --local dir $dirprev[(count $dirprev)]
    if test ! "$previous_dir" = "$dir"
        set -g previous_dir $dir
        emit dir_change $previous_dir (pwd)
    end
end
