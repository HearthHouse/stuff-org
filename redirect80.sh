# https://serverfault.com/questions/112795/how-to-run-a-server-on-port-80-as-a-normal-user-on-linux
sudo iptables -t nat -A PREROUTING -p tcp --dport 80 -j REDIRECT --to-port 2000
sudo iptables -t nat -I OUTPUT -p tcp -d 127.0.0.1 --dport 80 -j REDIRECT --to-ports 2000
cd stuff
./stuff
