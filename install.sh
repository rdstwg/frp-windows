#!/bin/bash
wget -q -N --no-check-certificate https://github.com/fatedier/frp/releases/download/v0.29.0/frp_0.29.0_linux_amd64.tar.gz
tar -zxvf frp_0.29.0_linux_amd64.tar.gz
mv frp_0.29.0_linux_amd64 frp
rm -rf ./frp_0.29.0_linux_amd64.tar.gz
cd frp
echo -e "dashboard_port = 7500\ndashboard_user = admin\ndashboard_pwd = admin" >> frps.ini
echo "./frps -c ./frps.ini" > run.sh
chmod -R 777 ../frp
