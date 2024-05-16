#!/bin/bash

# Defining the path of the script and the service
script_path="/home/cfg_vlan.sh"
service_path="/etc/systemd/system/cfg_vlan.service"

# Creating the Script
cat << 'EOF' > $script_path

#!/bin/bash

# Create a VLAN sub-interface for eth0.
ip link add link eth0 name eth0.979 type vlan id 979

# Create a namespace ns979.
ip netns add ns979

# Add the VLAN sub-interface eth0.979 to the namespace ns979.
ip link set eth0.979 netns ns979

# Change the MAC address of the VLAN sub-interface to fa:16::.
ip netns exec ns979 ifconfig eth0.979 hw ether fa:16::

# Enable the VLAN sub-interface.
ip netns exec ns979 ifconfig eth0.979 up

# Configure the private IP address 192.168.0.237/24 for the VLAN sub-interface.
ip netns exec ns979 ip addr add 192.168.0.237/24 dev eth0.979

# Configure the default route for the VLAN sub-interface. 192.168.0.1 is the gateway of the subnet that the supplementary network interface works.
ip netns exec ns979 ip route add default via 192.168.0.1


# Another subNIC

# Create a VLAN sub-interface for eth0.
ip link add link eth0 name eth0.2735 type vlan id 2735

# Create a namespace ns2735.
ip netns add ns2735

# Add the VLAN sub-interface eth0.2735 to the namespace ns2735.
ip link set eth0.2735 netns ns2735

# Change the MAC address of the VLAN sub-interface to fa:16::.
ip netns exec ns2735 ifconfig eth0.2735 hw ether fa:16::

# Enable the VLAN sub-interface.
ip netns exec ns2735 ifconfig eth0.2735 up

# Configure the private IP address 192.168.0.35/24 for the VLAN sub-interface.
ip netns exec ns2735 ip addr add 192.168.0.35/24 dev eth0.2735

# Configure the default route for the VLAN sub-interface. 192.168.0.1 is the gateway of the subnet that the supplementary network interface works.
ip netns exec ns2735 ip route add default via 192.168.0.1


# Another subNIC

# Create a VLAN sub-interface for eth0.
ip link add link eth0 name eth0.780 type vlan id 780

# Create a namespace ns780.
ip netns add ns780

# Add the VLAN sub-interface eth0.780 to the namespace ns780.
ip link set eth0.780 netns ns780

# Change the MAC address of the VLAN sub-interface to fa:16::.
ip netns exec ns780 ifconfig eth0.780 hw ether fa:16::

# Enable the VLAN sub-interface.
ip netns exec ns780 ifconfig eth0.780 up

# Configure the private IP address 192.168.0.44/24 for the VLAN sub-interface.
ip netns exec ns780 ip addr add 192.168.0.44/24 dev eth0.780

# Configure the default route for the VLAN sub-interface. 192.168.0.1 is the gateway of the subnet that the supplementary network interface works.
ip netns exec ns780 ip route add default via 192.168.0.1


# Another subNIC

# Create a VLAN sub-interface for eth0.
ip link add link eth0 name eth0.3451 type vlan id 3451

# Create a namespace ns3451.
ip netns add ns3451

# Add the VLAN sub-interface eth0.3451 to the namespace ns3451.
ip link set eth0.3451 netns ns3451

# Change the MAC address of the VLAN sub-interface to fa:16::.
ip netns exec ns3451 ifconfig eth0.3451 hw ether fa:16::

# Enable the VLAN sub-interface.
ip netns exec ns3451 ifconfig eth0.3451 up

# Configure the private IP address 192.168.0.153/24 for the VLAN sub-interface.
ip netns exec ns3451 ip addr add 192.168.0.153/24 dev eth0.3451

# Configure the default route for the VLAN sub-interface. 192.168.0.1 is the gateway of the subnet that the supplementary network interface works.
ip netns exec ns3451 ip route add default via 192.168.0.1


# Another subNIC

