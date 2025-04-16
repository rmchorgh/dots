brew install gnupg pinentry-mac
brew tap jorgelbg/tap
brew install pinentry-touchid
echo "pinentry-program $(which pinentry-touchid)" >>  ~/.gnupg/gpg-agent.conf

gpg --full-generate-key

echo "Next run: `gpg --list-secret-keys --keyid-format=long`"
echo "Next run: `gpg --armor --export <ID from previous step> | pbcopy`"
echo "Next paste in GitHub"
