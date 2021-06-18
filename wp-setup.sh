#!/bin/bash

#set -u # this line will enable debug

#*************************************
# Basic Tools for wordpress in docker
#
#*************************************

# Variables
#PROJECT=$(basename `pwd`)
PROJECT="my"
#PROJECT_PREFIX="docker"
PROJECT_PREFIX="wordpress"
PROJECT_NAME=${PROJECT}-${PROJECT_PREFIX}

# Date Variables
today=$(date +"%Y%m%d")
now=$(date +"%Y%m%d-%H%M")

# wordpress info
PROJECT_DOCKER=${PROJECT_NAME}_db
DB_HOST=$(docker exec -it ${PROJECT_DOCKER} hostname)

#************************************
# functions
#
#************************************

set_config() {
	echo "in set config"
}


get_config() {
	echo "in get config"
}

#---------------------------------------------
# Search and Replace in db
#
# Usage: search_replace "search" "replace with"
#
#--------------------------------------------
search_replace() {
        echo "${blue} Search and Replace $1 and $2"
        REPLACE_COMMAND=$(docker exec -it ${PROJECT_DOCKER} wp search-replace $1 $2 --skip-columns=guid --allow-root)
        echo "Result:"
	echo ${REPLACE_COMMAND}
        echo 
}

echo $PROJECT_NAME
echo $today
echo $now
echo $DB_HOST

# to replace a url in db
search_replace "http://wordpress.local" http://www.wordpress.local
