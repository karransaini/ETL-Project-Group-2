--YouTube ERD

youtube_stats
-
index INT PK
video_id VARCHAR 
trending_date VARCHAR
title VARCHAR
channel_title VARCHAR
category_id INT FK >- categories.category_id
publish_time VARCHAR
views INT
likes INT
dislikes INT
comment_count INT

categories
-
category_id INT PK
category VARCHAR