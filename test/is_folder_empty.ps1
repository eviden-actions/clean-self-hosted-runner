#!/bin/bash

if [ "$(ls -A .)" ]; then
	echo "Workspace is not Empty"
	exit 1
fi
