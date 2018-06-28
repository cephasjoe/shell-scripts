#!/bin/bash
echo "IP Address:"
read ip
echo "Project Name:"
read pj
mkdir nmap-outputs/$pj
nmap -Pn -A -sV -n --reason $ip -oA /home/cephas/scripts/nmap-outputs/$pj/tcp-$pj && 
nmap -vv -Pn -n -A -sU $ip -oA /home/cephas/scripts/nmap-outputs/$pj/udp-$pj -p 49,53,67,68,69,88,113,118,123,135,137,138,139,143,156,161,162,194,213,220,264,389,444,500,514,520,530,563,1194,1293,1434,1512,1645,1646,1812,3306,3389,5060,5061,5432

