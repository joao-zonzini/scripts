#!/bin/bash

sudo tlp-stat -b | grep Charge | awk 'FNR == 2 { print $3 }'
