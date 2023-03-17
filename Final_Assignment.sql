-- Create database called DB_Assignment
CREATE DATABASE DB_Assignment;

USE DB_Assignment;

-- Create User table with columns user id, first name, last name, gender, address, mobile number, email, country, state, city.  
CREATE TABLE DB_Assignment.Users (
    `UserID` INT AUTO_INCREMENT,
    `FirstName` VARCHAR(100) NOT NULL,
    `LastName` VARCHAR(100) NOT NULL,
    `Gender` VARCHAR(20) NOT NULL,
    `Address` VARCHAR(400) NOT NULL,
    `MobileNumber` NUMERIC NOT NULL UNIQUE,
    `Email` VARCHAR(100) NOT NULL UNIQUE,
    `Country` VARCHAR(50) NOT NULL,
    `State` VARCHAR(50) NOT NULL,
    `City` VARCHAR(50) NOT NULL,
    PRIMARY KEY (`UserID`)
);

-- Insert some data into user table
insert into DB_Assignment.Users (FirstName, LastName, Gender, Address, MobileNumber, Email, Country, State, City) values ('Kelby', 'MacCulloch', 'Male', '835 Mendota Way', '3723548776', 'kmacculloch0@virginia.edu', 'United States', 'North Carolina', 'Charlotte');
insert into DB_Assignment.Users (FirstName, LastName, Gender, Address, MobileNumber, Email, Country, State, City) values ('Hersh', 'Laroux', 'Male', '00 Pennsylvania Avenue', '1555367631', 'hlaroux1@ed.gov', 'United States', 'Illinois', 'Peoria');
insert into DB_Assignment.Users (FirstName, LastName, Gender, Address, MobileNumber, Email, Country, State, City) values ('Diego', 'Nell', 'Male', '92490 Riverside Drive', '6512491653', 'dnell2@biblegateway.com', 'United States', 'Alaska', 'Fairbanks');
insert into DB_Assignment.Users (FirstName, LastName, Gender, Address, MobileNumber, Email, Country, State, City) values ('Orion', 'Edworthie', 'Male', '43429 Ridge Oak Road', '6204388967', 'oedworthie3@spotify.com', 'United States', 'Georgia', 'Lawrenceville');
insert into DB_Assignment.Users (FirstName, LastName, Gender, Address, MobileNumber, Email, Country, State, City) values ('Siusan', 'Adamini', 'Polygender', '73335 Canary Place', '3847018035', 'sadamini4@flickr.com', 'United States', 'Arizona', 'Peoria');
insert into DB_Assignment.Users (FirstName, LastName, Gender, Address, MobileNumber, Email, Country, State, City) values ('Bail', 'Skilling', 'Male', '8 Rowland Plaza', '9648148740', 'bskilling5@europa.eu', 'United States', 'Indiana', 'Evansville');
insert into DB_Assignment.Users (FirstName, LastName, Gender, Address, MobileNumber, Email, Country, State, City) values ('Edi', 'Brunskill', 'Female', '1 Surrey Park', '3861169479', 'ebrunskill6@ox.ac.uk', 'United States', 'Michigan', 'Detroit');
insert into DB_Assignment.Users (FirstName, LastName, Gender, Address, MobileNumber, Email, Country, State, City) values ('Sally', 'Greiswood', 'Female', '54 Anzinger Street', '2818986567', 'sgreiswood7@nydailynews.com', 'United States', 'Florida', 'Miami');
insert into DB_Assignment.Users (FirstName, LastName, Gender, Address, MobileNumber, Email, Country, State, City) values ('Bunny', 'Ghioni', 'Female', '518 Roxbury Trail', '0281373477', 'bghioni8@amazon.co.uk', 'United States', 'Georgia', 'Atlanta');
insert into DB_Assignment.Users (FirstName, LastName, Gender, Address, MobileNumber, Email, Country, State, City) values ('Elden', 'Reuven', 'Genderfluid', '0508 Ludington Circle', '4257192550', 'ereuven9@tinypic.com', 'United States', 'Pennsylvania', 'New Castle');
insert into DB_Assignment.Users (FirstName, LastName, Gender, Address, MobileNumber, Email, Country, State, City) values ('Hobey', 'MacCourt', 'Bigender', '63860 Westend Street', '4322100406', 'hmaccourta@people.com.cn', 'United States', 'Texas', 'Dallas');
insert into DB_Assignment.Users (FirstName, LastName, Gender, Address, MobileNumber, Email, Country, State, City) values ('Mervin', 'Gianinotti', 'Male', '0 Pierstorff Junction', '6234705723', 'mgianinottib@tuttocitta.it', 'United States', 'District of Columbia', 'Washington');
insert into DB_Assignment.Users (FirstName, LastName, Gender, Address, MobileNumber, Email, Country, State, City) values ('Elicia', 'Orgel', 'Female', '42517 Bartillon Trail', '0460561723', 'eorgelc@shop-pro.jp', 'United States', 'Texas', 'Spring');
insert into DB_Assignment.Users (FirstName, LastName, Gender, Address, MobileNumber, Email, Country, State, City) values ('Cele', 'Kennifick', 'Genderfluid', '0547 Warner Place', '3512474888', 'ckennifickd@webs.com', 'United States', 'New York', 'Rochester');
insert into DB_Assignment.Users (FirstName, LastName, Gender, Address, MobileNumber, Email, Country, State, City) values ('Claire', 'Iacomelli', 'Male', '02 Granby Terrace', '9785386589', 'ciacomellie@economist.com', 'United States', 'Colorado', 'Boulder');
insert into DB_Assignment.Users (FirstName, LastName, Gender, Address, MobileNumber, Email, Country, State, City) values ('Gilburt', 'Simm', 'Male', '953 Northport Circle', '9965433704', 'gsimmf@google.cn', 'United States', 'Florida', 'Bradenton');
insert into DB_Assignment.Users (FirstName, LastName, Gender, Address, MobileNumber, Email, Country, State, City) values ('Ofelia', 'Chafney', 'Female', '652 Oxford Alley', '3368727176', 'ochafneyg@wikimedia.org', 'United States', 'Iowa', 'Des Moines');
insert into DB_Assignment.Users (FirstName, LastName, Gender, Address, MobileNumber, Email, Country, State, City) values ('Pammie', 'Broske', 'Female', '2 Troy Circle', '7180584797', 'pbroskeh@spiegel.de', 'United States', 'Florida', 'Jacksonville');
insert into DB_Assignment.Users (FirstName, LastName, Gender, Address, MobileNumber, Email, Country, State, City) values ('Maury', 'Lewtey', 'Male', '65 Lake View Point', '5018494921', 'mlewteyi@oakley.com', 'United States', 'Tennessee', 'Memphis');
insert into DB_Assignment.Users (FirstName, LastName, Gender, Address, MobileNumber, Email, Country, State, City) values ('Waite', 'Teissier', 'Male', '61 Raven Crossing', '5804725394', 'wteissierj@exblog.jp', 'United States', 'District of Columbia', 'Washington');

