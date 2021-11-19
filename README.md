**Trending Youtube videos-ETL**

Objective:
The objective is to perform the ETL(Extract-Transform-Load) process by reading the dataset of Trending YouTube videos obtained from Kaggle, cleaning the dataset in the desired form and loading into a database for storage.

Data Source:
https://www.kaggle.com/datasnaek/youtube-new

Methodology:
We have been provided with the dataset of YouTube videos that have been trending in Canada and US along with the dataset of various categories they are belonging to. We are required to perform an ETL on the datasets which can be uploaded into production to determine which categories or video are most or least popular after depending on number of views, likes, dislikes and comments.

We have performed ETL in three steps:

1. Extraction: The data has been downloaded from public platform Kaggle, the files used for extraction were originally formatted as .csv and .json:
   https://www.kaggle.com/datasnaek/youtube-new#CAvideos.csv
   https://www.kaggle.com/datasnaek/youtube-new#USvideos.csv
   https://www.kaggle.com/datasnaek/youtube-new#US_category_id.json
   https://www.kaggle.com/datasnaek/youtube-new#CA_category_id.json
The .csv and .json files are then read into a Pandas data frame in Jupyter notebook.

2. Transformation: Python has been used as the tool for transformation of datasets using the Pandas Library.

3. Loading: Relational database PostgresSQL has been used to load the data.
