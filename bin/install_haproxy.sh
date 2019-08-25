$ curl https://haproxy.debian.net/bernat.debian.org.gpg | \
      apt-key add -
$ echo deb http://haproxy.debian.net stretch-backports-1.8 main | \
      tee /etc/apt/sources.list.d/haproxy.list

$ apt-get update
$ apt-get install haproxy=1.8.\*