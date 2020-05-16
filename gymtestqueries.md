# Test queries for gym database using mySQL

1. Query that returns guests who sign up to become members

```
SELECT member_id, member_fname, member_lname FROM 
member_info JOIN 
guest_info WHERE 
member_fname = guest_fname AND 
member_lname = guest_lname AND 
member_email = guest_email ORDER BY 
LENGTH(member_id), member_id;
```

Query using the data given should return: 

```
+-----------+--------------+--------------+
| member_id | member_fname | member_lname |
+-----------+--------------+--------------+
| M3        | Winfield     | Leiv         |
| M8        | Nahal        | Epaphroditos |
| M14       | Hyun-Seung   | Lee          |
| M20       | Lewin        | Paulina      |
+-----------+--------------+--------------+
4 rows in set (0.00 sec)
```

2. Query that returns all members who quit the gym

```
SELECT member_fname, member_lname, member_phone, member_email, member_end FROM 
member_info WHERE 
member_end <> 0;
```

Query using the data given should return:

```
+--------------+--------------+--------------+------------------------+------------+
| member_fname | member_lname | member_phone | member_email           | member_end |
+--------------+--------------+--------------+------------------------+------------+
| Edward       | Washington   | 3471230932   | ewashington@yahoo.com  | 2017-05-12 |
| Danny        | Yuyu         | 7189654785   | dannyuyuyuyu@gmail.com | 2017-08-26 |
| Scott        | Baker        | 3474853275   | scottbaker@gmail.com   | 2017-06-24 |
| Bob          | Cunningham   | 7182349381   | bobbbbb@gmail.com      | 2019-11-14 |
| Jill         | Dawson       | 9178264822   | jiiiiiiill@gmail.com   | 2017-06-13 |
+--------------+--------------+--------------+------------------------+------------+
5 rows in set (0.00 sec)
```

3. Query that returns all members who commute to the gym from another borough

```
SELECT member_id, member_city, gym_city FROM 
member_address JOIN 
member_info USING(member_id) JOIN 
gym_branch USING(gym_branch) 
WHERE gym_city <> member_city;
```

Query using the data given should return:

```
+-----------+-------------+-----------+
| member_id | member_city | gym_city  |
+-----------+-------------+-----------+
| M5        | Manhattan   | Queens    |
| M11       | Brooklyn    | Manhattan |
| M16       | Queens      | Manhattan |
+-----------+-------------+-----------+
3 rows in set (0.00 sec)
```






