Whoami Debug Webserver Docker Image
==================================================

This is a simple web server that states its hostname and any custom message
provided in the `MESSAGE` environment variable.

It is intended as a debugging tool for building docker stacks.

---

- [View on DockerHub][1]
- [View on Github][2]

---

Usage
--------------------------------------------------

### Straight up docker

```shell
$ docker run --rm -it \
  --publish 3000:3000 \
  --env "MESSAGE=webserver here" \
  dannyben/whoami
```

### With docker-compose

```yaml
version: '3'

services:
  web:
    image: dannyben/whoami
    ports: ["3000:3000"]
    environment:
      MESSAGE: "web server"
```

---

[1]: https://hub.docker.com/r/dannyben/whoami/
[2]: https://github.com/DannyBen/docker-whoami
