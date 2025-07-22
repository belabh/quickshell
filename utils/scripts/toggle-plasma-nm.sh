#!/bin/bash

if pgrep -fx "plasmawindowed org.kde.plasma.networkmanagement"; then
    pkill -fx "plasmawindowed org.kde.plasma.networkmanagement"
else
    plasmawindowed org.kde.plasma.networkmanagement &
fi
