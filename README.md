*last update: 2015-01-19*

# MySQL Docker Container for OSX

This is a docker image based on the official [MySQL container](https://hub.docker.com/_/mysql/) that solves the file permissions issue when trying to map a local directory to /var/lib/mysql on the docker container by assigning the UID and GID of the current OSX user to the mysql user in the containter.

# USAGE

Simply run a detached container based on this image:

    docker run -d -v <my_data_dir>:/var/lib/mysql -e MYSQL_ROOT_PASSWORD=<my_password> theredlabs/mysql-osx

where *my_data_dir* is your local data folder in OSX and *my_password* is the desired root password for mysql.