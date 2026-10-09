#!/bin/sh

ulimit -c 0
exec /usr/bin/tini -- python start.py
