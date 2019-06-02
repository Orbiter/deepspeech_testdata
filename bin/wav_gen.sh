#!/usr/bin/env bash

cd $(dirname $0)/../wav

say -v alex --data-format=LEI16@16000 -o pangram_en_alex.wav "The quick brown fox jumps over the lazy dog"
say -v daniel --data-format=LEI16@16000 -o pangram_en_daniel.wav "The quick brown fox jumps over the lazy dog"
say -v fiona --data-format=LEI16@16000 -o pangram_en_fiona.wav "The quick brown fox jumps over the lazy dog"
say -v karen --data-format=LEI16@16000 -o pangram_en_karen.wav "The quick brown fox jumps over the lazy dog"
say -v moira --data-format=LEI16@16000 -o pangram_en_moira.wav "The quick brown fox jumps over the lazy dog"
say -v samantha --data-format=LEI16@16000 -o pangram_en_samantha.wav "The quick brown fox jumps over the lazy dog"
say -v tessa --data-format=LEI16@16000 -o pangram_en_tessa.wav "The quick brown fox jumps over the lazy dog"
