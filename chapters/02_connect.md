# Connect the two things
Review the role perms in snowflake that we set up before. If there's anything powerbi specific, call that out here.

## Create connection
Here we will go over how to make the connection between Snowflake and Power BI. 

1. Let’s start by selecting Get Data from the Home ribbon in our Power BI Desktop application and click `Get Data From Another Source` <img src="https://github.com/slowery4ippon/snowflake-labs-powerbi/blob/os_powerbi/imgs/Capture1.PNG" alt="Get data from another souce" width="500"/>!

2. Select Database from the categories on the left sidebar. You can either search Snowflake in the search bar or click scroll through and find Snowflake in the Database tab.        <center><img src="https://github.com/slowery4ippon/snowflake-labs-powerbi/blob/os_powerbi/imgs/Capture2.PNG" alt="Screenshot of Snowflake Icon" width="500" height="400"/><center>
3. A window will appear prompting you to provide your Snowflake Server and the Snowflake Compute Warehouse.<center><img src="https://github.com/slowery4ippon/snowflake-labs-powerbi/blob/os_powerbi/imgs/Capture4.PNG" alt="Screenshot snowflake server conection" width="500" height="300"/><center>
4. Open the Advanced options and drop down giving more options to enter. Here we will enter the Snowflake role and database that we will be working with. Select Ok. <center><img src="https://github.com/slowery4ippon/snowflake-labs-powerbi/blob/os_powerbi/imgs/Capture6.PNG" alt="Screenshot of advanced option" width="500" height="300"/><center>
5. Sign in to your Snowflake computing warehouse by entering your username and password, and then select Connect.
6. In the Navigator you will be able to see the available Snowflake Databases your role has permission to. Select the table for this demo and click Load to load the table in Power BI Desktop. <center><img src="https://github.com/slowery4ippon/snowflake-labs-powerbi/blob/os_powerbi/imgs/Capture7.PNG" alt="screenshot of navigator" width="500" height="300"/><center>
7. Select Import to import all the data directly into Power BI.<center><img src="https://github.com/slowery4ippon/snowflake-labs-powerbi/blob/os_powerbi/imgs/Capture9.PNG" alt="Screenshot of import data" width="500" height="300"/><center>


## Refresh a table
In the snowflake environment let's add a row into our table and see if our data refreshes in Power BI. Copy the following code to insert a row into the table. 

```SQL
// Insert into table
insert into collegiate_athlete_injury_dataset (ATHLETE_ID, AGE, GENDER, HEIGHT_CM, WEIGHT_KG, POSITION, TRAINING_INTENSITY,TRAINING_HOURS_PER_WEEK, RECOVERY_DAYS_PER_WEEK, MATCH_COUNT_PER_WEEK,REST_BETWEEN_EVENTS_DAYS, FATIGUE_SCORE,PERFORMANCE_SCORE, TEAM_CONTRIBUTION_SCORE,LOAD_BALANCE_SCORE,ACL_RISK_SCORE,INJURY_INDICATOR)
VALUES ('A201', 21, 'Female', 160, 70, 'Gaurd', 8, 5, 2, 3, 1, 4, 88, 90, 100, 50, 0);
```

In the screenshot we see the last row has been updated our Power BI desktop. 
![Screenshot of the refreshed table](https://github.com/slowery4ippon/snowflake-labs-powerbi/blob/os_powerbi/imgs/Screenshot%202025-01-30%20at%201.12.24%20PM.png)