-- Create product table with columns product id, product name, description, categories, image URL, weight, stock, price. 
CREATE TABLE DB_Assignment.Products (
    `ProductID` INT AUTO_INCREMENT PRIMARY KEY,
    `ProductName` VARCHAR(100) NOT NULL,
    `ProductDescription` VARCHAR(400) NOT NULL,
    `ProductCategories` VARCHAR(50) NOT NULL,
    `ProductImageURL` VARCHAR(400) NOT NULL,
    `PoductWeightInKG` FLOAT(10) NOT NULL,
    `ProductStock` INT NOT NULL,
    `ProductPrice` INT NOT NULL
);

-- insert some data into product table
insert into DB_Assignment.Products (ProductName, ProductDescription, ProductCategories, ProductImageURL, PoductWeightInKG, ProductStock, ProductPrice) values ('Container - Clear 16 Oz', 'Praesent lectus.', 'Baby', 'http://dummyimage.com/100x100.png/dddddd/000000', 3.31, 183, 431);
insert into DB_Assignment.Products (ProductName, ProductDescription, ProductCategories, ProductImageURL, PoductWeightInKG, ProductStock, ProductPrice) values ('Beef - Short Ribs', 'Phasellus sit amet erat.', 'Health', 'http://dummyimage.com/100x100.png/5fa2dd/ffffff', 3.39, 414, 685);
insert into DB_Assignment.Products (ProductName, ProductDescription, ProductCategories, ProductImageURL, PoductWeightInKG, ProductStock, ProductPrice) values ('Dc - Frozen Momji', 'Morbi vel lectus in quam fringilla rhoncus.', 'Shoes', 'http://dummyimage.com/100x100.png/ff4444/ffffff', 2.73, 313, 352);
insert into DB_Assignment.Products (ProductName, ProductDescription, ProductCategories, ProductImageURL, PoductWeightInKG, ProductStock, ProductPrice) values ('Mountain Dew', 'Morbi non quam nec dui luctus rutrum.', 'Beauty', 'http://dummyimage.com/100x100.png/5fa2dd/ffffff', 4.4, 377, 543);
insert into DB_Assignment.Products (ProductName, ProductDescription, ProductCategories, ProductImageURL, PoductWeightInKG, ProductStock, ProductPrice) values ('Pasta - Orecchiette', 'Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla.', 'Movies', 'http://dummyimage.com/100x100.png/dddddd/000000', 2.18, 486, 432);
insert into DB_Assignment.Products (ProductName, ProductDescription, ProductCategories, ProductImageURL, PoductWeightInKG, ProductStock, ProductPrice) values ('Fish - Soup Base, Bouillon', 'Nunc rhoncus dui vel sem.', 'Sports', 'http://dummyimage.com/100x100.png/5fa2dd/ffffff', 3.83, 379, 698);
insert into DB_Assignment.Products (ProductName, ProductDescription, ProductCategories, ProductImageURL, PoductWeightInKG, ProductStock, ProductPrice) values ('Pasta - Penne, Rigate, Dry', 'Mauris lacinia sapien quis libero.', 'Sports', 'http://dummyimage.com/100x100.png/ff4444/ffffff', 2.3, 281, 244);
insert into DB_Assignment.Products (ProductName, ProductDescription, ProductCategories, ProductImageURL, PoductWeightInKG, ProductStock, ProductPrice) values ('Pastry - Carrot Muffin - Mini', 'In eleifend quam a odio.', 'Grocery', 'http://dummyimage.com/100x100.png/cc0000/ffffff', 3.02, 175, 252);
insert into DB_Assignment.Products (ProductName, ProductDescription, ProductCategories, ProductImageURL, PoductWeightInKG, ProductStock, ProductPrice) values ('Veal - Loin', 'Maecenas rhoncus aliquam lacus.', 'Movies', 'http://dummyimage.com/100x100.png/5fa2dd/ffffff', 2.59, 396, 285);
insert into DB_Assignment.Products (ProductName, ProductDescription, ProductCategories, ProductImageURL, PoductWeightInKG, ProductStock, ProductPrice) values ('Cod - Salted, Boneless', 'Curabitur convallis.', 'Toys', 'http://dummyimage.com/100x100.png/5fa2dd/ffffff', 2.49, 315, 423);
insert into DB_Assignment.Products (ProductName, ProductDescription, ProductCategories, ProductImageURL, PoductWeightInKG, ProductStock, ProductPrice) values ('Rosemary - Primerba, Paste', 'Praesent lectus.', 'Games', 'http://dummyimage.com/100x100.png/5fa2dd/ffffff', 3.67, 191, 118);
insert into DB_Assignment.Products (ProductName, ProductDescription, ProductCategories, ProductImageURL, PoductWeightInKG, ProductStock, ProductPrice) values ('Spice - Peppercorn Melange', 'Curabitur at ipsum ac tellus semper interdum.', 'Garden', 'http://dummyimage.com/100x100.png/5fa2dd/ffffff', 4.07, 487, 487);
insert into DB_Assignment.Products (ProductName, ProductDescription, ProductCategories, ProductImageURL, PoductWeightInKG, ProductStock, ProductPrice) values ('Beans - Fine', 'Morbi quis tortor id nulla ultrices aliquet.', 'Music', 'http://dummyimage.com/100x100.png/5fa2dd/ffffff', 4.43, 327, 192);
insert into DB_Assignment.Products (ProductName, ProductDescription, ProductCategories, ProductImageURL, PoductWeightInKG, ProductStock, ProductPrice) values ('Syrup - Monin, Amaretta', 'Curabitur in libero ut massa volutpat convallis.', 'Books', 'http://dummyimage.com/100x100.png/cc0000/ffffff', 2.81, 500, 331);
insert into DB_Assignment.Products (ProductName, ProductDescription, ProductCategories, ProductImageURL, PoductWeightInKG, ProductStock, ProductPrice) values ('Ice Cream Bar - Hagen Daz', 'Cras pellentesque volutpat dui.', 'Jewelry', 'http://dummyimage.com/100x100.png/cc0000/ffffff', 1.38, 370, 894);
insert into DB_Assignment.Products (ProductName, ProductDescription, ProductCategories, ProductImageURL, PoductWeightInKG, ProductStock, ProductPrice) values ('Veal - Inside Round / Top, Lean', 'Aliquam augue quam, sollicitudin vitae, consectetuer eget, rutrum at, lorem.', 'Sports', 'http://dummyimage.com/100x100.png/cc0000/ffffff', 3.69, 274, 597);
insert into DB_Assignment.Products (ProductName, ProductDescription, ProductCategories, ProductImageURL, PoductWeightInKG, ProductStock, ProductPrice) values ('Wine - Red, Black Opal Shiraz', 'Nullam porttitor lacus at turpis.', 'Industrial', 'http://dummyimage.com/100x100.png/ff4444/ffffff', 4.14, 134, 243);
insert into DB_Assignment.Products (ProductName, ProductDescription, ProductCategories, ProductImageURL, PoductWeightInKG, ProductStock, ProductPrice) values ('Wine - White, Ej Gallo', 'Praesent id massa id nisl venenatis lacinia.', 'Home', 'http://dummyimage.com/100x100.png/dddddd/000000', 2.3, 473, 879);
insert into DB_Assignment.Products (ProductName, ProductDescription, ProductCategories, ProductImageURL, PoductWeightInKG, ProductStock, ProductPrice) values ('Juice - Lime', 'Aliquam non mauris.', 'Games', 'http://dummyimage.com/100x100.png/cc0000/ffffff', 3.48, 111, 217);
insert into DB_Assignment.Products (ProductName, ProductDescription, ProductCategories, ProductImageURL, PoductWeightInKG, ProductStock, ProductPrice) values ('Zucchini - Green', 'Integer aliquet, massa id lobortis convallis, tortor risus dapibus augue, vel accumsan tellus nisi eu orci.', 'Kids', 'http://dummyimage.com/100x100.png/ff4444/ffffff', 4.4, 202, 132);
insert into DB_Assignment.Products (ProductName, ProductDescription, ProductCategories, ProductImageURL, PoductWeightInKG, ProductStock, ProductPrice) values ('Cookie Dough - Chunky', 'In hac habitasse platea dictumst.', 'Industrial', 'http://dummyimage.com/100x100.png/cc0000/ffffff', 2.28, 261, 892);
insert into DB_Assignment.Products (ProductName, ProductDescription, ProductCategories, ProductImageURL, PoductWeightInKG, ProductStock, ProductPrice) values ('Curry Powder Madras', 'Morbi a ipsum.', 'Games', 'http://dummyimage.com/100x100.png/cc0000/ffffff', 2.86, 459, 577);
insert into DB_Assignment.Products (ProductName, ProductDescription, ProductCategories, ProductImageURL, PoductWeightInKG, ProductStock, ProductPrice) values ('Tortillas - Flour, 8', 'Maecenas tincidunt lacus at velit.', 'Music', 'http://dummyimage.com/100x100.png/5fa2dd/ffffff', 1.62, 327, 808);
insert into DB_Assignment.Products (ProductName, ProductDescription, ProductCategories, ProductImageURL, PoductWeightInKG, ProductStock, ProductPrice) values ('Kippers - Smoked', 'Phasellus sit amet erat.', 'Tools', 'http://dummyimage.com/100x100.png/ff4444/ffffff', 4.19, 404, 964);
insert into DB_Assignment.Products (ProductName, ProductDescription, ProductCategories, ProductImageURL, PoductWeightInKG, ProductStock, ProductPrice) values ('Celery Root', 'Sed accumsan felis.', 'Grocery', 'http://dummyimage.com/100x100.png/dddddd/000000', 4.0, 452, 672);
insert into DB_Assignment.Products (ProductName, ProductDescription, ProductCategories, ProductImageURL, PoductWeightInKG, ProductStock, ProductPrice) values ('Table Cloth 62x120 White', 'Sed vel enim sit amet nunc viverra dapibus.', 'Garden', 'http://dummyimage.com/100x100.png/dddddd/000000', 2.78, 193, 833);
insert into DB_Assignment.Products (ProductName, ProductDescription, ProductCategories, ProductImageURL, PoductWeightInKG, ProductStock, ProductPrice) values ('Fond - Neutral', 'Nullam molestie nibh in lectus.', 'Baby', 'http://dummyimage.com/100x100.png/dddddd/000000', 3.71, 458, 340);
insert into DB_Assignment.Products (ProductName, ProductDescription, ProductCategories, ProductImageURL, PoductWeightInKG, ProductStock, ProductPrice) values ('Wine - Balbach Riverside', 'Duis bibendum.', 'Jewelry', 'http://dummyimage.com/100x100.png/dddddd/000000', 3.93, 399, 402);
insert into DB_Assignment.Products (ProductName, ProductDescription, ProductCategories, ProductImageURL, PoductWeightInKG, ProductStock, ProductPrice) values ('Bread - Rye', 'Ut at dolor quis odio consequat varius.', 'Music', 'http://dummyimage.com/100x100.png/cc0000/ffffff', 1.62, 101, 284);
insert into DB_Assignment.Products (ProductName, ProductDescription, ProductCategories, ProductImageURL, PoductWeightInKG, ProductStock, ProductPrice) values ('Sauce - Demi Glace', 'Vivamus vel nulla eget eros elementum pellentesque.', 'Kids', 'http://dummyimage.com/100x100.png/cc0000/ffffff', 1.95, 377, 500);
insert into DB_Assignment.Products (ProductName, ProductDescription, ProductCategories, ProductImageURL, PoductWeightInKG, ProductStock, ProductPrice) values ('Butter - Salted', 'Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh.', 'Kids', 'http://dummyimage.com/100x100.png/dddddd/000000', 4.27, 316, 578);
insert into DB_Assignment.Products (ProductName, ProductDescription, ProductCategories, ProductImageURL, PoductWeightInKG, ProductStock, ProductPrice) values ('Blouse / Shirt / Sweater', 'Donec diam neque, vestibulum eget, vulputate ut, ultrices vel, augue.', 'Kids', 'http://dummyimage.com/100x100.png/ff4444/ffffff', 3.98, 128, 662);
insert into DB_Assignment.Products (ProductName, ProductDescription, ProductCategories, ProductImageURL, PoductWeightInKG, ProductStock, ProductPrice) values ('Pepper - Jalapeno', 'Vestibulum ac est lacinia nisi venenatis tristique.', 'Music', 'http://dummyimage.com/100x100.png/ff4444/ffffff', 1.66, 492, 584);
insert into DB_Assignment.Products (ProductName, ProductDescription, ProductCategories, ProductImageURL, PoductWeightInKG, ProductStock, ProductPrice) values ('Salmon - Fillets', 'Etiam justo.', 'Kids', 'http://dummyimage.com/100x100.png/cc0000/ffffff', 2.62, 443, 325);
insert into DB_Assignment.Products (ProductName, ProductDescription, ProductCategories, ProductImageURL, PoductWeightInKG, ProductStock, ProductPrice) values ('Tomatoes - Grape', 'Pellentesque viverra pede ac diam.', 'Health', 'http://dummyimage.com/100x100.png/5fa2dd/ffffff', 1.51, 362, 417);
insert into DB_Assignment.Products (ProductName, ProductDescription, ProductCategories, ProductImageURL, PoductWeightInKG, ProductStock, ProductPrice) values ('Beer - Heinekin', 'Praesent lectus.', 'Toys', 'http://dummyimage.com/100x100.png/cc0000/ffffff', 2.53, 181, 627);
insert into DB_Assignment.Products (ProductName, ProductDescription, ProductCategories, ProductImageURL, PoductWeightInKG, ProductStock, ProductPrice) values ('Crab - Soft Shell', 'Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est.', 'Health', 'http://dummyimage.com/100x100.png/dddddd/000000', 1.91, 453, 277);
insert into DB_Assignment.Products (ProductName, ProductDescription, ProductCategories, ProductImageURL, PoductWeightInKG, ProductStock, ProductPrice) values ('Salmon Steak - Cohoe 8 Oz', 'Morbi porttitor lorem id ligula.', 'Books', 'http://dummyimage.com/100x100.png/dddddd/000000', 3.29, 393, 769);
insert into DB_Assignment.Products (ProductName, ProductDescription, ProductCategories, ProductImageURL, PoductWeightInKG, ProductStock, ProductPrice) values ('Salt And Pepper Mix - Black', 'Mauris sit amet eros.', 'Grocery', 'http://dummyimage.com/100x100.png/dddddd/000000', 1.94, 336, 272);
insert into DB_Assignment.Products (ProductName, ProductDescription, ProductCategories, ProductImageURL, PoductWeightInKG, ProductStock, ProductPrice) values ('Oil - Cooking Spray', 'Integer tincidunt ante vel ipsum.', 'Automotive', 'http://dummyimage.com/100x100.png/cc0000/ffffff', 3.4, 119, 788);
insert into DB_Assignment.Products (ProductName, ProductDescription, ProductCategories, ProductImageURL, PoductWeightInKG, ProductStock, ProductPrice) values ('Lettuce - Frisee', 'Donec posuere metus vitae ipsum.', 'Music', 'http://dummyimage.com/100x100.png/cc0000/ffffff', 4.45, 488, 867);
insert into DB_Assignment.Products (ProductName, ProductDescription, ProductCategories, ProductImageURL, PoductWeightInKG, ProductStock, ProductPrice) values ('Beans - Fava Fresh', 'In quis justo.', 'Industrial', 'http://dummyimage.com/100x100.png/cc0000/ffffff', 3.55, 202, 967);
insert into DB_Assignment.Products (ProductName, ProductDescription, ProductCategories, ProductImageURL, PoductWeightInKG, ProductStock, ProductPrice) values ('Lobster - Tail, 3 - 4 Oz', 'Phasellus id sapien in sapien iaculis congue.', 'Books', 'http://dummyimage.com/100x100.png/ff4444/ffffff', 2.86, 318, 485);
insert into DB_Assignment.Products (ProductName, ProductDescription, ProductCategories, ProductImageURL, PoductWeightInKG, ProductStock, ProductPrice) values ('Cheese - Shred Cheddar / Mozza', 'Cras mi pede, malesuada in, imperdiet et, commodo vulputate, justo.', 'Music', 'http://dummyimage.com/100x100.png/ff4444/ffffff', 2.05, 422, 544);
insert into DB_Assignment.Products (ProductName, ProductDescription, ProductCategories, ProductImageURL, PoductWeightInKG, ProductStock, ProductPrice) values ('Kahlua', 'Integer a nibh.', 'Music', 'http://dummyimage.com/100x100.png/dddddd/000000', 3.09, 430, 689);
insert into DB_Assignment.Products (ProductName, ProductDescription, ProductCategories, ProductImageURL, PoductWeightInKG, ProductStock, ProductPrice) values ('Table Cloth 144x90 White', 'Quisque id justo sit amet sapien dignissim vestibulum.', 'Sports', 'http://dummyimage.com/100x100.png/5fa2dd/ffffff', 2.9, 333, 377);
insert into DB_Assignment.Products (ProductName, ProductDescription, ProductCategories, ProductImageURL, PoductWeightInKG, ProductStock, ProductPrice) values ('Pear - Prickly', 'Sed sagittis.', 'Outdoors', 'http://dummyimage.com/100x100.png/5fa2dd/ffffff', 2.97, 472, 819);
insert into DB_Assignment.Products (ProductName, ProductDescription, ProductCategories, ProductImageURL, PoductWeightInKG, ProductStock, ProductPrice) values ('Wine - German Riesling', 'In congue.', 'Clothing', 'http://dummyimage.com/100x100.png/5fa2dd/ffffff', 3.6, 252, 348);
insert into DB_Assignment.Products (ProductName, ProductDescription, ProductCategories, ProductImageURL, PoductWeightInKG, ProductStock, ProductPrice) values ('Bag - Clear 7 Lb', 'Sed vel enim sit amet nunc viverra dapibus.', 'Sports', 'http://dummyimage.com/100x100.png/cc0000/ffffff', 4.93, 306, 869);
insert into DB_Assignment.Products (ProductName, ProductDescription, ProductCategories, ProductImageURL, PoductWeightInKG, ProductStock, ProductPrice) values ('White Fish - Filets', 'Proin interdum mauris non ligula pellentesque ultrices.', 'Movies', 'http://dummyimage.com/100x100.png/cc0000/ffffff', 2.7, 478, 916);

