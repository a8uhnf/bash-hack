ping -i0.1 google.com  ## ping google.com every 100ms

sudo ping -i0.05 google.com 1000 #(sends a ping every 50ms, 1000 times)
sudo ping -f -i0.05 google.com #(flood ping, adds a dot for every sent packet, and removes one for every received packet)  - careful with flood ping without interval, it will send packets as fast as possible, which within the same zone is very fast

sudo ping -i0.05 google.com -c 100 -s 1400 #(send larger packets, does it get slower?)