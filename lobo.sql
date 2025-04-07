CREAT TABLE rooms(room_id INT NOT NULL, room_type VARCHAR(50), price_per_night INT, 
label VARCHAR(50), PRIMARY KEY(room_id));
--room id format will be like 4444, 7777, 88888, 90000, 4030
-- room label --executive, deluxe, regular, business suite
CREATE TABLE roomBookings(booking_id INT NOT NULL AUTO_INCREAMENT, 
client_name VARCHAR(100), client_email VARCHAR(100), phone_number VARCHAR(15), 
number_of_nights INT, room INT, checkin_date DATE, booking_status VARCHAR(50), 
PRIMARY KEY(booking_id), FOREIGN KEY(room) REFERENCES rooms(room_id));

CREATE TABLE spots(spot_id VARCHAR(20) NOT NULL, capacity_range VARCHAR(20), 
price INT, label VARCHAR(100), PRIMARY KEY(spot_id));
--spot_id we will use aninal names like kangaroo, kifaru, twiga
--spot labels-- family, conference , friends, cooperate, wedding hall,

CREATE TABLE spotBookings(booking_id INT NOT NULL AUTO_INCREAMENT,
client_name VARCHAR(100), client_email VARCHAR(100), phone_number VARCHAR(15),
checkin_datetime DATETIME, meals VARCHAR(60),spot VARCHAR(20), 
PRIMARY KEY(booking_id), FOREIGN KEY(spot) REFERENCES spots(spot_id));
--meals,, breakfast, lunch, dinner, breakfast-lunch, lunch-dinner, breakfast-dinner, all

CREATE TABLE reviews(review_id INT NOT NULL AUTO_INCREAMENT, service_type VARCHAR(20), comment TEXT, rating INT,
PRIMARY KEY(review_id));
--service type--room or spot

INSERT INTO rooms (room_id, room_type, price_per_night, label) VALUES
(4444, 'single', 8000, 'executive'),
(7777, 'double', 12000, 'deluxe'),
(8888, 'single', 6000, 'regular'),
(9090, 'double', 15000, 'business suite'),
(4030, 'single', 7000, 'deluxe'),
(5001, 'double', 13000, 'business suite'),
(6002, 'single', 5500, 'regular'),
(7003, 'double', 14000, 'executive'),
(8004, 'single', 7500, 'deluxe'),
(9005, 'double', 16000, 'business suite'),
(1006, 'single', 6800, 'regular'),
(1107, 'double', 11500, 'executive'),
(1208, 'single', 7200, 'deluxe'),
(1309, 'double', 15500, 'business suite'),
(1410, 'single', 7700, 'regular'),
(1511, 'double', 12500, 'executive'),
(1612, 'single', 5900, 'deluxe'),
(1713, 'double', 14500, 'business suite'),
(1814, 'single', 8100, 'regular'),
(1915, 'double', 11000, 'executive'),
(2016, 'single', 8000, 'deluxe'),
(2117, 'double', 17000, 'business suite'),
(2218, 'single', 8200, 'regular'),
(2319, 'double', 10800, 'executive'),
(2420, 'single', 8500, 'deluxe'),
(2521, 'double', 13500, 'business suite'),
(2622, 'single', 7300, 'regular'),
(2723, 'double', 16500, 'executive'),
(2824, 'single', 7200, 'deluxe'),
(2925, 'double', 15000, 'business suite');

