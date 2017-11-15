#!/bin/bash

echo cleanup
mysql -h csc365fall2017.webredirect.org aimccoy < INN-cleanup.sql

echo setup
mysql -h csc365fall2017.webredirect.org aimccoy < INN-setup.sql

echo build rooms
mysql -h csc365fall2017.webredirect.org aimccoy < INN-build-Rooms.sql

echo build reservations
mysql -h csc365fall2017.webredirect.org aimccoy < INN-build-Reservations.sql