-- Create order table with columns order id, user id, order date, order status, expected delivery date.
CREATE TABLE DB_Assignment.Orders (
    `OrderID` INT AUTO_INCREMENT,
    `UserID` INT NOT NULL,
    `OrderDate` DATE NOT NULL,
    `OrderStatus` VARCHAR(20) NOT NULL,
    `OrderExpectedDeliveryDate` VARCHAR(20) NOT NULL,
    PRIMARY KEY (`OrderID`),
    FOREIGN KEY (`UserID`)
        REFERENCES Users(`UserID`)
);

-- Insert some data into order table
insert into DB_Assignment.Orders  (UserID, OrderDate, OrderStatus, OrderExpectedDeliveryDate) values (1, '2022-08-19', 'Ready for dispatch', 'within 3 days');
insert into DB_Assignment.Orders  (UserID, OrderDate, OrderStatus, OrderExpectedDeliveryDate) values (4, '2022-10-17', 'Pending', 'within 4 days');
insert into DB_Assignment.Orders  (UserID, OrderDate, OrderStatus, OrderExpectedDeliveryDate) values (12, '2022-12-03', 'In process', 'within 5 days');
insert into DB_Assignment.Orders  (UserID, OrderDate, OrderStatus, OrderExpectedDeliveryDate) values (6, '2022-09-10', 'In process', 'within 4 days');
insert into DB_Assignment.Orders  (UserID, OrderDate, OrderStatus, OrderExpectedDeliveryDate) values (9, '2022-04-05', 'Delivered', 'within 1 day');
insert into DB_Assignment.Orders  (UserID, OrderDate, OrderStatus, OrderExpectedDeliveryDate) values (11, '2022-04-20', 'Pending', 'within 4 days');
insert into DB_Assignment.Orders  (UserID, OrderDate, OrderStatus, OrderExpectedDeliveryDate) values (15, '2023-02-24', 'In process', 'within 5 days');
insert into DB_Assignment.Orders  (UserID, OrderDate, OrderStatus, OrderExpectedDeliveryDate) values (10, '2022-04-11', 'In process', 'within 3 days');
insert into DB_Assignment.Orders  (UserID, OrderDate, OrderStatus, OrderExpectedDeliveryDate) values (8, '2022-09-24', 'Delivered', 'within 3 days');
insert into DB_Assignment.Orders  (UserID, OrderDate, OrderStatus, OrderExpectedDeliveryDate) values (16, '2022-10-28', 'In process', 'within 4 days');
insert into DB_Assignment.Orders  (UserID, OrderDate, OrderStatus, OrderExpectedDeliveryDate) values (3, '2023-03-14', 'In process', 'within 3 days');
insert into DB_Assignment.Orders  (UserID, OrderDate, OrderStatus, OrderExpectedDeliveryDate) values (1, '2022-11-08', 'Dispatched', 'within 2 days');
insert into DB_Assignment.Orders  (UserID, OrderDate, OrderStatus, OrderExpectedDeliveryDate) values (3, '2022-03-17', 'Dispatched', 'within 5 days');
insert into DB_Assignment.Orders  (UserID, OrderDate, OrderStatus, OrderExpectedDeliveryDate) values (3, '2022-06-26', 'Pending', 'within 5 days');
insert into DB_Assignment.Orders  (UserID, OrderDate, OrderStatus, OrderExpectedDeliveryDate) values (2, '2022-04-05', 'Ready for dispatch', 'within 3 days');
insert into DB_Assignment.Orders  (UserID, OrderDate, OrderStatus, OrderExpectedDeliveryDate) values (8, '2022-06-09', 'In process', 'within 2 days');
insert into DB_Assignment.Orders  (UserID, OrderDate, OrderStatus, OrderExpectedDeliveryDate) values (2, '2022-12-08', 'Pending', 'within 5 days');
insert into DB_Assignment.Orders  (UserID, OrderDate, OrderStatus, OrderExpectedDeliveryDate) values (9, '2022-12-14', 'Dispatched', 'within 3 days');
insert into DB_Assignment.Orders  (UserID, OrderDate, OrderStatus, OrderExpectedDeliveryDate) values (16, '2022-11-11', 'Dispatched', 'within 2 days');
insert into DB_Assignment.Orders  (UserID, OrderDate, OrderStatus, OrderExpectedDeliveryDate) values (9, '2022-10-11', 'Ready for dispatch', 'within 3 days');
insert into DB_Assignment.Orders  (UserID, OrderDate, OrderStatus, OrderExpectedDeliveryDate) values (8, '2022-09-15', 'Ready for dispatch', 'within 1 day');
insert into DB_Assignment.Orders  (UserID, OrderDate, OrderStatus, OrderExpectedDeliveryDate) values (11, '2022-07-12', 'Dispatched', 'within 4 days');
insert into DB_Assignment.Orders  (UserID, OrderDate, OrderStatus, OrderExpectedDeliveryDate) values (14, '2023-02-02', 'Pending', 'within 3 days');
insert into DB_Assignment.Orders  (UserID, OrderDate, OrderStatus, OrderExpectedDeliveryDate) values (5, '2022-07-17', 'Pending', 'within 2 days');
insert into DB_Assignment.Orders  (UserID, OrderDate, OrderStatus, OrderExpectedDeliveryDate) values (10, '2022-11-21', 'Delivered', 'within 3 days');
insert into DB_Assignment.Orders  (UserID, OrderDate, OrderStatus, OrderExpectedDeliveryDate) values (6, '2022-11-04', 'Dispatched', 'within 2 days');
insert into DB_Assignment.Orders  (UserID, OrderDate, OrderStatus, OrderExpectedDeliveryDate) values (4, '2022-03-21', 'Ready for dispatch', 'within 4 days');
insert into DB_Assignment.Orders  (UserID, OrderDate, OrderStatus, OrderExpectedDeliveryDate) values (7, '2022-06-13', 'Pending', 'within 2 days');
insert into DB_Assignment.Orders  (UserID, OrderDate, OrderStatus, OrderExpectedDeliveryDate) values (2, '2022-06-21', 'In process', 'within 1 day');
insert into DB_Assignment.Orders  (UserID, OrderDate, OrderStatus, OrderExpectedDeliveryDate) values (13, '2022-04-11', 'Ready for dispatch', 'within 4 days');
insert into DB_Assignment.Orders  (UserID, OrderDate, OrderStatus, OrderExpectedDeliveryDate) values (14, '2022-05-04', 'Ready for dispatch', 'within 5 days');
insert into DB_Assignment.Orders  (UserID, OrderDate, OrderStatus, OrderExpectedDeliveryDate) values (15, '2022-07-02', 'Delivered', 'within 2 days');
insert into DB_Assignment.Orders  (UserID, OrderDate, OrderStatus, OrderExpectedDeliveryDate) values (17, '2022-07-08', 'Ready for dispatch', 'within 1 day');
insert into DB_Assignment.Orders  (UserID, OrderDate, OrderStatus, OrderExpectedDeliveryDate) values (2, '2022-07-26', 'Ready for dispatch', 'within 1 day');
insert into DB_Assignment.Orders  (UserID, OrderDate, OrderStatus, OrderExpectedDeliveryDate) values (6, '2022-11-11', 'Pending', 'within 2 days');
insert into DB_Assignment.Orders  (UserID, OrderDate, OrderStatus, OrderExpectedDeliveryDate) values (15, '2023-01-22', 'Dispatched', 'within 1 day');
insert into DB_Assignment.Orders  (UserID, OrderDate, OrderStatus, OrderExpectedDeliveryDate) values (15, '2022-11-09', 'Delivered', 'within 5 days');
insert into DB_Assignment.Orders  (UserID, OrderDate, OrderStatus, OrderExpectedDeliveryDate) values (16, '2022-10-21', 'Ready for dispatch', 'within 2 days');
insert into DB_Assignment.Orders  (UserID, OrderDate, OrderStatus, OrderExpectedDeliveryDate) values (17, '2022-12-01', 'Ready for dispatch', 'within 5 days');
insert into DB_Assignment.Orders  (UserID, OrderDate, OrderStatus, OrderExpectedDeliveryDate) values (7, '2022-11-15', 'Dispatched', 'within 1 day');
insert into DB_Assignment.Orders  (UserID, OrderDate, OrderStatus, OrderExpectedDeliveryDate) values (12, '2022-06-14', 'Dispatched', 'within 3 days');
insert into DB_Assignment.Orders  (UserID, OrderDate, OrderStatus, OrderExpectedDeliveryDate) values (9, '2022-05-29', 'In process', 'within 2 days');
insert into DB_Assignment.Orders  (UserID, OrderDate, OrderStatus, OrderExpectedDeliveryDate) values (17, '2022-07-10', 'Delivered', 'within 2 days');
insert into DB_Assignment.Orders  (UserID, OrderDate, OrderStatus, OrderExpectedDeliveryDate) values (3, '2022-12-11', 'Pending', 'within 5 days');
insert into DB_Assignment.Orders  (UserID, OrderDate, OrderStatus, OrderExpectedDeliveryDate) values (10, '2022-09-23', 'Dispatched', 'within 3 days');
insert into DB_Assignment.Orders  (UserID, OrderDate, OrderStatus, OrderExpectedDeliveryDate) values (4, '2022-10-13', 'In process', 'within 4 days');
insert into DB_Assignment.Orders  (UserID, OrderDate, OrderStatus, OrderExpectedDeliveryDate) values (2, '2022-08-24', 'Pending', 'within 5 days');
insert into DB_Assignment.Orders  (UserID, OrderDate, OrderStatus, OrderExpectedDeliveryDate) values (11, '2022-08-29', 'Pending', 'within 1 day');
insert into DB_Assignment.Orders  (UserID, OrderDate, OrderStatus, OrderExpectedDeliveryDate) values (10, '2022-10-20', 'Ready for dispatch', 'within 4 days');
insert into DB_Assignment.Orders  (UserID, OrderDate, OrderStatus, OrderExpectedDeliveryDate) values (17, '2022-05-23', 'Dispatched', 'within 5 days');