INSERT INTO roomBookings (client_name, client_email, phone_number, number_of_nights, room, checkin_date, booking_status) VALUES
('Mwangi Kamau', 'mwangi.kamau@gmail.com', '0712345678', 3, 4444, '2025-04-10', 'confirmed'),
('Aisha Mohamed', 'aisha.mohamed@yahoo.com', '0798765432', 2, 7777, '2025-04-12', 'pending'),
('Otieno Odhiambo', 'otieno.odhiambo@outlook.com', '0723456789', 5, 8888, '2025-04-14', 'confirmed'),
('Nafula Wanjiku', 'nafula.wanjiku@gmail.com', '0744567890', 4, 9090, '2025-04-16', 'canceled'),
('Mutiso Muthui', 'mutiso.muthui@yahoo.com', '0700987654', 2, 4030, '2025-04-18', 'confirmed'),
('Fatuma Hassan', 'fatuma.hassan@gmail.com', '0735678901', 3, 5001, '2025-04-20', 'pending'),
('Kariuki Njoroge', 'kariuki.njoroge@outlook.com', '0718901234', 1, 6002, '2025-04-22', 'confirmed'),
('Lilian Atieno', 'lilian.atieno@yahoo.com', '0741234567', 6, 7003, '2025-04-24', 'canceled'),
('Juma Omondi', 'juma.omondi@gmail.com', '0726789012', 2, 8004, '2025-04-26', 'confirmed'),
('Esther Wambui', 'esther.wambui@yahoo.com', '0705678901', 4, 9005, '2025-04-28', 'pending'),
('Abdi Yusuf', 'abdi.yusuf@outlook.com', '0790123456', 3, 1006, '2025-04-30', 'confirmed'),
('Mercy Chebet', 'mercy.chebet@gmail.com', '0738901234', 5, 1107, '2025-05-02', 'canceled'),
('Peter Kimani', 'peter.kimani@yahoo.com', '0713456789', 2, 1208, '2025-05-04', 'confirmed'),
('Grace Njeri', 'grace.njeri@outlook.com', '0746789012', 3, 1309, '2025-05-06', 'pending'),
('Hassan Ali', 'hassan.ali@gmail.com', '0720123456', 4, 1410, '2025-05-08', 'confirmed'),
('Joyce Akinyi', 'joyce.akinyi@yahoo.com', '0708901234', 1, 1511, '2025-05-10', 'canceled'),
('Samuel Maina', 'samuel.maina@outlook.com', '0731234567', 5, 1612, '2025-05-12', 'confirmed'),
('Rose Mumbi', 'rose.mumbi@gmail.com', '0794567890', 2, 1713, '2025-05-14', 'pending'),
('Ahmed Omar', 'ahmed.omar@yahoo.com', '0716789012', 3, 1814, '2025-05-16', 'confirmed'),
('Mary Wairimu', 'mary.wairimu@outlook.com', '0748901234', 4, 1915, '2025-05-18', 'canceled'),
('David Kiprono', 'david.kiprono@gmail.com', '0723456789', 2, 2016, '2025-05-20', 'confirmed'),
('Sarah Jelagat', 'sarah.jelagat@yahoo.com', '0701234567', 6, 2117, '2025-05-22', 'pending'),
('Isaac Mwenda', 'isaac.mwenda@outlook.com', '0736789012', 3, 2218, '2025-05-24', 'confirmed'),
('Lucy Nyambura', 'lucy.nyambura@gmail.com', '0798901234', 5, 2319, '2025-05-26', 'canceled'),
('Paul Ochieng', 'paul.ochieng@yahoo.com', '0710123456', 2, 2420, '2025-05-28', 'confirmed'),
('Ann Wanjiru', 'ann.wanjiru@outlook.com', '0743456789', 4, 2521, '2025-05-30', 'pending'),
('Joseph Kiptoo', 'joseph.kiptoo@gmail.com', '0726789012', 3, 2622, '2025-06-01', 'confirmed'),
('Halima Adan', 'halima.adan@yahoo.com', '0704567890', 1, 2723, '2025-06-03', 'canceled'),
('Thomas Mutua', 'thomas.mutua@outlook.com', '0738901234', 5, 2824, '2025-06-05', 'confirmed'),
('Nancy Achieng', 'nancy.achieng@gmail.com', '0791234567', 2, 2925, '2025-06-07', 'pending');
--how to count confirmed bookings
SELECT COUNT(booking_id) as confirmedBookings FROM roombookings WHERE booking_status ="confirmed";


