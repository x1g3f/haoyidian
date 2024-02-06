#!/bin/bash
read -p "请输入网卡名称：" NAME
read -p "请输入IP：" IP
read -p "请输入网络掩码：" MASK
read -p "请输入网关：" WAY
read -p "请输入DNS：" DNS
path="/etc/sysconfig/network-scripts/ifcfg-$NAME"
echo "TYPE=Ethernet" > $path
echo "BOOTPROTO=static" >> $path
echo "NAME=$NAME" >> $path
echo "DEVICE=$NAME" >> $path
echo "ONBOOT=yes" >> $path
echo "IPADDR=$IP" >> $path
echo "NETMASK=$MASK" >> $path
echo "GATEWAY=$WAY" >> $path
echo "DNS1=$DNS" >> $path
systemctl restart network
