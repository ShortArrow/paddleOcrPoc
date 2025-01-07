#!/bin/bash

paddleocr --image_dir "/work/$1" --use_angle_cls true --lang japan --use_gpu false
