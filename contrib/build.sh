#!/bin/bash
#
# Timed build script by Tatwi
# Place in your ~/bin dir and symlink to it: ln -s build.sh build
# Then you can type build from any terminal window to build only new changes.

cd /home/wow/TrinityCore/build/

# Always run build
if make -j $(nproc) install; then
	echo "** BUILD SUCCESS IN $SECONDS SECONDS! **"
	exit 0
fi

# opps.
echo "** BUILD FAILED! **"
exit 1
