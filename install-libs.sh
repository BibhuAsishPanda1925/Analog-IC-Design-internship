#!/bin/bash

##Installing reqd packages 

req_pkgarr=(\
	libxpm4 libxaw7 libtcl8.6 libtk8.6 libgomp1 \
        xterm tree \
      )

pckarr=${req_pkgarr[*]}

for i in ${pckarr[*]} 
  do
    echo "Installing $i.."
    sudo apt-get install -y $i
  done


