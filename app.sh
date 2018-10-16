# /bin/bash

if [ -z "$(ls -A -- /imgs)" ]
then
  echo "ERROR: no imgs directory, add [-v <path to directory of .heif(s)>:/imgs] to your docker run command"
  exit 1
fi

for f in /imgs/*.heic
do
  tifig -v -p $f ${f%????}jpg
done

for f in /imgs/*.HEIC
do
  tifig -v -p $f ${f%????}jpg
done

