#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /home/amin/sarbazi/hlsprojs/sift_starter/solution1/.autopilot/db/a.g.bc ${1+"$@"}