-- SQL Schema
-- Table: Triangle

-- +-------------+------+
-- | Column Name | Type |
-- +-------------+------+
-- | x           | int  |
-- | y           | int  |
-- | z           | int  |
-- +-------------+------+
-- (x, y, z) is the primary key column for this table.
-- Each row of this table contains the lengths of three line segments.
 

-- Write an SQL query to report for every three line segments whether they can form a triangle.

-- Return the result table in any order.

-- The query result format is in the following example.

 select
    x,
    y,
    z,
    iif( x+y > z and y + z > x and x + z > y, 'Yes', 'No') as triangle
from triangle