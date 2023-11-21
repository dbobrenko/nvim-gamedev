#!/bin/bash
NVIM_SOCKET="/tmp/nvimsocket"

# Check if /usr/local/bin is not in PATH.
if [[ ":$PATH:" != *":/usr/local/bin:"* ]]; then
    export PATH="$PATH:/usr/local/bin"
fi

NVIM_RUNNING=$(nvr --serverlist | grep -c "$NVIM_SOCKET")
if [ "$NVIM_RUNNING" -gt 0 ]; then
    # NeoVim is running, opening the file.
    nvr --servername "$NVIM_SOCKET" --remote "$@"
else 
    # Start a new NeoVim session in a new iTerm2 tab.
    osascript <<EOF
tell application "iTerm"
    activate
    try
        tell current window
            create tab with default profile
        end tell
    on error
        create window with default profile
    end try
    tell the current session of the current tab of the current window
        write text "nvim --listen \"$NVIM_SOCKET\" $@"
    end tell
end tell
EOF
fi
