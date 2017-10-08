#!/usr/bin/env bash

if [ $# -gt 0 ]; then
  CMD=$1
  PORT=5554
  echo "Starting emulator[$PORT]..."
  emulator @test -timezone Europe/Kiev -no-audio -no-window -port $PORT &
  wait-for-emulator
  $CMD
else
  echo "No command is specified"
  exit 1
fi
