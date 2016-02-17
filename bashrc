export LANG=en_US.UTF-8
export PATH="~/bin:$PATH"

[[ -e ~/src/git-hub/init ]] &&
  source ~/src/git-hub/init

if [[ -e /NEW ]]; then
  rm /NEW
  pairup-info ALL
fi
