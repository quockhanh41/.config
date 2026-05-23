#!/bin/zsh

# Tmux startup script

# Function to start or attach tmux session
tmux_start() {
    if [ -z "$1" ]; then
        session_name="main"
    else
        session_name="$1"
    fi
    
    if tmux has-session -t "$session_name" 2>/dev/null; then
        echo "Attaching to existing session: $session_name"
        tmux attach-session -t "$session_name"
    else
        echo "Creating new session: $session_name"
        tmux new-session -s "$session_name"
    fi
}

# Function to kill tmux session
tmux_kill() {
    if [ -z "$1" ]; then
        echo "Usage: tmux_kill <session_name>"
        return 1
    fi
    
    tmux kill-session -t "$1"
    echo "Killed session: $1"
}

# Function to list tmux sessions
tmux_list() {
    echo "Active tmux sessions:"
    tmux list-sessions 2>/dev/null || echo "No active sessions"
}

# Aliases
alias tm="tmux_start"
alias tkill="tmux_kill"
alias tls="tmux_list"
alias ta="tmux attach-session -t"
alias tn="tmux new-session -s"

# Auto-start tmux for new shells (optional - uncomment if desired)
# if command -v tmux &> /dev/null && [ -z "$TMUX" ] && [ -z "$TERM_PROGRAM" ]; then
#     tmux_start
# fi