/*
Write a query identifying the type of each record in the TRIANGLES table using its three side lengths. Output one of the following statements for each record in the table:

Equilateral: It's a triangle with  sides of equal length.
Isosceles: It's a triangle with  sides of equal length.
Scalene: It's a triangle with  sides of differing lengths.
Not A Triangle: The given values of A, B, and C don't form a triangle.
Input Format

The TRIANGLES table is described as follows:



Each row in the table denotes the lengths of each of a triangle's three sides.


Sample Output

Isosceles
Equilateral
Scalene
Not A Triangle

*/

SELECT 
    CASE
        WHEN (A + B) <= c OR (b + C) <= A OR (A + c) <= b THEN "Not A Triangle"
        WHEN (A = B) AND (B = c) THEN "Equilateral"
        WHEN (A <> B) AND (A <> c) AND (B <> c) THEN "Scalene"
        ELSE "Isosceles"
END AS Type
        FROM TRIANGLES;