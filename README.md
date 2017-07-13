# alexmanno/docker-vala

A Docker image useful for compile vala code

## Usage

Pull Docker image from repository

```sh
docker pull alexmanno/valac
```

Compile your code

```sh
docker run -v `pwd`:/opt/project alexmanno/valac example.vala -o example
```

- -v flag is used for bind your current directory to the docker container
- example.vala is the source code written in vala located in your current directory
- -o flag force the name of output executable file


