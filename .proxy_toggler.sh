# For Internet Proxy access with College Network

cp /etc/environment /etc/environment.temp
cp /etc/environment.proxy /etc/environment
cp /etc/environment.temp /etc/environment.proxy
rm /etc/environment.temp

# Check status
head /etc/environment