-- Create order details table with columns order id, product id, quantity  
CREATE TABLE DB_Assignment.Order_details (
    `OrderID` INT NOT NULL,
    `ProductID` INT NOT NULL,
    `ProductQuantity` INT NOT NULL,
    FOREIGN KEY (`OrderID`)
        REFERENCES Orders (`OrderID`),
    FOREIGN KEY (`ProductID`)
        REFERENCES Products (`ProductID`)
);

-- insert some data into order details table
insert into DB_Assignment.Order_details (OrderID, ProductID, ProductQuantity) values (43, 43, 6);
insert into DB_Assignment.Order_details (OrderID, ProductID, ProductQuantity) values (23, 48, 5);
insert into DB_Assignment.Order_details (OrderID, ProductID, ProductQuantity) values (10, 6, 8);
insert into DB_Assignment.Order_details (OrderID, ProductID, ProductQuantity) values (24, 4, 7);
insert into DB_Assignment.Order_details (OrderID, ProductID, ProductQuantity) values (40, 46, 12);
insert into DB_Assignment.Order_details (OrderID, ProductID, ProductQuantity) values (47, 41, 9);
insert into DB_Assignment.Order_details (OrderID, ProductID, ProductQuantity) values (42, 10, 13);
insert into DB_Assignment.Order_details (OrderID, ProductID, ProductQuantity) values (6, 30, 11);
insert into DB_Assignment.Order_details (OrderID, ProductID, ProductQuantity) values (13, 2, 10);
insert into DB_Assignment.Order_details (OrderID, ProductID, ProductQuantity) values (16, 36, 10);
insert into DB_Assignment.Order_details (OrderID, ProductID, ProductQuantity) values (45, 11, 10);
insert into DB_Assignment.Order_details (OrderID, ProductID, ProductQuantity) values (44, 15, 13);
insert into DB_Assignment.Order_details (OrderID, ProductID, ProductQuantity) values (11, 3, 6);
insert into DB_Assignment.Order_details (OrderID, ProductID, ProductQuantity) values (42, 39, 3);
insert into DB_Assignment.Order_details (OrderID, ProductID, ProductQuantity) values (18, 4, 9);
insert into DB_Assignment.Order_details (OrderID, ProductID, ProductQuantity) values (11, 13, 8);
insert into DB_Assignment.Order_details (OrderID, ProductID, ProductQuantity) values (32, 27, 1);
insert into DB_Assignment.Order_details (OrderID, ProductID, ProductQuantity) values (47, 1, 7);
insert into DB_Assignment.Order_details (OrderID, ProductID, ProductQuantity) values (47, 50, 2);
insert into DB_Assignment.Order_details (OrderID, ProductID, ProductQuantity) values (28, 7, 11);
insert into DB_Assignment.Order_details (OrderID, ProductID, ProductQuantity) values (21, 24, 4);
insert into DB_Assignment.Order_details (OrderID, ProductID, ProductQuantity) values (41, 35, 7);
insert into DB_Assignment.Order_details (OrderID, ProductID, ProductQuantity) values (43, 25, 7);
insert into DB_Assignment.Order_details (OrderID, ProductID, ProductQuantity) values (41, 4, 7);
insert into DB_Assignment.Order_details (OrderID, ProductID, ProductQuantity) values (23, 34, 3);
insert into DB_Assignment.Order_details (OrderID, ProductID, ProductQuantity) values (12, 8, 3);
insert into DB_Assignment.Order_details (OrderID, ProductID, ProductQuantity) values (39, 4, 4);
insert into DB_Assignment.Order_details (OrderID, ProductID, ProductQuantity) values (16, 38, 7);
insert into DB_Assignment.Order_details (OrderID, ProductID, ProductQuantity) values (38, 15, 6);
insert into DB_Assignment.Order_details (OrderID, ProductID, ProductQuantity) values (48, 50, 3);
insert into DB_Assignment.Order_details (OrderID, ProductID, ProductQuantity) values (10, 10, 1);
insert into DB_Assignment.Order_details (OrderID, ProductID, ProductQuantity) values (47, 6, 10);
insert into DB_Assignment.Order_details (OrderID, ProductID, ProductQuantity) values (33, 21, 10);
insert into DB_Assignment.Order_details (OrderID, ProductID, ProductQuantity) values (20, 28, 13);
insert into DB_Assignment.Order_details (OrderID, ProductID, ProductQuantity) values (41, 47, 12);
insert into DB_Assignment.Order_details (OrderID, ProductID, ProductQuantity) values (12, 16, 1);
insert into DB_Assignment.Order_details (OrderID, ProductID, ProductQuantity) values (17, 12, 12);
insert into DB_Assignment.Order_details (OrderID, ProductID, ProductQuantity) values (3, 27, 1);
insert into DB_Assignment.Order_details (OrderID, ProductID, ProductQuantity) values (28, 41, 9);
insert into DB_Assignment.Order_details (OrderID, ProductID, ProductQuantity) values (41, 34, 10);
insert into DB_Assignment.Order_details (OrderID, ProductID, ProductQuantity) values (2, 19, 4);
insert into DB_Assignment.Order_details (OrderID, ProductID, ProductQuantity) values (18, 15, 3);
insert into DB_Assignment.Order_details (OrderID, ProductID, ProductQuantity) values (28, 47, 7);
insert into DB_Assignment.Order_details (OrderID, ProductID, ProductQuantity) values (24, 50, 1);
insert into DB_Assignment.Order_details (OrderID, ProductID, ProductQuantity) values (18, 20, 5);
insert into DB_Assignment.Order_details (OrderID, ProductID, ProductQuantity) values (37, 9, 9);
insert into DB_Assignment.Order_details (OrderID, ProductID, ProductQuantity) values (31, 43, 6);
insert into DB_Assignment.Order_details (OrderID, ProductID, ProductQuantity) values (50, 25, 1);
insert into DB_Assignment.Order_details (OrderID, ProductID, ProductQuantity) values (48, 37, 1);
insert into DB_Assignment.Order_details (OrderID, ProductID, ProductQuantity) values (46, 33, 5);
insert into DB_Assignment.Order_details (OrderID, ProductID, ProductQuantity) values (30, 23, 7);
insert into DB_Assignment.Order_details (OrderID, ProductID, ProductQuantity) values (20, 8, 2);
insert into DB_Assignment.Order_details (OrderID, ProductID, ProductQuantity) values (29, 38, 3);
insert into DB_Assignment.Order_details (OrderID, ProductID, ProductQuantity) values (21, 24, 7);
insert into DB_Assignment.Order_details (OrderID, ProductID, ProductQuantity) values (44, 15, 7);
insert into DB_Assignment.Order_details (OrderID, ProductID, ProductQuantity) values (10, 19, 12);
insert into DB_Assignment.Order_details (OrderID, ProductID, ProductQuantity) values (12, 30, 8);
insert into DB_Assignment.Order_details (OrderID, ProductID, ProductQuantity) values (40, 17, 5);
insert into DB_Assignment.Order_details (OrderID, ProductID, ProductQuantity) values (6, 32, 3);
insert into DB_Assignment.Order_details (OrderID, ProductID, ProductQuantity) values (18, 10, 3);
insert into DB_Assignment.Order_details (OrderID, ProductID, ProductQuantity) values (6, 36, 3);
insert into DB_Assignment.Order_details (OrderID, ProductID, ProductQuantity) values (9, 37, 7);
insert into DB_Assignment.Order_details (OrderID, ProductID, ProductQuantity) values (28, 29, 8);
insert into DB_Assignment.Order_details (OrderID, ProductID, ProductQuantity) values (44, 26, 13);
insert into DB_Assignment.Order_details (OrderID, ProductID, ProductQuantity) values (6, 27, 11);
insert into DB_Assignment.Order_details (OrderID, ProductID, ProductQuantity) values (5, 35, 9);
insert into DB_Assignment.Order_details (OrderID, ProductID, ProductQuantity) values (34, 50, 11);
insert into DB_Assignment.Order_details (OrderID, ProductID, ProductQuantity) values (37, 13, 1);
insert into DB_Assignment.Order_details (OrderID, ProductID, ProductQuantity) values (1, 43, 11);
insert into DB_Assignment.Order_details (OrderID, ProductID, ProductQuantity) values (28, 37, 13);
insert into DB_Assignment.Order_details (OrderID, ProductID, ProductQuantity) values (24, 25, 7);
insert into DB_Assignment.Order_details (OrderID, ProductID, ProductQuantity) values (30, 50, 13);
insert into DB_Assignment.Order_details (OrderID, ProductID, ProductQuantity) values (5, 29, 6);
insert into DB_Assignment.Order_details (OrderID, ProductID, ProductQuantity) values (3, 40, 8);
insert into DB_Assignment.Order_details (OrderID, ProductID, ProductQuantity) values (12, 27, 3);
insert into DB_Assignment.Order_details (OrderID, ProductID, ProductQuantity) values (37, 10, 6);
insert into DB_Assignment.Order_details (OrderID, ProductID, ProductQuantity) values (2, 41, 3);
insert into DB_Assignment.Order_details (OrderID, ProductID, ProductQuantity) values (36, 7, 1);
insert into DB_Assignment.Order_details (OrderID, ProductID, ProductQuantity) values (19, 26, 13);
insert into DB_Assignment.Order_details (OrderID, ProductID, ProductQuantity) values (13, 22, 13);
insert into DB_Assignment.Order_details (OrderID, ProductID, ProductQuantity) values (2, 28, 10);
insert into DB_Assignment.Order_details (OrderID, ProductID, ProductQuantity) values (32, 49, 10);
insert into DB_Assignment.Order_details (OrderID, ProductID, ProductQuantity) values (21, 31, 4);
insert into DB_Assignment.Order_details (OrderID, ProductID, ProductQuantity) values (41, 31, 13);
insert into DB_Assignment.Order_details (OrderID, ProductID, ProductQuantity) values (8, 17, 13);
insert into DB_Assignment.Order_details (OrderID, ProductID, ProductQuantity) values (16, 11, 11);
insert into DB_Assignment.Order_details (OrderID, ProductID, ProductQuantity) values (17, 18, 4);
insert into DB_Assignment.Order_details (OrderID, ProductID, ProductQuantity) values (24, 5, 9);
insert into DB_Assignment.Order_details (OrderID, ProductID, ProductQuantity) values (38, 1, 9);
insert into DB_Assignment.Order_details (OrderID, ProductID, ProductQuantity) values (23, 20, 8);
insert into DB_Assignment.Order_details (OrderID, ProductID, ProductQuantity) values (4, 4, 1);
insert into DB_Assignment.Order_details (OrderID, ProductID, ProductQuantity) values (36, 24, 11);
insert into DB_Assignment.Order_details (OrderID, ProductID, ProductQuantity) values (48, 10, 10);
insert into DB_Assignment.Order_details (OrderID, ProductID, ProductQuantity) values (40, 49, 2);
insert into DB_Assignment.Order_details (OrderID, ProductID, ProductQuantity) values (1, 19, 4);
insert into DB_Assignment.Order_details (OrderID, ProductID, ProductQuantity) values (33, 7, 8);
insert into DB_Assignment.Order_details (OrderID, ProductID, ProductQuantity) values (9, 46, 3);
insert into DB_Assignment.Order_details (OrderID, ProductID, ProductQuantity) values (38, 34, 6);
insert into DB_Assignment.Order_details (OrderID, ProductID, ProductQuantity) values (34, 28, 6);
insert into DB_Assignment.Order_details (OrderID, ProductID, ProductQuantity) values (27, 3, 8);


