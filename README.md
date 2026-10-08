# Pikachu

[Pikachu](https://github.com/zhuifengshaonianhanlu/pikachu) by zhuifengshaonianhanlu: a
deliberately vulnerable PHP web application (interface in Chinese) with one page per variant of
the common web vulnerabilities. This repository runs it with [Isoloom](https://www.isoloom.com):
[`isoloom.yml`](isoloom.yml) describes the machine, and the upstream source in
[`build/web/app/`](build/web/app) builds with its own Dockerfile; a start-up job runs its install
step.

| Machine | Service |
| --- | --- |
| web | Pikachu on port 80 (Apache, PHP 7.4 and MySQL in one container, as upstream) |

## Run it

```bash
isoloom generate
isoloom up docker
```

Then open http://localhost/; the database is already installed. The XSS back end is at
http://localhost/pkxss/ (admin / 123456). The same spec runs as Docker on a local VM
(`docker-vm`), on a cloud VM (`cloud-docker`) or on Kubernetes. Lab guide: the hints on each
page and the [upstream README](https://github.com/zhuifengshaonianhanlu/pikachu).

Upstream version and commit: [UPSTREAM.md](UPSTREAM.md).

## Licence

Apache-2.0, as Pikachu ([LICENSE](LICENSE)). This application is deliberately vulnerable: keep it
isolated.
