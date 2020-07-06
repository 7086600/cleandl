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

IMG=$(ls *.png *.jpg *.JPG *.psd *.tiff) #картинки
DOCS=$(ls *.txt *.doc *.docx *.rtf) #документы
XLS=$(ls *.xls *.xlsx) #таблички
CSV=$(ls *.csv) #csv
PDF=$(ls *.pdf) #pdf's
MEDIA=$(ls *.mp3 *.mp4 *.MP4 *.avi *.AVI *.MOV *.3gp *.m4a) #аудио и видео
ARCH=$(ls *.rar *.zip *.gz) #архивные файлы
BOOKS=$(ls *.epub)
DISTR-$(ls *.dmg *.pkg)

#Internal Field Separator. Оставляем в качестве разделителя полей только перевод строки
IFS=$'\n'

# перемещаем все картинки в папку img
for file_img in $IMG
do
  mv $file_img img/
done

# перемещаем все документы в папку docs
for file_doc in $DOCS
do
  mv $file_doc docs/
done

# перемещаем все таблички в папку xls
for file_t in $XLS
do
  mv $file_t xls/
done

# перемещаем все csv в папку csv
for file_csv in $CSV
do
  mv $file_csv csv/
done

# перемещаем все pdf в папку pdf
for file_pdf in $PDF
do
  mv $file_pdf pdf/
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

# перемещаем все книги  в папку books
for file_book in $BOOKS
do
  mv $file_book books/
done

# перемещаем все дистрибутивы  в папку distr
for file_distr in $DISTR
do
  mv $file_distr distr/
done

echo

pwd

echo
