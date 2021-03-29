# teamfireescape
# ETL Project Proposal:
### Members: Riley, Sofanit, Robert
### Fires Reported versus Confirmed in the City of Minneapolis 2019

Data will be extracted from two csv files that were gathered from opendata.minneapolismn.gov. One dataset contains "Fires Confirmed 2019" and the other contains "Fires Reported 2019" and have 1,300 and 40,000 rows of data, respectively.
Put both datasets into Pandas dataframes. The "Date" columns have a date and timestamp, we will remove the timestamp. Each csv has 27 columns so we will drop them down to 5 or 6.
Load the data into a SQL database (fires2019_db) with a fires_confirmed, fires_reported table.

# ETL Project Report

### Extract:
The data was sourced from http://opendata.minneapolismn.gov/ in csv format. The data was read into Pandas using pd.read_csv.
* Source for Fires Confirmed:
https://data.world/minneapolismn/b2d457b622094730a55f1ec731fab250-0
* Source for Fires Reported:
https://data.world/minneapolismn/2cd887d6fdd0466b8105ec60347e6645-0

### Transform:
The data cleaning that was required included:
* Dropping several unnecessary columns
* Altering the "Incident Number" column to exclude the "19-" prefix
* Cleaned the date column by dropping the timestamp and changing to datetime type
* Combined the three street address columns into one column

### Load:
A SQL database was chosen as our data tables were simple and easy to create in SQL and we felt most comfortable using SQL. To load the dataframes into a SQL database, we first created a database in pgAdmin. Then, two tables were created in this database to correspond with our two dataframes. Finally, data was loaded into our database using a sqlalchemy engine connection and utilizing pd.to_sql .

# Instructions for Use:

##### Extract & Transform
1. The data of interest should be downloaded from the sources mentioned above in CSV format. Save these in a folder called "Resources" within your working directory.
2. Open a Jupyter Notebook in the working directory and import the data in to Pandas Dataframes using `pd.read_csv`
3. Transform and clean the data using Pandas methods. This can include:
    - Dropping unnecessary columns
    - Change data type of date column to `datetime`
    - Rename columns
    - Concatenate address columns into one column
    - Any other cleaning that makes the data easier to work with
4. Save final cleaned Dataframe that is ready to be loaded into database
5. Repeat steps 1-4 for each dataset. For example, repeat these steps for both the "fires_reported" and "fires_confirmed" datasets.

##### Load
6. Create a new SQL database in pgAdmin named "fire_db"
7. Create new tables in this database: "fires_reported" and "fires_confirmed"
8. Tables columns should correspond with the dataframe columns. Be sure to create a primary key using `id SERIAL PRIMARY KEY`
9. Using sqlalchemy's `create_engine` method, create an engine connection to the postgres database.
10. Use `pd.to_sql` to load formated dataframes into the database.
11. Either in the Jupyter Notebook or in pgAdmin, examine the database tables to ensure the data was loaded correctly.
12. Repeat steps 6-11 for each dataset. For example, repeat these steps for both the "fires_reported" and "fires_confirmed" datasets.
