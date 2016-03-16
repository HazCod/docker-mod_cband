docker build -t build-cband .
docker run --rm -v "$(pwd)/output:/tmp/" build-cband
