/*
  Create a To Do List database
  Copyright JoshAshmore.com 2022
*/
CREATE TABLE todo_list (id INTEGER PRIMARY KEY, item TEXT, minutes INTEGER);

--Add some items to my list
INSERT INTO todo_list VALUES (1, "Wash the dishes", 20);
INSERT INTO todo_list VALUES (2, "Vacuum bedroom", 5);
INSERT INTO todo_list VALUES (3, "Sweep common area", 20);
INSERT INTO todo_list VALUES (4, "Walk Kahlua", 15);

--Display my list of items to do
SELECT * FROM todo_list;

--How long should the list take to complete?
SELECT SUM(minutes) FROM todo_list;

--How long should each task take, more or less?
SELECT AVG(minutes) FROM todo_list;
