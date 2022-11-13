--liquibase formatted sql

--changeset rozbergs@gmail.com:2

INSERT INTO sectors (name) VALUES ('Manufacturing');
INSERT INTO sectors (name, parent_id) VALUES ('Construction materials', 1);
INSERT INTO sectors (name, parent_id) VALUES ('Electronics and Optics', 1);
INSERT INTO sectors (name, parent_id) VALUES ('Food and Beverage', 1);

INSERT INTO sectors (name) VALUES ('Other');
INSERT INTO sectors (name, parent_id) VALUES ('Energy Technology', 5);
INSERT INTO sectors (name, parent_id) VALUES ('Creative industries', 5);
INSERT INTO sectors (name, parent_id) VALUES ('Environment', 5);

INSERT INTO sectors (name, parent_id) VALUES ('Milk & dairy products', 4);
INSERT INTO sectors (name, parent_id) VALUES ('Bakery & confectionery products', 4);
INSERT INTO sectors (name, parent_id) VALUES ('Beverages', 4);
INSERT INTO sectors (name, parent_id) VALUES ('Fish & fish products', 4);
INSERT INTO sectors (name, parent_id) VALUES ('Meat & meat products', 4);
INSERT INTO sectors (name, parent_id) VALUES ('Other', 4);
INSERT INTO sectors (name, parent_id) VALUES ('Sweets & snack food', 4);

INSERT INTO sectors (name, parent_id) VALUES ('Furniture', 1);
INSERT INTO sectors (name, parent_id) VALUES ('Bathroom/sauna', 16);
INSERT INTO sectors (name, parent_id) VALUES ('Bedroom', 16);
INSERT INTO sectors (name, parent_id) VALUES ('Children’s room', 16);
INSERT INTO sectors (name, parent_id) VALUES ('Kitchen', 16);
INSERT INTO sectors (name, parent_id) VALUES ('Living room', 16);
INSERT INTO sectors (name, parent_id) VALUES ('Office', 16);
INSERT INTO sectors (name, parent_id) VALUES ('Other (Furniture)', 16);
INSERT INTO sectors (name, parent_id) VALUES ('Outdoor', 16);
INSERT INTO sectors (name, parent_id) VALUES ('Project furniture', 16);

INSERT INTO sectors (name, parent_id) VALUES ('Machinery', 1);
INSERT INTO sectors (name, parent_id) VALUES ('Machinery components', 26);
INSERT INTO sectors (name, parent_id) VALUES ('Machinery equipment/tools', 26);
INSERT INTO sectors (name, parent_id) VALUES ('Manufacture of machinery', 26);
INSERT INTO sectors (name, parent_id) VALUES ('Maritime', 26);
INSERT INTO sectors (name, parent_id) VALUES ('Aluminium and steel workboats', 30);
INSERT INTO sectors (name, parent_id) VALUES ('Boat/Yacht building', 30);
INSERT INTO sectors (name, parent_id) VALUES ('Ship repair and conversion', 30);
INSERT INTO sectors (name, parent_id) VALUES ('Metal structures', 26);
INSERT INTO sectors (name, parent_id) VALUES ('Other', 26);
INSERT INTO sectors (name, parent_id) VALUES ('Repair and maintenance service', 26);

INSERT INTO sectors (name, parent_id) VALUES ('Metalworking', 1);
INSERT INTO sectors (name, parent_id) VALUES ('Construction of metal structures', 37);
INSERT INTO sectors (name, parent_id) VALUES ('Houses and buildings', 37);
INSERT INTO sectors (name, parent_id) VALUES ('Metal products', 37);
INSERT INTO sectors (name, parent_id) VALUES ('Metal works', 37);
INSERT INTO sectors (name, parent_id) VALUES ('CNC-machining', 41);
INSERT INTO sectors (name, parent_id) VALUES ('Forgings, Fasteners', 41);
INSERT INTO sectors (name, parent_id) VALUES ('Gas, Plasma, Laser cutting', 41);
INSERT INTO sectors (name, parent_id) VALUES ('MIG, TIG, Aluminum welding', 41);

INSERT INTO sectors (name, parent_id) VALUES ('Plastic and Rubber', 1);
INSERT INTO sectors (name, parent_id) VALUES ('Packaging', 46);
INSERT INTO sectors (name, parent_id) VALUES ('Plastic goods', 46);
INSERT INTO sectors (name, parent_id) VALUES ('Plastic processing technology', 46);
INSERT INTO sectors (name, parent_id) VALUES ('Blowing', 49);
INSERT INTO sectors (name, parent_id) VALUES ('Moulding', 49);
INSERT INTO sectors (name, parent_id) VALUES ('Plastics welding and processing', 49);
INSERT INTO sectors (name, parent_id) VALUES ('Plastic profiles', 46);

INSERT INTO sectors (name, parent_id) VALUES ('Printing', 1);
INSERT INTO sectors (name, parent_id) VALUES ('Advertising', 54);
INSERT INTO sectors (name, parent_id) VALUES ('Book/Periodicals printing', 54);
INSERT INTO sectors (name, parent_id) VALUES ('Labelling and packaging printing', 54);

INSERT INTO sectors (name, parent_id) VALUES ('Textile and Clothing', 1);
INSERT INTO sectors (name, parent_id) VALUES ('Clothing', 58);
INSERT INTO sectors (name, parent_id) VALUES ('Textile', 58);

INSERT INTO sectors (name, parent_id) VALUES ('Wood', 1);
INSERT INTO sectors (name, parent_id) VALUES ('Other (Wood)', 61);
INSERT INTO sectors (name, parent_id) VALUES ('Wooden building materials', 61);
INSERT INTO sectors (name, parent_id) VALUES ('Wooden houses', 61);

INSERT INTO sectors (name) VALUES ('Service');

INSERT INTO sectors (name, parent_id) VALUES ('Business services', 65);
INSERT INTO sectors (name, parent_id) VALUES ('Engineering', 65);
INSERT INTO sectors (name, parent_id) VALUES ('Information Technology and Telecommunications', 65);
INSERT INTO sectors (name, parent_id) VALUES ('Data processing, Web portals, E-marketing', 68);
INSERT INTO sectors (name, parent_id) VALUES ('Programming, Consultancy', 68);
INSERT INTO sectors (name, parent_id) VALUES ('Software, Hardware', 68);
INSERT INTO sectors (name, parent_id) VALUES ('Telecommunications', 68);

INSERT INTO sectors (name, parent_id) VALUES ('Tourism', 65);
INSERT INTO sectors (name, parent_id) VALUES ('Translation services', 65);
INSERT INTO sectors (name, parent_id) VALUES ('Transport and Logistics', 65);
INSERT INTO sectors (name, parent_id) VALUES ('Air', 75);
INSERT INTO sectors (name, parent_id) VALUES ('Rail', 75);
INSERT INTO sectors (name, parent_id) VALUES ('Road', 75);
INSERT INTO sectors (name, parent_id) VALUES ('Water', 75);
