#!/bin/bash

echo cleanup
mysql -h csc365fall2017.webredirect.org aimccoy < MARATHON-cleanup.sql

echo setup
mysql -h csc365fall2017.webredirect.org aimccoy < MARATHON-setup.sql

echo build marathon
mysql -h csc365fall2017.webredirect.org aimccoy < MARATHON-build-marathon.sql

