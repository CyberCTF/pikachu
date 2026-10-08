# Upstream

| | |
| --- | --- |
| Project | Pikachu |
| Repository | https://github.com/zhuifengshaonianhanlu/pikachu |
| Version | master (no release tags) |
| Commit | 5e1e8d9d14a3ba61d62f28cf35531c4df4dd24fc |
| Licence | Apache-2.0 |

`build/web/app/` is that commit, unchanged, without its Git history. `build/web/Dockerfile` is
upstream's Dockerfile with two changes: the `mattrayner/lamp:latest-2004-php7` base image is
pinned to its current digest, and the source is copied from `app/`. Like upstream's, the image
runs Apache, PHP and MySQL together, so the database is not a separate machine.
`build/web/init.sh`, a `docker.init` job, runs the two install pages (`install.php` and
`pkxss/pkxss_install.php`) that upstream's README asks the user to open in a browser. To update,
replace `build/web/app/` with a newer commit, then change this table.
