#!/bin/bash
DOM="stickerdriver.com"
PORT="443"
openssl s_client -servername ${DOM} -connect ${DOM}:${PORT} | openssl x509 -noout -dates