
-- YouTube ERD
CREATE TABLE "youtube_stats" (
    "video_id" INTEGER   NOT NULL,
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
        "video_id"
     )
);

CREATE TABLE "categories" (
    "category_id" INTEGER   NOT NULL,
    "category" VARCHAR   NOT NULL,
    CONSTRAINT "pk_categories" PRIMARY KEY (
        "category_id"
     )
);

ALTER TABLE "categories" ADD CONSTRAINT "fk_categories_category_id" FOREIGN KEY("category_id")
REFERENCES "youtube_stats" ("category_id");

