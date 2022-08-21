/*
  Assemble, Display, and Evaluate Pricing at Russo's Pizza
  Copyright JoshAshmore.com 2017
*/
CREATE TABLE russos (id INTEGER PRIMARY KEY, item TEXT, section TEXT, price NUMERIC, popularity INTEGER);

INSERT INTO russos VALUES (NULL, "Fettuccine Alfredo", "Pasta", 11.95, 10);
INSERT INTO russos VALUES (NULL, "Ravioli Pomodoro", "Pasta", 11.95, 1);
INSERT INTO russos VALUES (NULL, "Baked Ziti", "Pasta", 10.95, 10);
INSERT INTO russos VALUES (NULL, "Spaghetti", "Pasta", 9.95, 10);
INSERT INTO russos VALUES (NULL, "Chicken & Kale Cannelloni", "Pasta", 11.95, 5);
INSERT INTO russos VALUES (NULL, "Penne alla Vodka", "Pasta", 11.95, 1);
INSERT INTO russos VALUES (NULL, "Lasagna", "Pasta", 12.95, 10);
INSERT INTO russos VALUES (NULL, "Gnocchi Bolognese", "Pasta", 12.95, 5);
INSERT INTO russos VALUES (NULL, "Pasta Flava", "Pasta", 11.95, 5);
INSERT INTO russos VALUES (NULL, "Chicken Pesto Pasta", "Pasta", 12.95, 10);
INSERT INTO russos VALUES (NULL, "Spaghetti Carbonara", "Pasta", 12.95, 1);
INSERT INTO russos VALUES (NULL, "Rigatoni Rosso", "Pasta", 10.95, 1);
INSERT INTO russos VALUES (NULL, "Pasta Primavera", "Pasta", 11.95, 1);
INSERT INTO russos VALUES (NULL, "Italian Deli", "Sandwich", 9.95, 5);
INSERT INTO russos VALUES (NULL, "Meatball Parmesan", "Sandwich", 9.95, 10);
INSERT INTO russos VALUES (NULL, "Chicken Portabella", "Sandwich", 9.95, 1);
INSERT INTO russos VALUES (NULL, "Wings Fra Diavolo", "Appetizer", 9.95, 10);
INSERT INTO russos VALUES (NULL, "Spinach, Kale & Artichoke Dip", "Appetizer", 10.95, 10);
INSERT INTO russos VALUES (NULL, "Calamari Fritti", "Appetizer", 10.95, 10);
INSERT INTO russos VALUES (NULL, "Garlic Knots", "Appetizer", 9.95, 10);
INSERT INTO russos VALUES (NULL, "Mozzarella Fritti", "Appetizer", 9.95, 10);
INSERT INTO russos VALUES (NULL, "Russo's Famous Meatballs", "Appetizer", 5.95, 10);
INSERT INTO russos VALUES (NULL, "Minestrone Soup", "Soup", 4.95, 1);
INSERT INTO russos VALUES (NULL, "Tomato Basil Soup", "Soup", 4.95, 10);
INSERT INTO russos VALUES (NULL, "Tortellini Brodo Soup", "Soup", 4.95, 1);
INSERT INTO russos VALUES (NULL, "Clam Chowder Soup", "Soup", 4.95, 5);
INSERT INTO russos VALUES (NULL, "House Salad", "Salad", 4.95, 10);
INSERT INTO russos VALUES (NULL, "Insalata Caprese Salad", "Salad", 10.95, 10);
INSERT INTO russos VALUES (NULL, "Greek Salad", "Salad", 5.95, 10);
INSERT INTO russos VALUES (NULL, "Chicken & Kale Pesto Pasta Salad", "Salad", 12.95, 1);
INSERT INTO russos VALUES (NULL, "Caesar Salad", "Salad", 4.95, 10);
INSERT INTO russos VALUES (NULL, "Cucumber & Feta Salad", "Salad", 7.95, 5);
INSERT INTO russos VALUES (NULL, "Stromboli Calzone", "Calzone", 11.95, 10);
INSERT INTO russos VALUES (NULL, "New York Calzone", "Calzone", 11.95, 5);
INSERT INTO russos VALUES (NULL, "Greek Calzone", "Calzone", 11.95, 1);


--What is the average price of EVERY menu item?
SELECT AVG(price) FROM russos;

--What is the average price for salads?
SELECT AVG(price) FROM russos WHERE section="Salad";

--What is the average price for pastas?
SELECT AVG(price) FROM russos WHERE section="Pasta";

--Show Popular Items from entire menu:
SELECT item, price FROM russos WHERE popularity>5 ORDER BY price;

--Show Popular Starters:
SELECT item, price FROM russos WHERE popularity>5 AND (section="Soup" OR section="Salad" OR section="Appetizer") ORDER BY price;

--Show Popular Meals:
SELECT item, price FROM russos WHERE popularity>5 AND (section="Calzone" OR section="Pasta" or section="Sandwich") ORDER BY price;
