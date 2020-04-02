--YouTube ERD

youtube_stats
-
video_id INTEGER PK
trending_date VARCHAR
title VARCHAR
channel_title VARCHAR
category_id INT 
publish_time VARCHAR
views INT
likes INT
dislikes INT
comment_count INT

categories
-
category_id INTEGER PK FK >- youtube_stats.category_id
category VARCHAR