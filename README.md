# deepspeech_testdata
A collection of tools and data to test the deepspeech-server

This repository provides test data for the deepspeech-server from https://github.com/MainRo/deepspeech-server

The data was generated with `bin/wav_gen.sh`.

To run tests, call `bin/test_stt.sh <hostname>:<port>`, where `<hostname>` is the host running the deepspeech-server and `<port>` is the port of the server.
Example: `bin/test_stt.sh brain.local:8080`
