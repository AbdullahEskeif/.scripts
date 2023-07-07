#!/bin/sh

TouchpadID=$(xinput list | grep TouchPad | awk '{print $7}' | grep -Eo '[0-9]{1,2}')

xinput disable $TouchpadID 