INSERT INTO spots (spot_id, capacity_range, price, label) VALUES
('twiga', '1-4', 500, 'family'),
('kifaru', '5-10', 1000, 'conference'),
('nyati', '11-20', 2000, 'friends'),
('simba', '21-50', 5000, 'cooperate'),
('ndovu', '51-100', 10000, 'wedding hall'),
('chui', '1-4', 600, 'family'),
('duma', '5-10', 1200, 'conference'),
('punda', '11-20', 2200, 'friends'),
('tembo', '21-50', 5500, 'cooperate'),
('kiboko', '51-100', 11000, 'wedding hall'),
('mbuni', '1-4', 450, 'family'),
('korongo', '5-10', 900, 'conference'),
('swara', '11-20', 1800, 'friends'),
('fisi', '21-50', 4800, 'cooperate'),
('ngamia', '51-100', 12000, 'wedding hall'),
('tai', '1-4', 700, 'family'),
('mamba', '5-10', 1300, 'conference'),
('nyoka', '11-20', 2400, 'friends'),
('kobe', '21-50', 6000, 'cooperate'),
('bweha', '51-100', 10500, 'wedding hall'),
('paka', '1-4', 550, 'family'),
('mbwa', '5-10', 1100, 'conference'),
('sungura', '11-20', 2100, 'friends'),
('kanga', '21-50', 5200, 'cooperate'),
('nyati2', '51-100', 11500, 'wedding hall'),
('tumbili', '1-4', 650, 'family'),
('nguruwe', '5-10', 950, 'conference'),
('kuku', '11-20', 1900, 'friends'),
(' bata', '21-50', 5700, 'cooperate'),
('mbuzi', '51-100', 10800, 'wedding hall');


INSERT INTO spotBookings (client_name, client_email, phone_number, checkin_datetime, meals, spot) VALUES
('Wanjiru Njeri', 'wanjiru.njeri@gmail.com', '0791234567', '2025-04-10 18:00:00', 'dinner', 'twiga'),
('Kipchoge Rotich', 'kipchoge.rotich@yahoo.com', '0732145678', '2025-04-11 12:30:00', 'lunch', 'kifaru'),
('Nyambura Waithaka', 'nyambura.waithaka@outlook.com', '0725567890', '2025-04-12 08:00:00', 'breakfast', 'nyati'),
('Mugambi Ndungu', 'mugambi.ndungu@gmail.com', '0716789234', '2025-04-13 19:00:00', 'dinner', 'simba'),
('Omondi Onyango', 'omondi.onyango@yahoo.com', '0745678912', '2025-04-14 13:00:00', 'lunch', 'ndovu'),
('Fatuma Amina', 'fatuma.amina@gmail.com', '0701234567', '2025-04-15 17:30:00', 'dinner', 'chui'),
('Kariuki James', 'kariuki.james@outlook.com', '0736789012', '2025-04-16 11:00:00', 'lunch', 'duma'),
('Akinyi Mercy', 'akinyi.mercy@yahoo.com', '0798901234', '2025-04-17 09:00:00', 'breakfast', 'punda'),
('Juma Hassan', 'juma.hassan@gmail.com', '0713456789', '2025-04-18 20:00:00', 'dinner', 'tembo'),
('Wambui Grace', 'wambui.grace@outlook.com', '0740123456', '2025-04-19 14:00:00', 'lunch', 'kiboko'),
('Yusuf Abdi', 'yusuf.abdi@yahoo.com', '0726789012', '2025-04-20 07:30:00', 'breakfast', 'mbuni'),
('Chebet Jane', 'chebet.jane@gmail.com', '0704567890', '2025-04-21 18:30:00', 'dinner', 'korongo'),
('Kimani Peter', 'kimani.peter@outlook.com', '0738901234', '2025-04-22 12:00:00', 'lunch', 'swara'),
('Njeri Faith', 'njeri.faith@yahoo.com', '0791234567', '2025-04-23 08:30:00', 'breakfast', 'fisi'),
('Ali Hassan', 'ali.hassan@gmail.com', '0716789012', '2025-04-24 19:00:00', 'dinner', 'ngamia'),
('Joyce Mwende', 'joyce.mwende@outlook.com', '0743456789', '2025-04-25 13:30:00', 'lunch', 'tai'),
('Maina Samuel', 'maina.samuel@yahoo.com', '0720123456', '2025-04-26 09:00:00', 'breakfast', 'mamba'),
('Mumbi Rose', 'mumbi.rose@gmail.com', '0708901234', '2025-04-27 17:00:00', 'dinner', 'nyoka'),
('Omar Ahmed', 'omar.ahmed@outlook.com', '0734567890', '2025-04-28 11:30:00', 'lunch', 'kobe'),
('Wairimu Mary', 'wairimu.mary@yahoo.com', '0796789012', '2025-04-29 08:00:00', 'breakfast', 'bweha'),
('Kiprono David', 'kiprono.david@gmail.com', '0712345678', '2025-04-30 19:30:00', 'dinner', 'paka'),
('Jelagat Sarah', 'jelagat.sarah@outlook.com', '0748901234', '2025-05-01 12:00:00', 'lunch', 'mbwa'),
('Mwenda Isaac', 'mwenda.isaac@yahoo.com', '0723456789', '2025-05-02 07:00:00', 'breakfast', 'sungura'),
('Nyambura Lucy', 'nyambura.lucy@gmail.com', '0705678901', '2025-05-03 18:00:00', 'dinner', 'kanga'),
('Ochieng Paul', 'ochieng.paul@outlook.com', '0731234567', '2025-05-04 14:00:00', 'lunch', 'nyati2'),
('Wanjiru Ann', 'wanjiru.ann@yahoo.com', '0794567890', '2025-05-05 09:30:00', 'breakfast', 'tumbili');

