--Select all columns from 'categories' table:
SELECT 
	* 
FROM 
	categories;

--Select all columns from 'youtube_stats' table:
SELECT 
	* 
FROM 
	youtube_stats;

-- Join the two tables on category_id:
SELECT 
	ys.video_id, 
	ys.trending_date, 
	ys.title, 
	ys.channel_title, 
	ys.publish_time, 
	ys.views, 
	ys.likes, 
	ys.dislikes, 
	ys.comment_count,
	c.category_id, 
	c.category
FROM 
	youtube_stats ys
JOIN 
	categories c 
ON 
	ys.category_id = c.category_id;