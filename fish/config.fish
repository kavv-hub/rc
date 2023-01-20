export GPG_TTY=$(tty)
export SSH_AUTH_SOCK=$(gpgconf --list-dirs agent-ssh-socket)
gpgconf --launch gpg-agent

export AWS_REGION=ap-southeast-1
export GOPRIVATE="github.com/monacohq/*"
export GOROOT=/usr/local/Cellar/go/1.19.3/libexec/

# Base16 Shell
if status --is-interactive
    set BASE16_SHELL "$HOME/.config/base16-shell/"
    source "$BASE16_SHELL/profile_helper.fish"
end

source ~/.asdf/asdf.fish

