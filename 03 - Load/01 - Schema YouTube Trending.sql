-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


-- YouTube ERD
CREATE TABLE "youtube_stats" (
    "index" INT   NOT NULL,
    "video_id" VARCHAR   NOT NULL,
    "trending_date" VARCHAR   NOT NULL,
    "title" VARCHAR   NOT NULL,
    "channel_title" VARCHAR   NOT NULL,
    "category_id" INT   NOT NULL,
    "publish_time" VARCHAR   NOT NULL,
    "views" INT   NOT NULL,
    "likes" INT   NOT NULL,
    "dislikes" INT   NOT NULL,
    "comment_count" INT   NOT NULL,
    CONSTRAINT "pk_youtube_stats" PRIMARY KEY (
        "index"
     )
);

CREATE TABLE "categories" (
    "category_id" INT   NOT NULL,
    "category" VARCHAR   NOT NULL,
    CONSTRAINT "pk_categories" PRIMARY KEY (
        "category_id"
     )
);

ALTER TABLE "youtube_stats" ADD CONSTRAINT "fk_youtube_stats_category_id" FOREIGN KEY("category_id")
REFERENCES "categories" ("category_id");

