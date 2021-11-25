#!/bin/sh
rclone --config rclone.conf sync -P  prod:/$1 local:/$1