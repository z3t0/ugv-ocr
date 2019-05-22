#!/bin/bash

ipython text_recognition.py -- --east frozen_east_text_detection.pb --image "$@"