# Create a VLAN sub-interface for eth0.
ip link add link eth0 name eth0.1011 type vlan id 1011

# Create a namespace ns1011.
ip netns add ns1011

# Add the VLAN sub-interface eth0.1011 to the namespace ns1011.
ip link set eth0.1011 netns ns1011

# Change the MAC address of the VLAN sub-interface to fa:16::.
ip netns exec ns1011 ifconfig eth0.1011 hw ether fa:16::

# Enable the VLAN sub-interface.
ip netns exec ns1011 ifconfig eth0.1011 up

# Configure the private IP address 192.168.0.140/24 for the VLAN sub-interface.
ip netns exec ns1011 ip addr add 192.168.0.140/24 dev eth0.1011

# Configure the default route for the VLAN sub-interface. 192.168.0.1 is the gateway of the subnet that the supplementary network interface works.
ip netns exec ns1011 ip route add default via 192.168.0.1


# Another subNIC

# Create a VLAN sub-interface for eth0.
ip link add link eth0 name eth0.3003 type vlan id 3003

# Create a namespace ns3003.
ip netns add ns3003

# Add the VLAN sub-interface eth0.3003 to the namespace ns3003.
ip link set eth0.3003 netns ns3003

# Change the MAC address of the VLAN sub-interface to fa:16::.
ip netns exec ns3003 ifconfig eth0.3003 hw ether fa:16::

# Enable the VLAN sub-interface.
ip netns exec ns3003 ifconfig eth0.3003 up

# Configure the private IP address 192.168.0.13/24 for the VLAN sub-interface.
ip netns exec ns3003 ip addr add 192.168.0.13/24 dev eth0.3003

# Configure the default route for the VLAN sub-interface. 192.168.0.1 is the gateway of the subnet that the supplementary network interface works.
ip netns exec ns3003 ip route add default via 192.168.0.1


# Another subNIC

# Create a VLAN sub-interface for eth0.
ip link add link eth0 name eth0.3457 type vlan id 3457

# Create a namespace ns3457.
ip netns add ns3457

# Add the VLAN sub-interface eth0.3457 to the namespace ns3457.
ip link set eth0.3457 netns ns3457

# Change the MAC address of the VLAN sub-interface to fa:16::.
ip netns exec ns3457 ifconfig eth0.3457 hw ether fa:16::

# Enable the VLAN sub-interface.
ip netns exec ns3457 ifconfig eth0.3457 up

# Configure the private IP address 192.168.4.42/22 for the VLAN sub-interface.
ip netns exec ns3457 ip addr add 192.168.4.42/22 dev eth0.3457

# Configure the default route for the VLAN sub-interface. 192.168.4.1 is the gateway of the subnet that the supplementary network interface works.
ip netns exec ns3457 ip route add default via 192.168.4.1


# Another subNIC

# Create a VLAN sub-interface for eth0.
ip link add link eth0 name eth0.3150 type vlan id 3150

# Create a namespace ns3150.
ip netns add ns3150

# Add the VLAN sub-interface eth0.3150 to the namespace ns3150.
ip link set eth0.3150 netns ns3150

# Change the MAC address of the VLAN sub-interface to fa:16::.
ip netns exec ns3150 ifconfig eth0.3150 hw ether fa:16::
# Enable the VLAN sub-interface.
ip netns exec ns3150 ifconfig eth0.3150 up

# Configure the private IP address 192.168.7.209/22 for the VLAN sub-interface.
ip netns exec ns3150 ip addr add 192.168.7.209/22 dev eth0.3150

# Configure the default route for the VLAN sub-interface. 192.168.4.1 is the gateway of the subnet that the supplementary network interface works.
ip netns exec ns3150 ip route add default via 192.168.4.1


# Another subNIC

# Create a VLAN sub-interface for eth0.
ip link add link eth0 name eth0.3620 type vlan id 3620

# Create a namespace ns3620.
ip netns add ns3620

# Add the VLAN sub-interface eth0.3620 to the namespace ns3620.
ip link set eth0.3620 netns ns3620

