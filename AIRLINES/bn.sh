#!/bin/bash

mysql -h csc365fall2017.webredirect.org aimccoy < AIRLINES-cleanup.sql
mysql -h csc365fall2017.webredirect.org aimccoy < AIRLINES-build.sql
mysql -h csc365fall2017.webredirect.org aimccoy < AIRLINES-build-airlines.sql
mysql -h csc365fall2017.webredirect.org aimccoy < AIRLINES-airports100.sql
mysql -h csc365fall2017.webredirect.org aimccoy < AIRLINES-flights.sql
mysql -h csc365fall2017.webredirect.org aimccoy < AIRLINES-test.sql
