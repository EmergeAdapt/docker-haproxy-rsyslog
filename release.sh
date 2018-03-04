set -ex
# bump version
version=`bump $1`
echo "$version" > VERSION

# tag it
git add -A
git commit -m "version $version"
git tag -a "$version" -m "version $version"
git push origin master
git push origin master --tags
