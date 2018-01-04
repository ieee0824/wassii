#!/bin/bash
cat $1 | tail -n 2 | mysql -uroot -hdb -N -r --batch
