# Containerick
[![Share in Twitter](https://img.shields.io/twitter/url/http/shields.io.svg?style=social&style=flat-square)](I+turned+myself+into+a+container%2C+Morty%21+Boom%21+Try+it+out%21+https%3A%2F%2Fgithub.com%2Fchipironcin%2Fcontainerick)

**I turned myself into a container, Morty! Boom!**

```bash
# Downloading from Dockerhub
docker run -e COLS=$(stty size | awk {'print $2'}) chipironcin/containerick

# Building from source
docker build -t containerick .
docker run -e COLS=$(stty size | awk {'print $2'}) containerick
```

Overengineered ContainerRick made by [@chipironcin](https://twitter.com/chipironcin)
Featuring:
  - Autocentered graphics
  - Rejects to print if terminal size is too small
  - Ricks, lots of Ricks from all universes
