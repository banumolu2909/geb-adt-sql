
-- Creating table shipping which contain shipping details like shipping date and category in train
-- Author - eswar
CREATE TABLE shipping(
	order_id INTEGER,
    shipping_date DATE,
    shipping_class VARCHAR(20),
    CONSTRAINT pk_shipping  PRIMARY KEY(order_id)
);

-- Creating table products which contain product details like product_id, product name, product category, and product subcategory
-- Author - eswar
CREATE TABLE products(
	product_id INTEGER,
    product_name VARCHAR(120),
    category VARCHAR(50),
    sub_category VARCHAR(50),
    CONSTRAINT pk_products PRIMARY KEY(product_id)
);

-- Creating table custometer to hold customer details like customer_id, customer name, and his/her address. Here customer_id is considered as state_id so that same customer can order multiple times
-- Author - bharath
CREATE TABLE customers(
	customer_id INTEGER,
    customer_name VARCHAR(120),
    city VARCHAR(50),
    state VARCHAR(50),
    country VARCHAR(50),
    zip_code INTEGER,
    CONSTRAINT pk_customers PRIMARY KEY(customer_id)
);
-- Creating table orders( Contains details about order_id, product_id, customer_id, and order_date
-- Author - gbadugu
CREATE TABLE orders(
	order_id INTEGER,
    order_date DATE NOT NULL,
    product_id INTEGER,
    customer_id INTEGER,
    order_status VARCHAR(20),
    CONSTRAINT pk_orders  PRIMARY KEY(order_id,product_id,customer_id),
    CONSTRAINT fk_orders_products FOREIGN KEY(product_id) REFERENCES products(product_id),
    CONSTRAINT fk_orders_customer_id FOREIGN KEY(customer_id) REFERENCES customers(customer_id),
    CONSTRAINT fk_orders_order_id FOREIGN KEY(order_id) REFERENCES shipping(order_id)
);



-- Inforation we want to display when user logins into the application
-- -- Author - gbadugu
select o.order_id 'Order Id', o.order_date 'Ordered Date', c.customer_id 'State ID', c.customer_name 'Customer Name', c.zip_code 'ZIP Code', p.product_name 'Product Name', s.shipping_class 'Shipping Class', s.shipping_date 'Shipping Date', o.order_status 'Order_status' 
from orders o, customers c, shipping s, products p
where o.customer_id = c.customer_id
and o.product_id = p.product_id
and o.order_id = s.order_id

-- Product Table insert quiries
insert into products values(1,'Bush Somerset Collection Bookcase','Furniture','Bookcases');
Insert into products values(2,'Hon Deluxe Fabric Upholstered Stacking Chairs, Rounded Back','Furniture','Chairs');
Insert into products values(3,'Self-Adhesive Address Labels for Typewriters by Universal','Office Supplies','Labels');
Insert into products values(4,'Bretford CR4500 Series Slim Rectangular Table','Furniture','Tables');
Insert into products values(5,'Eldon Fold N Roll Cart System','Office Supplies','Storage');
Insert into products values(6,'Eldon Expressions Wood and Plastic Desk Accessories, Cherry Wood','Furniture','Furnishings');
Insert into products values(7,'Newell 322','Office Supplies','Art');
Insert into products values(8,'Mitel 5320 IP Phone VoIP phone','Technology','Phones');
Insert into products values(9,'DXL Angle-View Binders with Locking Rings by Samsill','Office Supplies','Binders');
Insert into products values(10,'Belkin F5C206VTEL 6 Outlet Surge','Office Supplies','Appliances');
Insert into products values(11,'Chromcraft Rectangular Conference Tables','Furniture','Tables');
Insert into products values(12,'Konftel 250 Conference¬†phone¬†- Charcoal black','Technology','Phones');
Insert into products values(13,'Xerox 1967','Office Supplies','Paper');
Insert into products values(14,'Fellowes PB200 Plastic Comb Binding Machine','Office Supplies','Binders');
Insert into products values(15,'Holmes Replacement Filter for HEPA Air Cleaner, Very Large Room, HEPA Filter','Office Supplies','Appliances');
Insert into products values(16,'Storex DuraTech Recycled Plastic Frosted Binders','Office Supplies','Binders');
Insert into products values(17,'Stur-D-Stor Shelving, Vertical 5-Shelf: 72"H x 36"W x 18 1/2"D','Office Supplies','Storage');
Insert into products values(18,'Fellowes Super Stor/Drawer','Office Supplies','Storage');
Insert into products values(19,'Newell 341','Office Supplies','Art');
Insert into products values(20,'Cisco SPA 501G IP Phone','Technology','Phones');
Insert into products values(21,'Wilson Jones Hanging View Binder, White, 1"','Office Supplies','Binders');
Insert into products values(22,'Newell 318','Office Supplies','Art');
Insert into products values(23,'Acco Six-Outlet Power Strip, 4 Cord Length','Office Supplies','Appliances');
Insert into products values(24,'Global Deluxe Stacking Chair, Gray','Furniture','Chairs');
Insert into products values(25,'Wilson Jones Active Use Binders','Office Supplies','Binders');
Insert into products values(26,'Imation¬†8GB Mini TravelDrive USB 2.0¬†Flash Drive','Technology','Accessories');
Insert into products values(27,'Riverside Palais Royal Lawyers Bookcase, Royale Cherry Finish','Furniture','Bookcases');
Insert into products values(28,'Avery Recycled Flexi-View Covers for Binding Systems','Office Supplies','Binders');
Insert into products values(29,'Howard Miller 13-3/4" Diameter Brushed Chrome Round Wall Clock','Furniture','Furnishings');
Insert into products values(30,'Poly String Tie Envelopes','Office Supplies','Envelopes');
Insert into products values(31,'BOSTON Model 1800 Electric Pencil Sharpeners, Putty/Woodgrain','Office Supplies','Art');
Insert into products values(32,'Acco Pressboard Covers with Storage Hooks, 14 7/8" x 11", Executive Red','Office Supplies','Binders');
Insert into products values(33,'Lumber Crayons','Office Supplies','Art');
Insert into products values(34,'Easy-staple paper','Office Supplies','Paper');
Insert into products values(35,'GE 30524EE4','Technology','Phones');
Insert into products values(36,'Electrix Architect Clamp-On Swing Arm Lamp, Black','Furniture','Furnishings');
Insert into products values(37,'#10-4 1/8" x 9 1/2" Premium Diagonal Seam Envelopes','Office Supplies','Envelopes');
Insert into products values(38,'Atlantic Metals Mobile 3-Shelf Bookcases, Custom Colors','Furniture','Bookcases');
Insert into products values(39,'Global Fabric Managers Chair, Dark Gray','Furniture','Chairs');
Insert into products values(40,'Plantronics HL10 Handset Lifter','Technology','Phones');
Insert into products values(41,'Panasonic Kx-TS550','Technology','Phones');
Insert into products values(42,'Eldon Base for stackable storage shelf, platinum','Office Supplies','Storage');
Insert into products values(43,'Advantus 10-Drawer Portable Organizer, Chrome Metal Frame, Smoke Drawers','Office Supplies','Storage');
Insert into products values(44,'Verbatim 25 GB 6x Blu-ray Single Layer Recordable Disc, 25/Pack','Technology','Accessories');
Insert into products values(45,'Wilson Jones Leather-Like Binders with DublLock Round Rings','Office Supplies','Binders');
Insert into products values(46,'Gould Plastics 9-Pocket Panel Bin, 18-3/8w x 5-1/4d x 20-1/2h, Black','Office Supplies','Storage');
Insert into products values(47,'Imation¬†8gb Micro Traveldrive Usb 2.0¬†Flash Drive','Technology','Accessories');
Insert into products values(48,'LF Elite 3D Dazzle Designer Hard Case Cover, Lf Stylus Pen and Wiper For Apple Iphone 5c Mini Lite','Technology','Phones');
Insert into products values(49,'C-Line Peel & Stick Add-On Filing Pockets, 8-3/4 x 5-1/8, 10/Pack','Office Supplies','Binders');
Insert into products values(50,'Avery 485','Office Supplies','Labels');
Insert into products values(51,'Longer-Life Soft White Bulbs','Furniture','Furnishings');
Insert into products values(52,'Global Leather Task Chair, Black','Furniture','Chairs');
Insert into products values(53,'Advantus Push Pins','Office Supplies','Fasteners');
Insert into products values(54,'AT&T CL83451 4-Handset Telephone','Technology','Phones');
Insert into products values(55,'Home/Office Personal File Carts','Office Supplies','Storage');
Insert into products values(56,'Xerox 232','Office Supplies','Paper');
Insert into products values(57,'Novimex Turbo Task Chair','Furniture','Chairs');
Insert into products values(58,'Array Parchment Paper, Assorted Colors','Office Supplies','Paper');
Insert into products values(59,'Plastic Binding Combs','Office Supplies','Binders');
Insert into products values(60,'Prang Dustless Chalk Sticks','Office Supplies','Art');
Insert into products values(61,'Verbatim 25 GB 6x Blu-ray Single Layer Recordable Disc, 3/Pack','Technology','Accessories');
Insert into products values(62,'Acco PRESSTEX Data Binder with Storage Hooks, Dark Blue, 14 7/8" X 11"','Office Supplies','Binders');
Insert into products values(63,'Xerox 1943','Office Supplies','Paper');
Insert into products values(64,'Luxo Economy Swing Arm Lamp','Furniture','Furnishings');
Insert into products values(65,'Global Value Mid-Back Managers Chair, Gray','Furniture','Chairs');
Insert into products values(66,'Hunt BOSTON Model 1606 High-Volume Electric Pencil Sharpener, Beige','Office Supplies','Art');
Insert into products values(67,'netTALK DUO VoIP Telephone Service','Technology','Phones');
Insert into products values(68,'Snap-A-Way Black Print Carbonless Ruled Speed Letter, Triplicate','Office Supplies','Paper');
Insert into products values(69,'Avery Binding System Hidden Tab Executive Style Index Sets','Office Supplies','Binders');
Insert into products values(70,'Telephone Message Books with Fax/Mobile Section, 5 1/2" x 3 3/16"','Office Supplies','Paper');
Insert into products values(71,'High-Back Leather Managers Chair','Furniture','Chairs');
Insert into products values(72,'Tenex Traditional Chairmats for Medium Pile Carpet, Standard Lip, 36" x 48"','Furniture','Furnishings');
Insert into products values(73,'Safco Industrial Wire Shelving System','Office Supplies','Storage');
Insert into products values(74,'Economy Binders','Office Supplies','Binders');
Insert into products values(75,'6" Cubicle Wall Clock, Black','Furniture','Furnishings');
Insert into products values(76,'SimpliFile Personal File, Black Granite, 15w x 6-15/16d x 11-1/4h','Office Supplies','Storage');
Insert into products values(77,'Eldon Expressions Desk Accessory, Wood Pencil Holder, Oak','Furniture','Furnishings');
Insert into products values(78,'1.7 Cubic Foot Compact "Cube" Office Refrigerators','Office Supplies','Appliances');
Insert into products values(79,'Avery Heavy-Duty EZD  Binder With Locking Rings','Office Supplies','Binders');
Insert into products values(80,'Premium Writing Pencils, Soft, #2 by Central Association for the Blind','Office Supplies','Art');
Insert into products values(81,'Sortfiler Multipurpose Personal File Organizer, Black','Office Supplies','Storage');
Insert into products values(82,'Jet-Pak Recycled Peel N Seal Padded Mailers','Office Supplies','Envelopes');
Insert into products values(83,'Safco Industrial Wire Shelving','Office Supplies','Storage');
Insert into products values(84,'Novimex Swivel Fabric Task Chair','Furniture','Chairs');
Insert into products values(85,'Logitech¬†LS21 Speaker System - PC Multimedia - 2.1-CH - Wired','Technology','Accessories');
Insert into products values(86,'Avery 511','Office Supplies','Labels');
Insert into products values(87,'Eldon Portable Mobile Manager','Office Supplies','Storage');
Insert into products values(88,'Turquoise Lead Holder with Pocket Clip','Office Supplies','Art');
Insert into products values(89,'Xerox 1995','Office Supplies','Paper');
Insert into products values(90,'Xerox 1999','Office Supplies','Paper');
Insert into products values(91,'Seth Thomas 13 1/2" Wall Clock','Furniture','Furnishings');
Insert into products values(92,'Ibico Standard Transparent Covers','Office Supplies','Binders');
Insert into products values(93,'Flexible Leather- Look Classic Collection Ring Binder','Office Supplies','Binders');
Insert into products values(94,'9-3/4 Diameter Round Wall Clock','Furniture','Furnishings');
Insert into products values(95,'Trimflex Flexible Post Binders','Office Supplies','Binders');
Insert into products values(96,'Fellowes Basic Home/Office Series Surge Protectors','Office Supplies','Appliances');
Insert into products values(97,'Avery Personal Creations Heavyweight Cards','Office Supplies','Paper');


-- Customer Table insert quiries
Insert into customers values(1,'Claire Gute','United States','Henderson','Kentucky',42420);
Insert into customers values(2,'Darrin Van Huff','United States','Los Angeles','California',90036);
Insert into customers values(3,'Sean ODonnell','United States','Fort Lauderdale','Florida',33311);
Insert into customers values(4,'Brosina Hoffman','United States','Los Angeles','California',90032);
Insert into customers values(5,'Andrew Allen','United States','Concord','North Carolina',28027);
Insert into customers values(6,'Irene Maddox','United States','Seattle','Washington',98103);
Insert into customers values(7,'Harold Pawlan','United States','Fort Worth','Texas',76106);
Insert into customers values(8,'Pete Kriz','United States','Madison','Wisconsin',53711);
Insert into customers values(9,'Alejandro Grove','United States','West Jordan','Utah',84084);
Insert into customers values(10,'Zuschuss Donatelli','United States','San Francisco','California',94109);
Insert into customers values(11,'Ken Black','United States','Fremont','Nebraska',68025);
Insert into customers values(12,'Sandra Flanagan','United States','Philadelphia','Pennsylvania',19140);
Insert into customers values(13,'Emily Burns','United States','Orem','Utah',84057);
Insert into customers values(14,'Eric Hoffmann','United States','Los Angeles','California',90049);
Insert into customers values(15,'Tracy Blumstein','United States','Philadelphia','Pennsylvania',19140);
Insert into customers values(16,'Matt Abelman','United States','Houston','Texas',77095);
Insert into customers values(17,'Gene Hale','United States','Richardson','Texas',75080);
Insert into customers values(18,'Steve Nguyen','United States','Houston','Texas',77041);
Insert into customers values(19,'Linda Cazamias','United States','Naperville','Illinois',60540);
Insert into customers values(20,'Ruben Ausman','United States','Los Angeles','California',90049);
Insert into customers values(21,'Erin Smith','United States','Melbourne','Florida',32935);
Insert into customers values(22,'Odella Nelson','United States','Eagan','Minnesota',55122);
Insert into customers values(23,'Patrick ODonnell','United States','Westland','Michigan',48185);
Insert into customers values(24,'Lena Hernandez','United States','Dover','Delaware',19901);
Insert into customers values(25,'Darren Powers','United States','New Albany','Indiana',47150);
Insert into customers values(26,'Janet Molinari','United States','New York City','New York',10024);
Insert into customers values(27,'Ted Butterfield','United States','Troy','New York',12180);
Insert into customers values(28,'Kunst Miller','United States','Los Angeles','California',90004);
Insert into customers values(29,'Paul Stevenson','United States','Chicago','Illinois',60610);
Insert into customers values(30,'Brendan Sweed','United States','Gilbert','Arizona',85234);
Insert into customers values(31,'Karen Daniels','United States','Springfield','Virginia',22153);
Insert into customers values(32,'Henry MacAllister','United States','New York City','New York',10009);
Insert into customers values(33,'Tracy Blumstein','United States','Jackson','Michigan',49201);
Insert into customers values(34,'Joel Eaton','United States','Memphis','Tennessee',38109);
Insert into customers values(35,'Ken Brennan','United States','Houston','Texas',77041);
Insert into customers values(36,'Joel Eaton','United States','Houston','Texas',77070);
Insert into customers values(37,'Stewart Carmichael','United States','Decatur','Alabama',35601);
Insert into customers values(38,'Duane Noonan','United States','San Francisco','California',94122);
Insert into customers values(39,'Julie Creighton','United States','Durham','North Carolina',27707);
Insert into customers values(40,'Christopher Schild','United States','Chicago','Illinois',60623);
Insert into customers values(41,'Patrick ODonnell','United States','Columbia','South Carolina',29203);
Insert into customers values(42,'Paul Gonzalez','United States','Rochester','Minnesota',55901);
Insert into customers values(43,'Gary Mitchum','United States','Houston','Texas',77095);
Insert into customers values(44,'Jim Sink','United States','Los Angeles','California',90036);
Insert into customers values(45,'Karl Braun','United States','Minneapolis','Minnesota',55407);
Insert into customers values(46,'Roger Barcio','United States','Portland','Oregon',97206);
Insert into customers values(47,'Parhena Norris','United States','New York City','New York',10009);
Insert into customers values(48,'Katherine Ducich','United States','San Francisco','California',94122);
Insert into customers values(49,'Elpida Rittenbach','United States','Saint Paul','Minnesota',55106);
Insert into customers values(50,'Rick Bensley','United States','Chicago','Illinois',60610);

-- Shipping Details quiries
Insert into shipping values(1,'2017-11-11','Second Class');
Insert into shipping values(2,'2017-11-11','Second Class');
Insert into shipping values(3,'2017-06-16','Second Class');
Insert into shipping values(4,'2016-10-18','Standard Class');
Insert into shipping values(5,'2016-10-18','Standard Class');
Insert into shipping values(6,'2015-06-14','Standard Class');
Insert into shipping values(7,'2015-06-14','Standard Class');
Insert into shipping values(8,'2015-06-14','Standard Class');
Insert into shipping values(9,'2015-06-14','Standard Class');
Insert into shipping values(10,'2015-06-14','Standard Class');
Insert into shipping values(11,'2015-06-14','Standard Class');
Insert into shipping values(12,'2015-06-14','Standard Class');
Insert into shipping values(13,'2018-04-20','Standard Class');
Insert into shipping values(14,'2017-10-12','Standard Class');
Insert into shipping values(15,'2016-11-26','Standard Class');
Insert into shipping values(16,'2016-11-26','Standard Class');
Insert into shipping values(17,'2015-11-18','Standard Class');
Insert into shipping values(18,'2015-05-15','Second Class');
Insert into shipping values(19,'2015-01-09','Second Class');
Insert into shipping values(20,'2015-01-09','Second Class');
Insert into shipping values(21,'2015-01-09','Second Class');
Insert into shipping values(22,'2017-12-13','Standard Class');
Insert into shipping values(23,'2017-12-13','Standard Class');
Insert into shipping values(24,'2018-07-18','Second Class');
Insert into shipping values(25,'2016-09-30','Standard Class');
Insert into shipping values(26,'2017-01-20','Second Class');
Insert into shipping values(27,'2017-01-20','Second Class');
Insert into shipping values(28,'2016-09-21','Standard Class');
Insert into shipping values(29,'2016-09-21','Standard Class');
Insert into shipping values(30,'2016-09-21','Standard Class');
Insert into shipping values(31,'2016-09-21','Standard Class');
Insert into shipping values(32,'2016-09-21','Standard Class');
Insert into shipping values(33,'2016-09-21','Standard Class');
Insert into shipping values(34,'2016-09-21','Standard Class');
Insert into shipping values(35,'2018-10-23','Second Class');
Insert into shipping values(36,'2017-10-12','First Class');
Insert into shipping values(37,'2017-10-12','First Class');
Insert into shipping values(38,'2016-12-31','Standard Class');
Insert into shipping values(39,'2016-12-31','Standard Class');
Insert into shipping values(40,'2016-12-31','Standard Class');
Insert into shipping values(41,'2016-12-31','Standard Class');
Insert into shipping values(42,'2018-09-15','Standard Class');
Insert into shipping values(43,'2017-07-22','Standard Class');
Insert into shipping values(44,'2018-09-23','Standard Class');
Insert into shipping values(45,'2017-03-13','First Class');
Insert into shipping values(46,'2017-03-13','First Class');
Insert into shipping values(47,'2015-10-25','Second Class');
Insert into shipping values(48,'2017-06-25','Standard Class');
Insert into shipping values(49,'2017-06-25','Standard Class');
Insert into shipping values(50,'2016-04-22','Standard Class');
Insert into shipping values(51,'2016-04-22','Standard Class');
Insert into shipping values(52,'2016-04-22','Standard Class');
Insert into shipping values(53,'2016-04-22','Standard Class');
Insert into shipping values(54,'2017-12-17','Standard Class');
Insert into shipping values(55,'2017-12-17','Standard Class');
Insert into shipping values(56,'2017-06-18','First Class');
Insert into shipping values(57,'2017-06-18','First Class');
Insert into shipping values(58,'2017-06-18','First Class');
Insert into shipping values(59,'2017-06-18','First Class');
Insert into shipping values(60,'2017-06-18','First Class');
Insert into shipping values(61,'2017-06-18','First Class');
Insert into shipping values(62,'2017-06-18','First Class');
Insert into shipping values(63,'2016-11-30','Standard Class');
Insert into shipping values(64,'2016-11-30','Standard Class');
Insert into shipping values(65,'2016-11-30','Standard Class');
Insert into shipping values(66,'2016-11-30','Standard Class');
Insert into shipping values(67,'2016-05-05','Standard Class');
Insert into shipping values(68,'2015-10-12','Standard Class');
Insert into shipping values(69,'2015-10-12','Standard Class');
Insert into shipping values(70,'2017-06-06','First Class');
Insert into shipping values(71,'2017-09-23','Standard Class');
Insert into shipping values(72,'2018-09-17','Second Class');
Insert into shipping values(73,'2016-02-05','Standard Class');
Insert into shipping values(74,'2016-02-05','Standard Class');
Insert into shipping values(75,'2016-02-05','Standard Class');
Insert into shipping values(76,'2018-11-12','First Class');
Insert into shipping values(77,'2018-11-12','First Class');
Insert into shipping values(78,'2018-11-12','First Class');
Insert into shipping values(79,'2015-01-12','Second Class');
Insert into shipping values(80,'2017-06-15','First Class');
Insert into shipping values(81,'2017-06-15','First Class');
Insert into shipping values(82,'2015-10-16','Standard Class');
Insert into shipping values(83,'2015-10-16','Standard Class');
Insert into shipping values(84,'2016-08-09','Standard Class');
Insert into shipping values(85,'2018-11-16','First Class');
Insert into shipping values(86,'2018-05-30','Second Class');
Insert into shipping values(87,'2018-02-11','Standard Class');
Insert into shipping values(88,'2018-02-11','Standard Class');
Insert into shipping values(89,'2017-10-04','Second Class');
Insert into shipping values(90,'2017-09-22','Standard Class');
Insert into shipping values(91,'2017-09-22','Standard Class');
Insert into shipping values(92,'2017-09-22','Standard Class');
Insert into shipping values(93,'2016-05-02','Second Class');
Insert into shipping values(94,'2016-05-02','Second Class');
Insert into shipping values(95,'2016-05-02','Second Class');
Insert into shipping values(96,'2018-12-11','Standard Class');
Insert into shipping values(97,'2018-11-11','Second Class');
Insert into shipping values(98,'2018-06-20','First Class');
Insert into shipping values(99,'2017-11-09','Standard Class');
Insert into shipping values(100,'2017-02-09','Standard Class');


-- order table quiries
Insert into orders values(1,'2017-11-08',1,1,'Delivered');
Insert into orders values(2,'2017-11-08',2,1,'Delivered');
Insert into orders values(3,'2017-06-12',3,2,'Delivered');
Insert into orders values(4,'2016-10-11',4,3,'Delivered');
Insert into orders values(5,'2016-10-11',5,3,'Delivered');
Insert into orders values(6,'2015-06-09',6,4,'Delivered');
Insert into orders values(7,'2015-06-09',7,4,'Delivered');
Insert into orders values(8,'2015-06-09',8,4,'Delivered');
Insert into orders values(9,'2015-06-09',9,4,'Delivered');
Insert into orders values(10,'2015-06-09',10,4,'Delivered');
Insert into orders values(11,'2015-06-09',11,4,'Delivered');
Insert into orders values(12,'2015-06-09',12,4,'Delivered');
Insert into orders values(13,'2018-04-15',13,5,'Delivered');
Insert into orders values(14,'2017-12-05',14,6,'Delivered');
Insert into orders values(15,'2016-11-22',15,7,'Delivered');
Insert into orders values(16,'2016-11-22',16,7,'Delivered');
Insert into orders values(17,'2015-11-11',17,8,'Delivered');
Insert into orders values(18,'2015-05-13',18,9,'Delivered');
Insert into orders values(19,'2015-08-27',19,10,'Delivered');
Insert into orders values(20,'2015-08-27',20,10,'Delivered');
Insert into orders values(21,'2015-08-27',21,10,'Delivered');
Insert into orders values(22,'2017-12-09',22,11,'Delivered');
Insert into orders values(23,'2017-12-09',23,11,'Delivered');
Insert into orders values(24,'2018-07-16',24,12,'Delivered');
Insert into orders values(25,'2016-09-25',4,13,'Delivered');
Insert into orders values(26,'2017-01-16',25,14,'Delivered');
Insert into orders values(27,'2017-01-16',26,14,'Delivered');
Insert into orders values(28,'2016-09-17',27,15,'Delivered');
Insert into orders values(29,'2016-09-17',28,15,'Delivered');
Insert into orders values(30,'2016-09-17',29,15,'Delivered');
Insert into orders values(31,'2016-09-17',30,15,'Delivered');
Insert into orders values(32,'2016-09-17',31,15,'Delivered');
Insert into orders values(33,'2016-09-17',32,15,'Delivered');
Insert into orders values(34,'2016-09-17',33,15,'Delivered');
Insert into orders values(35,'2018-10-19',34,16,'Delivered');
Insert into orders values(36,'2017-12-08',35,17,'Delivered');
Insert into orders values(37,'2017-12-08',36,17,'Delivered');
Insert into orders values(38,'2016-12-27',37,18,'Delivered');
Insert into orders values(39,'2016-12-27',38,18,'Delivered');
Insert into orders values(40,'2016-12-27',39,18,'Delivered');
Insert into orders values(41,'2016-12-27',40,18,'Delivered');
Insert into orders values(42,'2018-09-10',41,19,'Delivered');
Insert into orders values(43,'2017-07-17',42,20,'Delivered');
Insert into orders values(44,'2018-09-19',43,21,'Delivered');
Insert into orders values(45,'2017-03-11',44,22,'Delivered');
Insert into orders values(46,'2017-03-11',45,22,'Delivered');
Insert into orders values(47,'2015-10-20',46,23,'Delivered');
Insert into orders values(48,'2017-06-20',47,24,'Delivered');
Insert into orders values(49,'2017-06-20',48,24,'Delivered');
Insert into orders values(50,'2016-04-18',49,25,'Delivered');
Insert into orders values(51,'2016-04-18',50,25,'Delivered');
Insert into orders values(52,'2016-04-18',51,25,'Delivered');
Insert into orders values(53,'2016-04-18',52,25,'Delivered');
Insert into orders values(54,'2017-12-11',53,26,'Delivered');
Insert into orders values(55,'2017-12-11',54,26,'Delivered');
Insert into orders values(56,'2017-06-17',55,27,'Delivered');
Insert into orders values(57,'2017-06-17',56,27,'Delivered');
Insert into orders values(58,'2017-06-17',57,27,'Delivered');
Insert into orders values(59,'2017-06-17',58,27,'Delivered');
Insert into orders values(60,'2017-06-17',26,27,'Delivered');
Insert into orders values(61,'2017-06-17',59,27,'Delivered');
Insert into orders values(62,'2017-06-17',60,27,'Delivered');
Insert into orders values(63,'2016-11-24',61,28,'Delivered');
Insert into orders values(64,'2016-11-24',62,28,'Delivered');
Insert into orders values(65,'2016-11-24',63,28,'Delivered');
Insert into orders values(66,'2016-11-24',64,28,'Delivered');
Insert into orders values(67,'2016-04-30',65,29,'Delivered');
Insert into orders values(68,'2015-12-05',66,30,'Delivered');
Insert into orders values(69,'2015-12-05',67,30,'Delivered');
Insert into orders values(70,'2017-06-04',68,31,'Delivered');
Insert into orders values(71,'2017-09-18',69,32,'Delivered');
Insert into orders values(72,'2018-09-14',70,15,'Delivered');
Insert into orders values(73,'2016-04-26',71,34,'Delivered');
Insert into orders values(74,'2016-04-26',72,34,'Delivered');
Insert into orders values(75,'2016-04-26',73,34,'Delivered');
Insert into orders values(76,'2018-12-09',74,35,'Delivered');
Insert into orders values(77,'2018-12-09',75,35,'Delivered');
Insert into orders values(78,'2018-12-09',76,35,'Delivered');
Insert into orders values(79,'2015-11-26',77,34,'Delivered');
Insert into orders values(80,'2017-06-12',78,37,'Delivered');
Insert into orders values(81,'2017-06-12',79,37,'Delivered');
Insert into orders values(82,'2015-10-12',80,38,'Delivered');
Insert into orders values(83,'2015-10-12',81,38,'Delivered');
Insert into orders values(84,'2016-09-03',82,39,'Delivered');
Insert into orders values(85,'2018-11-13',83,40,'Delivered');
Insert into orders values(86,'2018-05-28',84,23,'Delivered');
Insert into orders values(87,'2018-10-26',85,42,'Delivered');
Insert into orders values(88,'2018-10-26',86,42,'Delivered');
Insert into orders values(89,'2017-04-05',87,43,'Delivered');
Insert into orders values(90,'2017-09-17',88,44,'Delivered');
Insert into orders values(91,'2017-09-17',41,44,'Delivered');
Insert into orders values(92,'2017-09-17',89,44,'Delivered');
Insert into orders values(93,'2016-01-31',90,45,'Delivered');
Insert into orders values(94,'2016-01-31',91,45,'Delivered');
Insert into orders values(95,'2016-01-31',92,45,'Delivered');
Insert into orders values(96,'2018-11-06',93,46,'Delivered');
Insert into orders values(97,'2018-11-09',94,47,'Delivered');
Insert into orders values(98,'2018-06-17',95,48,'Delivered');
Insert into orders values(99,'2017-09-06',96,49,'Delivered');
Insert into orders values(100,'2017-08-29',97,50,'Delivered');



#ALTER USER 'root'@'localhost' IDENTIFIED WITH mysql_native_password BY 'password';