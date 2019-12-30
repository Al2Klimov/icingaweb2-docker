# 🚀 Production-ready [Icinga Web 2] [Docker] image 🚀

... with the **latest** versions of both the framework itself
and **all** of the official modules:

```bash
docker run --rm -d -p 8080:80 -v iw2cfg:/etc/icingaweb2 grandmaster/icingaweb2:apache
```

## How it works

1. Every night [a bot] auto-discovers all repositories
   like `icingaweb2-module-*` of [@Icinga], [@masif-upgrader] and [@Al2Klimov]
2. Based on the latest versions of these and the framework itself
   the bot updates [get-iw2.sh] – this triggers the auto-build on [Docker Hub]

[Icinga Web 2]: https://github.com/Icinga/icingaweb2
[Docker]: https://www.docker.com
[a bot]: https://github.com/Al2Klimov/dockerweb2
[@Icinga]: https://github.com/Icinga
[@masif-upgrader]: https://github.com/masif-upgrader
[@Al2Klimov]: https://github.com/Al2Klimov
[get-iw2.sh]: get-iw2.sh
[Docker Hub]: https://hub.docker.com
