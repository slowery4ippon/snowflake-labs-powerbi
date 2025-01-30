# Setup
For this demo we are going to use a dataset from Kaggle. We'll start with creating a role that will have privileges to create tables, load data, and other necessary permissions.

## Snowflake setup
To get started, let's go to kaggle and pick out a dataset to use for our demo. The dataset we will be working with is the [Athlete Injury and Performance Dataset](https://www.kaggle.com/datasets/ziya07/athlete-injury-and-performance-dataset). We'll have this downloaded to our local file system and once our Snowflake role is setup we can do a load to a table. To setup our Snowflake role and environment we're going to use the Account Admin role. This is where we create a database, schema, and role with privileges to allow an analsyst to access the data.

The setup script contains the necessary steps to setup your role. Review the script, change text `YOUR_USER_HERE` to your snowflake username, and execute the script in your SQL Worksheet.


## PowerBI setup
Walk through setting up powerbi web
