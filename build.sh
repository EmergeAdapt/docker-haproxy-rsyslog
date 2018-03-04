set -ex
# SET THE FOLLOWING VARIABLES
# docker hub username
USERNAME=caseblocks
# image name
IMAGE=haproxy2


# ------------ specific build steps
# ------------ specific build steps done

version=`cat VERSION`
echo "version: $version"

docker build -t $USERNAME/$IMAGE:latest .
docker tag $USERNAME/$IMAGE:latest $USERNAME/$IMAGE:$version

# push it
docker push $USERNAME/$IMAGE:latest
docker push $USERNAME/$IMAGE:$version
