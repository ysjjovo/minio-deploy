#!/bin/sh
rclone --config rclone.conf check --one-way --differ differ --missing-on-dst missing --error error prod:$1 local:$1