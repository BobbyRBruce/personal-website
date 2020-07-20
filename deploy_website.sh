#!/bin/bash

./build_website.sh
aws s3 cp ./_site s3://www.bobbybruce.net/ --recursive
