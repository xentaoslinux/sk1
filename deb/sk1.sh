#!/usr/bin/env bash
figlet sk1
wget -i sk1-2.0rc3.txt
mv 'dc3.php?version=2.0rc3&target=python-sk1-2.0rc3_mint_18_amd64.deb' python-sk1-2.0rc3_amd64.deb
mv 'dc3.php?version=2.0rc3&target=python-sk1-2.0rc3_mint_18_i386.deb'  python-sk1-2.0rc3_i386.deb
dpkg-sig -k 959CDDD1 --sign bundler *.deb
mv *.deb ../../
