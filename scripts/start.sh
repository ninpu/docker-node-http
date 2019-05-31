#!/bin/sh

mkdir -p /usr/src/app
rm -rf /usr/src/app/*

# download bundle
echo "download from ${APP_PATH}"
wget -c "${APP_PATH}" -O /usr/src/app/release.tar
cd /usr/src/app

echo "uppackage"
tar -xvf release.tar --strip-components=1
rm release.tar

# run
echo "start"
npm run start
