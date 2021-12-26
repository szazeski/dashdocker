TODAY=`date -u +"%Y%m%d.%H%M"`

docker build -t dashdocker:latest -t dashdocker:${TODAY} .
docker run --rm -it -v /var/run/docker.sock:/container/path/docker.sock dashdocker:${TODAY}
