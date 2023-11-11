# private environment variables.
. $HOME/.zshenv.private
# prompt
PS1="%{[0;32m%}%~%{[0;34m%}\$ %{[0;39m%}"
# user space executables
export PATH=$PATH:$HOME/.local/bin
# go files should located to `~/.go` rather than the default `~/go`
export GOPATH=$HOME/.go
# add go executables to path
export PATH=$PATH:$GOPATH/bin
# package `v2ray`. more info see v2ray.com/en/configuration/env.html
export V2RAY_LOCATION_CONFIG=$HOME/.config/v2ray
export V2RAY_LOCATION_ASSET=/usr/lib/v2ray
# add ruby gems to path
export PATH=$PATH:~/.gem/ruby/2.6.0/bin
# add rust crates to path
export PATH=$PATH:$HOME/.cargo/bin
# rust source code required by `racer`. see github.com/racer-rust/racer.
# though it's optional, racer do speeded up by setting it.
export RUST_SRC_PATH=$HOME/.rustup/toolchains/nightly-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/src
# add nix executables to path
export PATH=$PATH:$HOME/.nix-profile/bin
# package `proxychains-ng`. more info see github.com/rolf0r/proxychains-ng.
export PROXYCHAINS_CONF_FILE=$HOME/.config/proxychains/config.conf
# package `bat`
#export BAT_THEME="ansi-light"
export BAT_THEME="ansi-dark"
# package `calibre`
export CALIBRE_USE_DARK_PALETTE=1
