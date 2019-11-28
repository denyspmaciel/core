#!/bin/bash

cliente=`sudo tcpdump -r cf.pcap | cut -d ' ' -f1 | cut -d'.' -f2 | head -n1`
servidor=`sudo tcpdump -r sf.pcap | cut -d ' ' -f1 | cut -d'.' -f2 | head -n1`
taxac=`sudo tcpdump -r taxac.pcap | wc -l`
taxas=`sudo tcpdump -r taxas.pcap | wc -l`

echo "$cliente - $servidor" | bc >> latencia.txt
echo "$taxas - $taxac" | bc >> taxa.txt

rm cf.pcap
rm sf.pcap
rm taxac.pcap
rm taxas.pcap
