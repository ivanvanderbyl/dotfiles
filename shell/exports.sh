export GOPATH=~/dev/go
export EDITOR=code

export PATH="$GOPATH/bin:$PATH"
export PATH="/usr/local/sbin:$PATH"
export PATH="/usr/local/bin:$PATH"
export PATH="$HOME/.yarn/bin:$PATH"

export GOPROXY=https://proxy.golang.org,direct
export GOFLAGS="-tags=release"

# Helm features for GCloud
export HELM_EXPERIMENTAL_OCI=1

# Use Homebrew's directories rather than ~/.rbenv
# export RBENV_ROOT=/usr/local/var/rbenv
# export RBENV_ROOT=~/.rbenv

# export AWS_CONFIG_FILE=~/.aws/credentials
# export AWS_PROFILE="default"

export SAPNWRFC_HOME=/usr/local/sap/nwrfcsdk

qq() {
    clear

    logpath="$TMPDIR/q"
    if [[ -z "$TMPDIR" ]]; then
        logpath="/tmp/q"
    fi

    if [[ ! -f "$logpath" ]]; then
        echo 'Q LOG' > "$logpath"
    fi

    tail -100f -- "$logpath"
}

rmqq() {
    logpath="$TMPDIR/q"
    if [[ -z "$TMPDIR" ]]; then
        logpath="/tmp/q"
    fi
    if [[ -f "$logpath" ]]; then
        rm "$logpath"
    fi
    qq
}
