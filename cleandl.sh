#!/bin/bash
echo "Lets tidy downloads folder"
echo "Enter path to Downloads folder:"
echo

# read way
cd /Users/KykuMyku/Downloads/

# mv *.pdf pdf/
# mv *.csv csv/
# mv *.docx doc/
# mv *.doc doc/

echo

IMG=$(ls *.png *.jpg *.JPG) #картинки
DOCS=$(ls *.txt *.doc *.docx) #документы
XLS=$(ls *.xls *.xlsx) #таблички
CSV=$(ls *.csv) #csv
MEDIA=$(ls *.mp3 *.mp4 *.MP4 *.avi *.AVI *.MOV *.3gp) #аудио и видео
ARCH=$(ls *.rar *.zip *.gz) #архивные файлы

#Internal Field Separator. Оставляем в качестве разделителя полей только перевод строки
IFS=$'\n'

# перемещаем все картинки в папку img
for file_img in $IMG
do
  mv $img img/
done

# перемещаем все документы в папку docs
for file_doc in $DOCS
do
  mv $file_doc docs/
done

# перемещаем все аудио и видео в папку media
for file_media in $MEDIA
do
  mv $file_media media/
done

# перемещаем все архивы в папку arch
for file_arch in $ARCH
do
  mv $file_arch arch/
done

echo

pwd

echo
