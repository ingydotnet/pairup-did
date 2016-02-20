export LANG=en_US.UTF-8
export PATH="~/bin:$PATH"

[[ -e ~/src/git-hub/init ]] &&
  source ~/src/git-hub/init
[[ -e ~/src/did/.rc ]] &&
  source ~/src/did/.rc

if [[ -e /NEW ]]; then
  rm /NEW
  pairup-info ALL
fi
