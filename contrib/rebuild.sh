#!/bin/bash
#
# Timed build script by Tatwi
# Place in your ~/bin dir and symlink to it: ln -s rebuild.sh rebuild
# Then you can type rebuild from any terminal window to build from scratch.

# Rebuild the cmake files, without building the tools again.
cd /home/wow/TrinityCore/
rm -R build
mkdir build
cd build
cmake ../ -DCMAKE_INSTALL_PREFIX=/home/$USER/server -DTOOLS=0 -DWITH_WARNINGS=1

# Always run build
if make -j $(nproc) install; then
	echo "** BUILD SUCCESS IN $SECONDS SECONDS! **"
	exit 0
fi

# opps.
echo "** BUILD FAILED! **"
exit 1
