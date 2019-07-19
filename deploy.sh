MESSAGE=Deploy
USER="claviers"
EMAIL="vince.legoff@gmail.com"
REPO="claviers.github.io"
GH_REPO="github.com/${USER}/${REPO}.git"
git clone git://${GH_REPO}
mv ./dist/* ${REPO}/
cd ${REPO}
git remote
git config user.email ${EMAIL}
git config user.name ${USER}
git add .
git commit -m ${MESSAGE}
git push "https://${GITHUB_TOKEN}@${GH_REPO}" master > /dev/null 2>&1