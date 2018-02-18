#!/bin/bash
# create multiresolution windows icon
ICON_DST=../../src/qt/res/icons/MachtCoin.ico

convert ../../src/qt/res/icons/MachtCoin-16.png ../../src/qt/res/icons/MachtCoin-32.png ../../src/qt/res/icons/MachtCoin-48.png ${ICON_DST}
