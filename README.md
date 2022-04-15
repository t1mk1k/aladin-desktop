# Oligia
IVOA desktop container with TopCat and Aladin

To launch the container in Docker:
```
    docker run \
        --rm \
        --tty \
        --interactive \
        --publish 3000:3000 \
        "ghcr.io/ivoa/oligia-webtop:ubuntu-2022.01.13"
```

Connect to the container on port `3000` using your web browser:
```
    firefox --new-window 'http://localhost:3000/'
```

Inside the container, initialise the desktop by running this in a terminal:
```
    source '/opt/ivoa/oligia/config.sh'
```