# Change the MAC address of the VLAN sub-interface to fa:16::.
ip netns exec ns3620 ifconfig eth0.3620 hw ether fa:16::

# Enable the VLAN sub-interface.
ip netns exec ns3620 ifconfig eth0.3620 up

# Configure the private IP address 192.168.6.30/22 for the VLAN sub-interface.
ip netns exec ns3620 ip addr add 192.168.6.30/22 dev eth0.3620

# Configure the default route for the VLAN sub-interface. 192.168.4.1 is the gateway of the subnet that the supplementary network interface works.
ip netns exec ns3620 ip route add default via 192.168.4.1


# Another subNIC

# Create a VLAN sub-interface for eth0.
ip link add link eth0 name eth0.1228 type vlan id 1228

# Create a namespace ns1228.
ip netns add ns1228

# Add the VLAN sub-interface eth0.1228 to the namespace ns1228.
ip link set eth0.1228 netns ns1228

# Change the MAC address of the VLAN sub-interface to fa:16::.
ip netns exec ns1228 ifconfig eth0.1228 hw ether fa:16::

# Enable the VLAN sub-interface.
ip netns exec ns1228 ifconfig eth0.1228 up

# Configure the private IP address 192.168.6.125/22 for the VLAN sub-interface.
ip netns exec ns1228 ip addr add 192.168.6.125/22 dev eth0.1228

# Configure the default route for the VLAN sub-interface. 192.168.4.1 is the gateway of the subnet that the supplementary network interface works.
ip netns exec ns1228 ip route add default via 192.168.4.1


# Another subNIC

# Create a VLAN sub-interface for eth0.
ip link add link eth0 name eth0.937 type vlan id 937

# Create a namespace ns937.
ip netns add ns937

# Add the VLAN sub-interface eth0.937 to the namespace ns937.
ip link set eth0.937 netns ns937

# Change the MAC address of the VLAN sub-interface to fa:16::.
ip netns exec ns937 ifconfig eth0.937 hw ether fa:16::

# Enable the VLAN sub-interface.
ip netns exec ns937 ifconfig eth0.937 up

# Configure the private IP address 192.168.5.206/22 for the VLAN sub-interface.
ip netns exec ns937 ip addr add 192.168.5.206/22 dev eth0.937

# Configure the default route for the VLAN sub-interface. 192.168.4.1 is the gateway of the subnet that the supplementary network interface works.
ip netns exec ns937 ip route add default via 192.168.4.1


# Another subNIC

# Create a VLAN sub-interface for eth0.
ip link add link eth0 name eth0.3417 type vlan id 3417

# Create a namespace ns3417.
ip netns add ns3417

# Add the VLAN sub-interface eth0.3417 to the namespace ns3417.
ip link set eth0.3417 netns ns3417

# Change the MAC address of the VLAN sub-interface to fa:16::.
ip netns exec ns3417 ifconfig eth0.3417 hw ether fa:16::

# Enable the VLAN sub-interface.
ip netns exec ns3417 ifconfig eth0.3417 up

# Configure the private IP address 192.168.4.135/22 for the VLAN sub-interface.
ip netns exec ns3417 ip addr add 192.168.4.135/22 dev eth0.3417

# Configure the default route for the VLAN sub-interface. 192.168.4.1 is the gateway of the subnet that the supplementary network interface works.
ip netns exec ns3417 ip route add default via 192.168.4.1
EOF

# Giving permmission to the Script
chmod +x $script_path

# Creating the service file
cat << EOF > $service_path
[Unit]
Description=VLAN Configuration
After=network.target

[Service]
Type=simple
ExecStart=$script_path
Restart=always

[Install]
WantedBy=multi-user.target
EOF

# Reloading Daemon
sudo systemctl daemon-reload

# Starting the service
sudo systemctl start cfg_vlan

# Enable the service
sudo systemctl enable cfg_vlan

# Reboot the system
sudo reboot