#!/usr/bin/env bash

#function to check if dpgk package is alreary installed
isPackageNotInstalled() {

    dpkg --status $1 &> /dev/null
    if [ $? -eq 0 ]; then
    echo "$1: Already installed"
    else
    sudo apt-get install -y $1
    fi
    }


echo "This script provides a basic scan using nmap on the target IP specified and give you information about it in a html web-readable format."

echo "Ingress target IP:"

read targetIp

#evaluate if iptarget is black
if [ -z "$targetIp" ]
then
echo "Error, you most provide an IP address"
exit 1
fi

#if not blank
echo "This script uses nmap and xsltproc , first check if both are installed"

#check if nmap installed
isPackageNotInstalled nmap

#check if xsltprco installed
isPackageNotInstalled xsltproc

#make nmap scan
echo "Processing nmap scan"
sudo nmap -Pn --open -sC -sV -A -T5 -O $targetIp -oA nmap_scan -v

#convert nmap_scan.xml into html
xsltproc ./nmap_scan.xml -o ./nmap_scan.html

#open in firefox browser
firefox ./nmap_scan.html
