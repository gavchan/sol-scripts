echo Current host identity properties:
svccfg -s system/identity:node listprop config
echo
echo Setting new host name to "$1"
svccfg -s system/identity:node setprop config/nodename="$1"
svccfg -s system/identity:node setprop config/loopback="$1"
echo
echo Refreshing and restarting service
svccfg -s system/identity:node refresh
svcadm restart system/identity:node
echo
echo Modification complete. Verifying...
svccfg -s system/identity:node listprop config
echo
echo Remember to change hosts file by editing "/etc/inet/hosts"
