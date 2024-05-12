# nmap-bash-script

## this script process a nmap scan using the following parameters 

-Pn  - option in Nmap stands for "No Ping." When you use this option, Nmap will skip the host discovery phase, where it sends ICMP echo requests (pings) to determine if hosts are online, and instead assume that the target(s) are up. This can be useful in situations where ICMP echo requests are blocked or when you already know that the target is up and you want to directly scan it without spending time on host discovery. However, it's worth noting that using `-Pn` can lead to inaccurate results if the target host is actually down or unreachable. \n
--open - scan open ports \n
-sC The - option in Nmap is used to enable the default NSE (Nmap Scripting Engine) script scan. \n
-sV - option in Nmap is used to enable version detection during a port scan. \n
-A - Aggressive Scan \n
-T5 - option in Nmap is used to specify the timing template for the scan, specifically setting it to aggressive timing. \n

## You can also edit this script to change the nmap sentence ! 

## xsltproc 

xslproc is used to format the output of the nmap sentence into a html file 
