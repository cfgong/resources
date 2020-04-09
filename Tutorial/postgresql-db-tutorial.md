# Detailed Tutorial: (Ubuntu on Windows) Setting up a postgresql and creating a database
*This tutorial details the setup for the first homework assignment of EECS 339: Intro to Databases (Spring 2019, with Prof. Jennie Rogers).*
### Setup
1) Downloading
Go to Ubuntu shell. If you don't have Ubuntu, [here](https://www.howtogeek.com/249966/how-to-install-and-use-the-linux-bash-shell-on-windows-10/) is a guide to install it. You need have Windows 10 for this. 
To download postgresql run:
```
sudo apt-get install postgresql
```
If you are getting a fetch related error, you may need to update apt-get first, and then try installing again. To update run:
```
sudo apt-get update
```
Now download pgAdmin. You will make a password for postgres while setting up pgAdmin. Make sure you remember that password. 

In the download log, you should get the message `Success. You can now start the database server using:`
Start the database using the given command. 
```
/usr/lib/postgresql/10/bin/pg_ctl -D /var/lib/postgresql/10/main -l logfile start
```
or 
```
/etc/init.d/postgresql start
```

2) Set up the database
Now go back to your terminal. To start psql with postgres run:
```
psql -U postgres -W -h localhost
```
It will prompt you for your password. If that doesn't work try:
```
psql -h localhost -p 5432 -U postgres
```
Now you should see something like:
```
postgres=#
```
to create a the university database run:
```
create database university;
```
(The instructions from Canvas say to run `createdb university`, so you can try that too). 
You should get a `CREATE DATABASE ` message. You can also check if the database was created properly by running `\list` and seeing if your database was created. 
Now you can want to import `university.pgd`.
To do this you need to make sure you are in the folder of `university.pgd` or have a relative path from your current folder to the file.
To print your current path do:
```
\! pwd
```
The simplest way to get to the correct folder is to CTRL-D to quit out of postgres and then `cd` into the correct folder where university.pgd is located, and then start postgres again. 
You can also navigate to the correct folder without exiting out of postgres, by running `\cd foldername`.
Now that you are in the correct folder, run the following in postgres:
```
\i university.pgd
psql university < university.pgd
```
To check that the university database was populated properly, run:
```
\dt
```
You should get something like:
```
List of relations
Schema | Name | Type | Owner
--------+---------+-------+----------
public | course | table | postgres
public | dept | table | postgres
public | enroll | table | postgres
public | major | table | postgres
public | prof | table | postgres
public | section | table | postgres
public | student | table | postgres
(7 rows)
```

3) Running queries
Now you can run queries from terminal and from pgAdmin.
From the terminal you can just do something like:
```
SELECT * FROM course;
```
The above query would return all the courses.
To run queries, start up pgAdmin. Your database will be located under PostgreSQL. For me, my tables showed up under postgres instead of university. To see your tables, go to postgres > Schemas > public > Tables. To run and SQL query go to Tools (at the top toolbar) and select Query Tool. Type your query into Query Editor. Click on the lightning bolt button to run your query.



### Debugging

Try uninstalling and reinstalling postgresql from terminal.
