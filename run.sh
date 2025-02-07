#!/bin/sh -e

MODAUTH_FORCE=1

if ! test -e modauth; then
  git clone https://github.com/draumaz/andrautomation
fi

cp -vf service.sh andrautomation/service.sh
cd andrautomation

name="waveletdump"
version="1"
versionCode="1"
author="draumaz"
description="Enable Wavelet DUMP permissions on boot."

echo
source modauth.sh

cd ..
mv andrautomation/"${name}-${versionCode}.zip" .

rm -rf andrautomation
