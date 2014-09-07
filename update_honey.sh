#!/bin/bash

set -e

rm -rf usr honey

URLS="
ftp://descargas.ceibal.edu.uy/espacio_tecnico/actividades/CM/Etoys-113.2.xo
ftp://descargas.ceibal.edu.uy/espacio_tecnico/actividades/CM/clock-15.xo
ftp://descargas.ceibal.edu.uy/espacio_tecnico/actividades/CM/distance-34.xo
ftp://descargas.ceibal.edu.uy/espacio_tecnico/actividades/CM/implode-15.xo
ftp://descargas.ceibal.edu.uy/espacio_tecnico/actividades/CM/maze-22.xo
ftp://descargas.ceibal.edu.uy/espacio_tecnico/actividades/CM/measure-44.xo
ftp://descargas.ceibal.edu.uy/espacio_tecnico/actividades/CM/paint-54.xo
ftp://descargas.ceibal.edu.uy/espacio_tecnico/actividades/CM/terminal-41.xo
ftp://descargas.ceibal.edu.uy/espacio_tecnico/actividades/CM/turtleblocks-176.xo
ftp://descargas.ceibal.edu.uy/espacio_tecnico/actividades/CM/browse-156.1.xo
ftp://descargas.ceibal.edu.uy/espacio_tecnico/actividades/CM/calculate-42.1.xo
ftp://descargas.ceibal.edu.uy/espacio_tecnico/actividades/CM/Chat-79.xo
ftp://descargas.ceibal.edu.uy/espacio_tecnico/actividades/CM/fototoon-16.xo
ftp://descargas.ceibal.edu.uy/espacio_tecnico/actividades/CM/image_viewer-59.xo
ftp://descargas.ceibal.edu.uy/espacio_tecnico/actividades/CM/Jukebox-26.2.xo
ftp://descargas.ceibal.edu.uy/espacio_tecnico/actividades/CM/memorize-45.xo
ftp://descargas.ceibal.edu.uy/espacio_tecnico/actividades/CM/pippy-52.1.xo
ftp://descargas.ceibal.edu.uy/espacio_tecnico/actividades/CM/portfolio-25.xo
ftp://descargas.ceibal.edu.uy/espacio_tecnico/actividades/CM/read-108.xo
ftp://descargas.ceibal.edu.uy/espacio_tecnico/actividades/CM/Scratch-24.1.xo
ftp://descargas.ceibal.edu.uy/espacio_tecnico/actividades/CM/SpeakCeibal-46.xo
ftp://descargas.ceibal.edu.uy/espacio_tecnico/actividades/CM/BibliotecaCeibal-8.xo
ftp://descargas.ceibal.edu.uy/espacio_tecnico/actividades/CM/cartoon_builder-17.1.xo
ftp://descargas.ceibal.edu.uy/espacio_tecnico/actividades/CM/CeibalNotifica-1.4.xo
ftp://descargas.ceibal.edu.uy/espacio_tecnico/actividades/CM/conozco_uruguay-11.xo
ftp://descargas.ceibal.edu.uy/espacio_tecnico/actividades/CM/Crea-3.xo
ftp://descargas.ceibal.edu.uy/espacio_tecnico/actividades/CM/FlipSticks-11.2.xo
ftp://descargas.ceibal.edu.uy/espacio_tecnico/actividades/CM/Record-97.1.xo
ftp://descargas.ceibal.edu.uy/espacio_tecnico/actividades/CM/story_builder-19.xo
ftp://descargas.ceibal.edu.uy/espacio_tecnico/actividades/CM/turtlebots-19.xo
ftp://descargas.ceibal.edu.uy/espacio_tecnico/actividades/CM/Tuxpaint-7.xo
ftp://descargas.ceibal.edu.uy/espacio_tecnico/actividades/CM/write-79.1.xo
ftp://descargas.ceibal.edu.uy/espacio_tecnico/actividades/CM/LectorCeibal_gtk23-1.9.xo
ftp://descargas.ceibal.edu.uy/espacio_tecnico/actividades/CM/TamTamEdit-66.2.xo
ftp://descargas.ceibal.edu.uy/espacio_tecnico/actividades/CM/TamTamJam-66.2.xo
ftp://descargas.ceibal.edu.uy/espacio_tecnico/actividades/CM/TamTamMini-67.0.1.xo
"

rm -rf honey
mkdir honey
cd honey
for i in $URLS; do
wget $i
done

find -exec unzip {} \;

rm *.xo

cd ..

rm usr/share/sugar/activities -rf
mkdir -p usr/share/sugar
mv honey usr/share/sugar/activities

mkdir -p usr/share/locale
cp usr/share/sugar/activities/*/locale/* usr/share/locale/ -a
rm usr/share/locale/*.po

