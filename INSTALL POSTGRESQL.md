Installation

Step 1 : Start terminal window in your Ubuntu system and execute the following command :

 * sudo apt-get install postgresql

------------------------------------

Step 2: Change the PostgreSQL postgres user password. Run the following command, which will
take you to the PostgreSQL command line.

 * sudo -u postgres psql postgres

While installing PostgreSQL username and password is postgres.

Now, run 
  * \password postgres

and Enter new password: don.214


 
---------------------------------------------
Step 3: Create Database using command line in Linux.

run the following command to create a database.

 * createdb example3

Once a database is created using either of the above-mentioned methods, you can check it in the list
of databases using \l .

-------------------------------------------------

Step 4: Create Table using dump.sql

Just copy all content of dump.sql and paste it into teminal.

To chec table run:

 * select * from cordinates;

--------------------------------------------------------




