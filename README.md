# VPN Zabbix Grafana
This project allows you to deploy and configure Zabbix, Grafana and Shadowsocks in Docker containers. Zabbix is a network and application monitoring system, Grafana is a platform for data visualization and analysis, and Shadowsocks is a proxy server that provides secure and anonymous access to the internet. You can use this project to monitor and manage your network and applications from anywhere using a VPN connection.

## Prerequisites
You need to have Docker and Docker Compose installed on your server. If you don’t have them, the script will try to install them for you.
You need to have a domain name or a public IP address for your server. You also need to configure your DNS records or firewall rules to allow traffic to your server on port 8388 (for Shadowsocks) and port 10051 (for Zabbix).

## Installation
- Run the script install.sh on your server. This will create a .env file with some variables, such as the password for Shadowsocks and the timezone for the containers. It will also start the Docker Compose services in the background.
- Check the output of the script for your password and IP address. You will need them to connect to your VPN and access your web interfaces.
Optionally, you can edit the .env file or the docker-compose.yml file to customize your settings, such as the port numbers, the image versions, or the environment variables.

# Usage
- To connect to your VPN, you need to install a Shadowsocks client on your device. You can find some clients [https://shadowsocks.org/en/download/clients.html]. You need to enter your server IP address, port number (8388 by default), password, and encryption method (aes-256-gcm by default) in the client settings.
- To access your Zabbix web interface, you need to open your browser and go to http://10.3.0.4:8080. You need to enter Admin as the username and zabbix as the password. You can then add hosts, items, triggers, graphs, dashboards, etc. to monitor your network and applications.
- To access your Grafana web interface, you need to open your browser and go to http://10.3.0.6:3000. You need to enter admin as the username and admin as the password. You can then add data sources, such as Zabbix or MySQL, and create panels, dashboards, alerts, etc. to visualize and analyze your data.

## Troubleshooting
- If you encounter any problems with the installation or usage of this project, you can check the logs of the Docker containers using this command:
```docker-compose logs -f```

You can also check the status of the Docker containers using this command:
```docker-compose ps```

If you need to restart or stop the Docker containers, you can use these commands:
```
docker-compose restart
docker-compose stop
```