-- part 1
	-- option 1
		SELECT O.OrderID, U.FirstName, U.LastName, P.ProductName, O.OrderDate, O.OrderStatus, O.OrderexpectedDeliveryDate FROM Users U, Orders O, Products P, Order_details OD WHERE O.UserID = U.UserID AND O.OrderID = OD.OrderID AND OD.ProductID = P.ProductID ORDER BY O.OrderID, O.OrderDate;
	-- option 2
		SELECT O.OrderID, U.FirstName, U.LastName, P.ProductName, O.OrderDate, O.OrderStatus, O.OrderexpectedDeliveryDate FROM Orders O INNER JOIN Users U ON O.UserID = U.UserID INNER JOIN Order_details OD ON O.OrderID = OD.OrderID INNER JOIN Products P ON OD.ProductID = P.ProductID;


-- part 2
	-- 1 List of all undelivered Orders
		SELECT * FROM Orders WHERE OrderStatus != 'Delivered';

	-- 2 List of 5 most recent orders
		SELECT * FROM Orders ORDER BY OrderDate DESC LIMIT 5;

	-- 3 Top 5 active users (Users having most number of orders)
		SELECT U.UserID, CONCAT(U.FirstName, ' ', U.LastName) AS UserName, COUNT(O.UserID) AS OrderCount FROM Orders O INNER JOIN Users U ON O.UserID = U.UserID GROUP BY O.UserID ORDER BY OrderCount DESC LIMIT 5;

	-- 4 Inactive users (Users who hasn’t done any order)
		SELECT U.UserID, CONCAT(U.FirstName, ' ', U.LastName) AS UserName, "User doesn't order anything" AS Orders FROM Users U LEFT JOIN Orders O ON U.UserID = O.UserID WHERE O.UserID IS NULL;

	-- 5 Top 5 Most purchased products
		SELECT P.ProductID, P.ProductName, P.ProductDescription, SUM(O.ProductQuantity) AS ProductOrdered FROM Order_details O INNER JOIN Products P ON O.ProductID=P.ProductID GROUP BY O.ProductID ORDER BY ProductOrdered DESC LIMIT 5;

	-- 6 Most expensive and most chepest orders.
		-- option 1
			SELECT O.OrderID, O.UserID, O.OrderStatus, O.OrderexpectedDeliveryDate, Total FROM Orders O INNER JOIN 
			((SELECT OD.OrderID, SUM(OD.ProductQuantity*P.ProductPrice) as Total FROM Order_details OD  INNER JOIN Products P on OD.ProductID=P.ProductID GROUP BY OD.OrderID ORDER BY Total DESC LIMIT 1)
			UNION
			(SELECT OD.OrderID, SUM(OD.ProductQuantity*P.ProductPrice) as Total FROM Order_details OD  INNER JOIN Products P on OD.ProductID=P.ProductID GROUP BY OD.OrderID ORDER BY Total ASC LIMIT 1)) 
			AS TEMP ON O.OrderID=TEMP.OrderID;

		-- option 2
			(SELECT O.OrderID, O.UserID, O.OrderStatus, O.OrderexpectedDeliveryDate, SUM(OD.ProductQuantity*P.ProductPrice) AS Total FROM Orders O INNER JOIN Order_details OD ON O.OrderID=OD.OrderID INNER JOIN Products P ON OD.ProductID = P.ProductID GROUP BY OD.OrderID ORDER BY Total DESC LIMIT 1)
			UNION
			(SELECT O.OrderID, O.UserID, O.OrderStatus, O.OrderexpectedDeliveryDate, SUM(OD.ProductQuantity*P.ProductPrice) AS Total FROM Orders O INNER JOIN Order_details OD ON O.OrderID=OD.OrderID INNER JOIN Products P ON OD.ProductID = P.ProductID GROUP BY OD.OrderID ORDER BY Total ASC LIMIT 1);
