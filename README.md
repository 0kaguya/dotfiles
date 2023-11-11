# dotfiles

make sure this repository is placed right under `~/`, say `~/dotfiles`.

``` bash
$ cd ~/dotfiles
$ stow package-name
```

## Scripts

Be aware that `chmod` doesn't follow symlink with `-R`, so things like
`chmod -R +x ~/.local/bin` won't work. In this example, run
`chmod +x ~/.loca/bin/*` instead.
