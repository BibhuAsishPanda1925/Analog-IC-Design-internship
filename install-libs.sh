#!/bin/bash

##Installing reqd packages 

req_pkgarr=(\
	libxpm4 libxaw7 \
        xterm tree \
      )

pckarr=${req_pkgarr[*]}

for i in ${pckarr[*]} 
  do
    echo "Installing $i.."
    sudo apt-get install -y $i
  done


