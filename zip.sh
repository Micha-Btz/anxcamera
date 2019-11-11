#! /bin/bash
FILE=anxcamera
VERSION=v0.0.4
CM_Version=lineage-16.0
NAME=($FILE-$CM_Version-$VERSION)

echo "Making Zip"
# zipping
zip -r $NAME.zip vendor/* META-INF/* mount-vendor.sh unmount-vendor.sh
echo "ZIP is Ready"
echo "Signing ZIP"
java -jar /usr/share/signapk/signapk.jar --min-sdk-version 25 buildtools/testkey.x509.pem buildtools/testkey.pk8 $NAME.zip $NAME-SIGNED.zip
# Cleanup
echo "Cleaning up"
rm $NAME.zip
echo "done"
