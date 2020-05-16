# Gym Database
A gym management system has many attributes consisting of members, employees, guests, etc. This project is about managing these attributes using mySQL.

## Visualization
In the `erd` file, you can see an er diagram for this project which shows the relationship between the tables.
## Setup

1) Import the data from the folder `csv tables` into your directory
>**Note: `csv tables` and its content are made up data**

2) On mySQL, copy the commands from the `gymtables`file
>**Note: The `gymtables` file has labels in the file to identify each table**
>
>**You will need to manually enter the tables one at a time using this file**
>
>**You can copy+paste the commands from `gymtablesfast` instead if you do not want to manually copy each table individually**

After loading the tables into your database, use this command to show a list of all tables in your current database 
```
show tables;
```

3) Insert the commands from the `loaddata` file to load the data from `csv tables` into the tables created by `gymtables`
>**Note: In the `loaddata` file, you will need to change `<FILEPATH>` to your specific file path where you stored the `csv tables`**

## Testing

In the `gymtestqueries` file, there are example queries that can be tested on mySQL.  
Query results should reflect on the data loaded in from `csv tables`.


