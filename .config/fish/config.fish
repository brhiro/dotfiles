if status is-interactive
    # Commands to run in interactive sessions can go here
end

# Change kitty background (border) when opening and exiting nvim
function nvim
	kitty @ set-background-opacity 1.0
	kitty @ set-colors background=#1e1e2e
	/usr/bin/nvim $argv
end

function nvim_exit --on-event fish_postexec
	set -gx neovim_running 0
	and pgrep -x -P $fish_pid nvim >/dev/null ; set -gx neovim_running $status

	if test $neovim_running -ne 0
		kitty @ set-background-opacity 0.7
		kitty @ set-colors background=#000000
	end
end
