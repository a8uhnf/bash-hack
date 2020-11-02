netstat -nplt # -p=show PID, -n=numeric values instead of host, -l=only show listen address, -t=tcp protocol
netstat -cnplt # -c=monitor continuously

# display dropped packets per interface 
netstate -i 
netstate --interfaces

# Dispaly summury of each protocol
netstate --statistics
netstate -s

# TCP state
netstate -s --tcp

# UDP state
netstate -s --udp