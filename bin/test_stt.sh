#!/usr/bin/env bash

cd $(dirname $0)/../wav

start=`python -c 'from time import time; print int(round(time() * 1000))'`
echo "alex    :" `curl -s -X POST --data-binary @pangram_en_alex.wav http://$1:8080/stt`
echo "daniel  :" `curl -s -X POST --data-binary @pangram_en_daniel.wav http://$1:8080/stt`
echo "fiona   :" `curl -s -X POST --data-binary @pangram_en_fiona.wav http://$1:8080/stt`
echo "karen   :" `curl -s -X POST --data-binary @pangram_en_karen.wav http://$1:8080/stt`
echo "moira   :" `curl -s -X POST --data-binary @pangram_en_moira.wav http://$1:8080/stt`
echo "samantha:" `curl -s -X POST --data-binary @pangram_en_samantha.wav http://$1:8080/stt`
echo "tessa   :" `curl -s -X POST --data-binary @pangram_en_tessa.wav http://$1:8080/stt`
stop=`python -c 'from time import time; print int(round(time() * 1000))'`
echo Execution time was "$((($stop - $start) / 7))" milliseconds per request.
