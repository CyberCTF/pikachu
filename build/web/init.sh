#!/bin/sh
# Run Pikachu's two install pages (the setup step its README asks for in the browser) once the
# web server and its MySQL answer: install.php creates the pikachu database, and
# pkxss/pkxss_install.php the database of the XSS back end.
set -u
install() {
  i=0
  until curl -fsS -m 10 -d 'submit=1' "http://127.0.0.1$1" | grep -q "$2"; do
    i=$((i + 1))
    [ "$i" -ge 60 ] && { echo "init: $1 did not succeed" >&2; exit 1; }
    sleep 3
  done
  echo "init: $1 done"
}
install /install.php '创建数据库数据成功'
install /pkxss/pkxss_install.php '新建数据库表users成功'
