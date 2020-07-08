#!/bin/bash
echo "Lets tidy downloads folder"
echo -n "Enter path to Downloads folder:"
echo

# read way #запрашиваем у пользователь путь до папки Downloads
cd /Users/KykuMyku/Downloads/

echo

IMG=$(ls *.png *.PNG *.jpg *.JPG *.psd *.tif *.tiff *.gif) #картинки
DOCS=$(ls *.txt *.doc *.docx *.rtf *.rtfd) #документы
XLS=$(ls *.xls *.xlsx) #таблички
CSV=$(ls *.csv) #csv
PDF=$(ls *.pdf) #pdf's
MEDIA=$(ls *.mp3 *.mp4 *.MP4 *.wav *.avi *.mov *.3gp *.m4a) #аудио и видео
ARCH=$(ls *.rar *.zip *.gz) #архивные файлы
BOOKS=$(ls *.epub *.fb2) #книги
DISTR=$(ls *.dmg *.pkg *.exe) #дистрибутивы

#Internal Field Separator. Оставляем в качестве разделителя полей только перевод строки
IFS=$'\n'

# функция для перемещения файлов по папкам
function cleanDl {
  #local folder_content
  folder_target="$1"
  files="$2"
  for file in $files
    do
      echo $folder_target
      echo $file
      #mv $file $folder_target

    done
}

cleanDl "i/" "${IMG[@]}"
cleanDl "d/" "${DOCS[@]}"

echo
echo "Clean Downloads folder complete"
pwd

echo
