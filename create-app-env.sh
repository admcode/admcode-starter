#!/bin/sh

echo "\n###############################################"
echo "##     Create an environment (.env) file     ##"
echo "###############################################\n"

#############################
#####	DEFAULT MODEL	#####
#############################
# APP_ENV=local				#
# APP_DEBUG=true			#
# APP_KEY=SomeRandomKey!!!	#
#							#
# DB_CONNECTION=mysql		#
# DB_HOST=localhost			#
# DB_PORT=3306				#
# DB_DATABASE=admcode-cli	#
# DB_USERNAME=admcode		#
# DB_PASSWORD=secret		#
#							#
# CACHE_DRIVER=memcached	#
# QUEUE_DRIVER=sync			#
#							#
#############################

# APP CONFIG
echo "Please enter APP_ENV: (default: local)"
read APP_ENV

echo "Please enter APP_DEBUG: (default: true)"
read APP_DEBUG

APP_KEY=`sh ./create-app-key.sh`

# DB CONFIG
echo "Please enter DB_CONNECTION: (default: mysql)"
read DB_CONNECTION

echo "Please enter DB_HOST: (default: localhost)"
read DB_HOST

echo "Please enter DB_PORT: (default: 3306)"
read DB_PORT

echo "Please enter DB_DATABASE: (default: admcode-cli)"
read DB_DATABASE

echo "Please enter DB_USERNAME: (default: admcode)"
read DB_USERNAME

echo "Please enter DB_PASSWORD: (default: secret)"
read DB_PASSWORD

# DRIVE CONFIG
echo "Please enter CACHE_DRIVER: (default: memcached)"
read CACHE_DRIVER

echo "Please enter QUEUE_DRIVER: (default: sync)"
read QUEUE_DRIVER


# Validating empty values
if [ -z "${APP_ENV}" ]; then
	APP_ENV="local"
fi
if [ -z "${APP_DEBUG}" ]; then
	APP_DEBUG=true
fi
if [ -z "${DB_CONNECTION}" ]; then
	DB_CONNECTION="mysql"
fi
if [ -z "${DB_HOST}" ]; then
	DB_HOST="localhost"
fi
if [ -z "${DB_PORT}" ]; then
	DB_PORT=3306
fi
if [ -z "${DB_DATABASE}" ]; then
	DB_DATABASE="admcode-cli"
fi
if [ -z "${DB_USERNAME}" ]; then
	DB_USERNAME="admcode"
fi
if [ -z "${DB_PASSWORD}" ]; then
	DB_PASSWORD="secret"
fi
if [ -z "${CACHE_DRIVER}" ]; then
	CACHE_DRIVER="memcached"
fi
if [ -z "${QUEUE_DRIVER}" ]; then
	QUEUE_DRIVER="sync"
fi

# Create file w/ configs
env_config="APP_ENV=$APP_ENV
APP_DEBUG=$APP_DEBUG
APP_KEY=$APP_KEY

DB_CONNECTION=$DB_CONNECTION
DB_HOST=$DB_HOST
DB_PORT=$DB_PORT
DB_DATABASE=$DB_DATABASE
DB_USERNAME=$DB_USERNAME
DB_PASSWORD=$DB_PASSWORD

CACHE_DRIVER=$CACHE_DRIVER
QUEUE_DRIVER=$QUEUE_DRIVER"

echo "$env_config" > ".env"

echo "#############################################"
echo "##     Created environment (.env) file     ##"
echo "#############################################"

#Developed by Ademílson F. Tonato <ademilsonft@outlook> ~ https://twitter.com/ftonato