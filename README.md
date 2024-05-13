# nmap-bash-script

## this script process a nmap scan using the following options

-Pn  - option in Nmap stands for "No Ping." 

--open - scan open ports 

-A - option in Nmap is a shortcut for enabling several advanced features in a single command. It stands for "Aggressive Scan" and combines various options to provide more comprehensive information about the target system. When you use -A, Nmap performs the following actions:

    OS Detection (-O): Nmap attempts to determine the operating system of the target by analyzing various network characteristics, such as TCP/IP stack behavior, responses to specific probes, and other factors.

    Service Version Detection (-sV): Similar to using the -sV option, Nmap attempts to determine the versions of the services running on open ports.

    Script Scanning (-sC): Nmap runs a set of default NSE scripts against the discovered ports to gather additional information about the services, potential vulnerabilities, and misconfigurations.

-T5 - option in Nmap is used to specify the timing template for the scan, specifically setting it to aggressive timing. 

-v for verbose process

## You can also edit this script to change the nmap sentence ! 

<<<<<<< HEAD
sudo nmap -Pn --open -sC -sV -A -T5 $targetIp -oA nmap_scan -v
=======
sudo nmap -Pn --open -A -T5 -O $targetIp -oA nmap_scan -v
>>>>>>> 7adbaf91d46341d0278eb54538c307335d541148

## xsltproc 

xslproc is used to format the output of the nmap sentence into a html file 
