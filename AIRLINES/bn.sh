#!/bin/bash

echo mysql -h csc365fall2017.webredirect.org aimccoy < AIRLINES-cleanup.sql
echo mysql -h csc365fall2017.webredirect.org aimccoy < AIRLINES-setup.sql
echo mysql -h csc365fall2017.webredirect.org aimccoy < AIRLINES-build-airlines.sql
echo mysql -h csc365fall2017.webredirect.org aimccoy < AIRLINES-build-airports100.sql
echo mysql -h csc365fall2017.webredirect.org aimccoy < AIRLINES-build-flights.sql
