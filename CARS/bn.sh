#!/bin/bash

echo cleanup
mysql -h csc365fall2017.webredirect.org aimccoy < CARS-cleanup.sql

echo setup
mysql -h csc365fall2017.webredirect.org aimccoy < CARS-setup.sql

echo build continents
mysql -h csc365fall2017.webredirect.org aimccoy < CARS-build-continents.sql

echo build countries
mysql -h csc365fall2017.webredirect.org aimccoy < CARS-build-countries.sql

echo build makers
mysql -h csc365fall2017.webredirect.org aimccoy < CARS-build-car-makers.sql

echo build names
mysql -h csc365fall2017.webredirect.org aimccoy < CARS-build-car-names.sql

echo build model list
mysql -h csc365fall2017.webredirect.org aimccoy < CARS-build-model-list.sql

echo build data
mysql -h csc365fall2017.webredirect.org aimccoy < CARS-build-cars-data.sql







