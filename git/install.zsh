git config --global user.name "Richard McHorgh"
git config --global user.email "richardmchorgh@fragile.co"
git config --global commit.gpgsign true
git config --global user.signingkey 9005A1A9
YOURKEY=$(git config -l | grep signingkey | cut -d"=" -f 2)
gpg -K --keyid-format SHORT | grep $YOURKEY -A3
