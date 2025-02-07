#!/bin/sh -e

MODAUTH_FORCE=1

if ! test -e modauth; then
  git clone https://github.com/draumaz/modauth
fi

cp -vf service.sh modauth/service.sh
cd modauth

name="waveletdump"
version="1"
versionCode="1"
author="draumaz"
description="Enable Wavelet DUMP permissions on boot."

echo
source modauth.sh

cd ..
mv modauth/"${name}-${versionCode}.zip" .
rm -rf modauth
