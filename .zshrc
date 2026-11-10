# ~/.zshrc - Merged Configuration (Omarchy + akim-dotfiles + Rustacean environment)

# ==============================================================================
# Environment & Paths
# ==============================================================================
export PATH="$HOME/.local/bin:$HOME/.cargo/bin:$PATH"
export LD_LIBRARY_PATH="$HOME/.local/lib:$LD_LIBRARY_PATH"

# Load Cargo / Rust environment
[ -f "$HOME/.cargo/env" ] && . "$HOME/.cargo/env"
[ -f "$HOME/.local/share/../bin/env" ] && . "$HOME/.local/share/../bin/env"

# Apply dynamic pywal terminal palette if available
[ -f "$HOME/.cache/wal/sequences" ] && cat "$HOME/.cache/wal/sequences"

# ==============================================================================
# Oh My Zsh (if installed)
# ==============================================================================
export ZSH="$HOME/.oh-my-zsh"
if [ -d "$ZSH" ]; then
    ZSH_THEME="fishy"
    plugins=(git rust cargo sudo)
    [ -f "$ZSH/oh-my-zsh.sh" ] && source "$ZSH/oh-my-zsh.sh"
fi

# ==============================================================================
# Rustacean Developer Environment & Shortcuts
# ==============================================================================
export RUST_BACKTRACE=1
export CARGO_TERM_COLOR=always

alias c='cargo'
alias cb='cargo build'
alias cbr='cargo build --release'
alias cr='cargo run'
alias crr='cargo run --release'
alias cc='cargo check'
alias ct='cargo test'
alias ccl='cargo clippy'
alias cf='cargo fmt'
alias cw='cargo watch -x check -x test'
alias cwr='cargo watch -x run'
alias ca='cargo add'
alias crm='cargo rm'
alias cup='cargo update'
alias cdoc='cargo doc --open'
alias ctree='cargo tree --depth 1'

# ==============================================================================
# Phone Monitor & Tooling Shortcuts
# ==============================================================================
alias phone='phone-monitor'
alias phone-mon='phone-monitor'
alias phone-mirror='phone-monitor --mirror'
alias phone-shot='phone-monitor --screenshot'
alias phone-record='phone-monitor --record'
alias phone-wifi='phone-monitor --wifi'

# ==============================================================================
# Wallpapers & Akim-Dotfiles Shortcuts
# ==============================================================================
alias wal-next='~/.config/hypr/scripts/switch-wallpaper.sh next'
alias wal-prev='~/.config/hypr/scripts/switch-wallpaper.sh prev'
alias wal-pick='~/.config/hypr/scripts/rofi-wallpaper.sh'
alias wal-theme='~/.config/hypr/scripts/apply-pywal-theme.sh'
alias fetch='fastfetch'
alias update='~/.config/hypr/scripts/system-update.sh'

# ==============================================================================
# Starship Prompt (Preferred for clean, fast prompt)
# ==============================================================================
if command -v starship &>/dev/null; then
    eval "$(starship init zsh)"
fi
