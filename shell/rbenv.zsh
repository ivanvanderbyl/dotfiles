# Enable rbenv completion
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

export RUBY_CONFIGURE_OPTS="--with-openssl-dir=$(brew --prefix openssl@1.1)"
