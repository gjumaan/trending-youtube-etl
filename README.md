**Trending YouTube videos-ETL**

Project team members : Shreyansh Saraiya, Anji Asthana, Jumaan George

•	Objective:
The objective is to perform the ETL(Extract-Transform-Load) process by reading the dataset of Trending YouTube videos obtained from Kaggle, cleaning the dataset in the desired form and loading into a database for storage.

•	Data Source:
https://www.kaggle.com/datasnaek/youtube-new

•	Methodology:
We have been provided with the dataset of YouTube videos trending in Canada (CA) and the United States (US) along with the dataset of various categories they are belonging to. We are required to perform an ETL on the datasets which can be uploaded into production to determine which categories or video are most or least popular after depending on number of views, likes, dislikes and comments.

•	We have performed ETL in three steps:

**Extraction**: 
1. Download the following data files from public platform Kaggle. 

    • https://www.kaggle.com/datasnaek/youtube-new#CAvideos.csv

    • https://www.kaggle.com/datasnaek/youtube-new#USvideos.csv

    • https://www.kaggle.com/datasnaek/youtube-new#US_category_id.json

    • https://www.kaggle.com/datasnaek/youtube-new#CA_category_id.json

2. Import dependencies and read the .csv and .json files into a Pandas dataframe using Jupyter notebook. `Additional technical details outlined in jupyter notebook`.

**Transformation**: 

3. Drop unnecessary columns and rename existing columns for readability.`Additional technical details outlined in jupyter notebook`.

4. Check for any duplicate data and drop them. 

5. From category dataframes (jsons) extract "category_id" and "category_title" from the "items" list.

6. Iterate over "items" list and append the various ids and titles in separate lists to create new dataframes.

7. Merge the United States (US) and Canadian (CA) video databases with respective category dataframes. 

8. Once merged, add "country" column to merged dataframes to specify which country the data originates from more clearly.

**Loading**: 

9. Create connection to PostgreSQL relational database using `create_engine()` command in jupyter notebook.

10. Open PostgreSQL to create new database outlined in connection above (youtube_db).
  
11. In the new PostgreSQL database, open query tool and use "Table_Schemata" SQL code to create 3 tables prior to data upload from jupyter notebook.

12. Return to jupyter notebook and check for tables to ensure connection made correctly.

13. Load US and CA merged dataframes from step 8 to PostgreSQL tables.

14. Confirm data has been uploaded correctly by querying tables in jupyter notebook. 

15. Return to PostgreSQL database, open query tool and use "Queries" SQL code to retrieve information from tables. 
