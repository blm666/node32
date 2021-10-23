#!/usr/bin/env bash
cd /home/ubuntu/mgcnode/node &&
rm -rf out &&
git checkout $1 &&
./androidbuild/build-android-node /home/ubuntu/android-ndk-r21e &&
cp out/Release/lib/libnode.so /home/ubuntu/shared_with_host &&echo "assemble libnode done!"
