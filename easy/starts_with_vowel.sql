/*
Enter your query here.

select city from station 
where city like 'a%' or city like 'e%' or city like 'i%' or city  like 'o%' or city like 'u%';

regexp-->  regular expression
^ -> starts with

*/

select city from station        
where city regexp '^[aeiou]';
