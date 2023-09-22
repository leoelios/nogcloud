#!/bin/bash

rm -rf build
mkdir build

shc -f nogcloud -o build/nogcloud

rm -rf nogcloud.x.c