INSERT INTO reviews (service_type, comment, rating) VALUES
('room', 'The room was spacious and clean, excellent service!', 5),
('spot', 'Great venue for family gatherings, loved the ambiance.', 4),
('room', 'Decent stay, but the AC was not working properly.', 3),
('spot', 'Good spot, but the staff was a bit slow with orders.', 3),
('room', 'Amazing experience, will book again!', 5),
('spot', 'Perfect for a small meeting, very cozy.', 4),
('room', 'Bed was uncomfortable, but the view was great.', 3),
('spot', 'Excellent food and service, highly recommend!', 5),
('room', 'Room service was slow, but staff was polite.', 4),
('spot', 'Too crowded, hard to enjoy the event.', 2),
('room', 'Clean and quiet, perfect for a restful night.', 5),
('spot', 'Nice decor, but the sound system needs improvement.', 3),
('room', 'Luxurious feel, worth every penny!', 5),
('spot', 'Great for weddings, spacious and elegant.', 4),
('room', 'Bathroom was outdated, expected better.', 2),
('spot', 'Friendly staff, made the event memorable.', 5),
('room', 'Good value for money, no complaints.', 4),
('spot', 'Poor lighting, made it hard to enjoy.', 3),
('room', 'Fantastic stay, loved the amenities!', 5),
('spot', 'Ideal for corporate events, very professional.', 4),
('room', 'Noise from hallway was disruptive.', 3),
('spot', 'Food was cold, but the venue was nice.', 2),
('room', 'Top-notch service, exceeded expectations.', 5),
('spot', 'Great spot for friends, relaxed vibe.', 4),
('room', 'Wi-Fi was spotty, frustrating for work.', 3),
('spot', 'Beautiful setup, perfect for photos.', 5),
('room', 'Comfortable and clean, good experience.', 4),
('spot', 'Service was slow, but the space was decent.', 3),
('room', 'Loved the design, very stylish!', 5),
('spot', 'Excellent for large groups, highly recommend.', 4);

--if you want to see reviews that are rated above three
SELECT * FROM `reviews` WHERE rating> 3;
--reading room comments with rating above 3
SELECT * FROM `reviews` WHERE rating> 3 AND service_type="room";

