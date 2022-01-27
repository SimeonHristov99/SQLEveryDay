# SQLPractice

Goal: Upload a solution to a database query problem. Solutions are written in PostgreSQL.

## Task 1

Write a query that calculates the difference between the highest salaries found in the marketing and engineering departments. Output just the difference in salaries.

| db_employee          | db_dept              |
| -------------------- | -------------------- |
| id - int             | id - int             |
| first_name - varchar | department - varchar |
| last_name - varchar  |                      |
| salary - int         |                      |
| department_id - int  |                      |

## Task 2

We have a table with employees and their salaries, however, some of the records are old and contain outdated salary information. Find the current salary of each employee assuming that salaries increase each year. Output their id, first name, last name, department ID, and current salary. Order your list by employee ID in ascending order.

| ms_employee_salary    |
| --------------------- |
| id - int64            |
| first_name - object   |
| last_name - object    |
| salary - int64        |
| department_id - int64 |

## Task 3

Find the average number of bathrooms and bedrooms for each city’s property types. Output the result along with the city name and the property type.


| customers             | orders                      |
| --------------------- | --------------------------- |
| id - int64            | id - int64                  |
| first_name - object   | cust_id - int64             |
| last_name - object    | order_date - datetime64[ns] |
| city - object         | order_details - object      |
| address - object      | total_order_cost - int64    |
| phone_number - object |

## Task 4

Find the details of each customer regardless of whether the customer made an order. Output the customer's first name, last name, and the city along with the order details. You may have duplicate rows in your results due to a customer ordering several of the same items. Sort records based on the customer's first name and the order details in ascending order.

## Task 5

Facebook has developed a new programing language called Hack.To measure the popularity of Hack they ran a survey with their employees. The survey included data on previous programing familiarity as well as the number of years of experience, age, gender and most importantly satisfaction with Hack. Due to an error location data was not collected, but your supervisor demands a report showing average popularity of Hack by office location. Luckily the user IDs of employees completing the surveys were stored. Based on the above, find the average popularity of the Hack per office location. Output the location along with the average popularity.

## Task 6

Compare each employee's salary with the average salary of the corresponding department. Output the department, first name, and salary of employees along with the average salary of that department.

## Task 7

Find the total cost of each customer's orders. Output customer's id, first name, and the total order cost. Order records by customer's first name alphabetically.

## Task 8

Write a query to find which gender gives a higher average review score when writing reviews as guests. Use the `from_type` column to identify guest reviews. Output the gender and their average review score.

Tables:

| airbnb_reviews      | airbnb_guests         |
| ------------------- | --------------------- |
| from_user - int     | guest_id - int        |
| from_user - int     | nationality - varchar |
| to_user - int       | gender - varchar      |
| from_type - varchar | age - int             |
| to_type - varchar   |                       |
| review_score - int  |                       |

## Task 9

Find all posts which were reacted to with a heart.

Tables:

| facebook_reactions | facebook_posts          |
| ------------------ | ----------------------- |
| poster - int       | post_id - int           |
| friend - int       | poster - int            |
| reaction - varchar | post_text - varchar     |
| date_day - int     | post_keywords - varchar |
| post_id - int      | post_date - datetime    |

## Task 10

Find the average number of beds in each neighborhood that has at least 3 beds in total. Output results along with the neighborhood name and sort the results based on the number of average beds in descending order.

Table:

| airbnb_search_details            |
| -------------------------------- |
| id - int                         |
| price - float                    |
| bed_type - varchar               |
| host_identity_verified - varchar |
| host_response_rate - varchar     |
| host_since - datetime            |
| neighbourhood - varchar          |
| number_of_reviews - int          |
| review_scores_rating - float     |
| zipcode - int                    |
| bedrooms - int                   |
| beds - int                       |

## Task 11

Find the last time each bike was in use. Output both the bike number and the date-timestamp of the bike's last use (i.e., the date-time the bike was returned). Order the results by bikes that were most recently used.

Table:

| dc_bikeshare_q1_2012    |
| ----------------------- |
| duration - varchar      |
| duration_seconds - int  |
| start_time - datetime   |
| start_station - varchar |
| start_terminal - int    |
| end_time - datetime     |
| end_station - varchar   |
| end_terminal - int      |
| bike_number - varchar   |
| rider_type - varchar    |
| id - int                |

## Task 12

Return the total number of comments received for each user in the last 30 days. Don't output users who haven't received any comment in the defined time period. Assume today is 2020-02-10.

Table:

| fb_comments_count        |
| ------------------------ |
| user_id - int            |
| created_at - datetime    |
| number_of_comments - int |

## Task 13

Find all wineries which produce wines by possessing aromas of plum, cherry, rose, or hazelnut. Output unique winery values only.

Table:

| winemag_p1            |
| --------------------- |
| id - int              |
| country - varchar     |
| description - varchar |
| designation - varchar |
| points - int          |
| price - float         |
| province - varchar    |
| region_1 - varchar    |
| region_2 - varchar    |
| variety - varchar     |
| winery - varchar      |

## Task 14

Find the base pay for Police Captains. Output the employee name along with the corresponding base pay.

| sf_public_salaries       |
| ------------------------ |
| id - int                 |
| employeename - varchar   |
| jobtitle - varchar       |
| basepay - float          |
| overtimepay - float      |
| otherpay - float         |
| benefits - float         |
| totalpay - float         |
| totalpaybenefits - float |
