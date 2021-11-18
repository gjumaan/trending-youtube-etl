--List titles by most watched youtube video from combined US and CA databases--
SELECT combined_us_ca.title, MAX(combined_us_ca.views) AS views
FROM combined_us_ca
GROUP BY combined_us_ca.title
ORDER BY MAX(combined_us_ca.views) DESC;

--List titles by most watched video from US database--
SELECT merged_us.title, MAX(merged_us.views) AS views
FROM merged_us
GROUP BY merged_us.title
ORDER BY MAX(merged_us.views) DESC;

--List titles by most watched video from CA database--
SELECT merged_ca.title, MAX(merged_ca.views) AS views
FROM merged_ca
GROUP BY merged_ca.title
ORDER BY MAX(merged_ca.views) DESC;

--List titles by most liked video from combined US and CA databases--
SELECT combined_us_ca.title, MAX(combined_us_ca.likes) AS likes
FROM combined_us_ca
GROUP BY combined_us_ca.title
ORDER BY MAX(combined_us_ca.likes) DESC;

--List titles by most liked video from US database--
SELECT merged_us.title, MAX(merged_us.likes) AS likes
FROM merged_us
GROUP BY merged_us.title
ORDER BY MAX(merged_us.likes) DESC;

--List titles by most liked video from CA database--
SELECT merged_ca.title, MAX(merged_ca.likes) AS likes
FROM merged_ca
GROUP BY merged_ca.title
ORDER BY MAX(merged_ca.likes) DESC;

--List category_title by most liked from combined US and CA databases--
SELECT combined_us_ca.category_title, MAX(combined_us_ca.likes) AS likes
FROM combined_us_ca
GROUP BY combined_us_ca.category_title
ORDER BY MAX(combined_us_ca.likes) DESC;

--List title by most disliked video from combined US and CA databases--
SELECT combined_us_ca.title, MAX(combined_us_ca.dislikes) AS dislikes
FROM combined_us_ca
GROUP BY combined_us_ca.title
ORDER BY MAX(combined_us_ca.dislikes) DESC;

--List category_title by most disliked video from combined US and CA databases--
SELECT combined_us_ca.category_title, MAX(combined_us_ca.dislikes) AS dislikes
FROM combined_us_ca
GROUP BY combined_us_ca.category_title
ORDER BY MAX(combined_us_ca.dislikes) DESC;

--List title by most commented video from combined US and CA databases--
SELECT combined_us_ca.title, MAX(combined_us_ca.comments) AS comments
FROM combined_us_ca
GROUP BY combined_us_ca.title
ORDER BY MAX(combined_us_ca.comments) DESC;

--List category_title by most commented video from combined US and CA databases--
SELECT combined_us_ca.category_title, MAX(combined_us_ca.comments) AS comments
FROM combined_us_ca
GROUP BY combined_us_ca.category_title
ORDER BY MAX(combined_us_ca.comments) DESC;