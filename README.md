# census_data
parse census data

this repo's purpose is to serve to model parsing SF1 data and making it useful in postgress
the code here is basic sql code to be used to create, import and summarize basic sf1 tables.

Dependencies
------------
* SF1 data from http://www2.census.gov/census_2010/04-Summary_File_1/
* have postgress (or some other sql like software)

Contents
--------
* src/sql_create_geo.slq - creates and loads the geo header file
* sql_create_f04.sql - creates and loads the File 04 from SF1
* sql_analysis.sql - a simple summary statistics for age population example
* sf1_geo_header.md - a table layout of the geography header table for reference

Steps
-----
1. Download the SF1 data from [this url](http://www2.census.gov/census_2010/04-Summary_File_1/).  These are organized by states, and i tend to keep tables that way. it would be easy to change this to a set of master tables where state data from the site is appended, thats just not what i did here.

2. Open [the massive technical document for SF1 data](http://www.census.gov/prod/cen2010/doc/sf1.pdf).  it is a worth while read.  it is a great reference.  super handy for a) understanding the geography header file, which is very confusing and b) the Files in SF1 and how they are organized.  The basic principles one needs to know is 
* select what geography you hope to perform an analysis on (e.g. Tract).  Once you have that, know what the sumlev (summary level) is for that that geography.  
* know that the linking between the geography header file and the Files containing demographic data (e.g. File 04) is the logrecno (logical record number).
* establish which fields you are interested in performing analysis on (e.g. population by age, located in Table P12), and what files contain those tables (e.g. File 04).

3. Create a table for the geography header file and load the data in (e.g. sql_create_geo.sql).  this file is fixed width.

4. select the files you need demographic data for.  create the field structure to load said File (e.g. File 04), and copy the data into that table (e.g. sql_create_f04.sql)

5. perform the analysis (eg. sql_analysis.sql)

6. cross tab the data to make sure your summary statistics are correct.  sometimes i use [the US census quick facts site](http://www.census.gov/quickfacts/table/MAN450212/11) for example

