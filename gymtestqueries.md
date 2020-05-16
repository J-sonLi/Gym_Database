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

2. Query that returns all members who quit the gym

```
SELECT member_fname, member_lname, member_phone, member_email, member_end FROM 
member_info WHERE 
member_end <> 0;
```
3. Query that returns all members who commute to the gym from another borough

```
SELECT member_id, member_city, gym_city FROM 
member_address JOIN 
member_info USING(member_id) JOIN 
gym_branch USING(gym_branch) 
WHERE gym_city <> member_city;
```

