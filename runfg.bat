#!/bin/bash

export FG_ROOT=$FG_ROOT/data
export PATH=$PATH:$FG_ROOT/../bin
export FG_SCENERY=$FG_ROOT/Scenery:$FG_ROOT/WorldScenery

fgfs --fdm=null --native-fdm=socket,in,30,localhost,5502,udp    --aircraft=org.flightgear.fgaddon.stable_2020.f16-simplified --fog-fastest --disable-clouds --start-date-lat=2004:06:01:09:00:00 --disable-sound --in-air --airport=LTFJ  --altitude=7224 --heading=113 --offset-distance=4.72 --offset-azimuth=0   &
