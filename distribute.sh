#!/bin/bash

readonly DIST=/home/deploy/distribute

bundle exec rake

[ -e $DIST/rva/rva_cars.zip ] && rm -r $DIST/rva/rva_cars.zip
[ -e $DIST/rva/rva_tracks.zip ] && rm -r $DIST/rva/rva_tracks.zip
[ -e $DIST/rva/packages.json ] && rm $DIST/packages.json

mv rva_cars/rva_cars.zip $DIST/rva
mv rva_tracks/rva_tracks.zip $DIST/rva
mv packages.json $DIST/packages.json

chmod -R 777 $DIST/rva_data/
