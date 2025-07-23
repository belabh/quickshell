#!/bin/bash

if pgrep -fx "plasmawindowed org.kde.plasma.bluetooth"; then
    pkill -fx "plasmawindowed org.kde.plasma.bluetooth"
else
    plasmawindowed org.kde.plasma.bluetooth &
fi
