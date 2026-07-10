/*
    Cruise Critic Database System
    Sample Data
*/

INSERT INTO SHIP
    (SHIP_ID, SHIP_NAME, SHIP_LAUNCH_YEAR, CREW_COUNT, PASSENGER_CAPACITY, SHORE_EXCURSIONS)
VALUES
    (201, 'Ocean Voyager', 2020, 800, 3000, 15),
    (202, 'Sea Explorer', 2019, 750, 2800, 12),
    (203, 'Aurora Princess', 2021, 900, 3500, 18);

INSERT INTO CRUISE
    (CRUISE_ID, CRUISE_NAME, CRUISE_LENGTH, SHIP_ID)
VALUES
    (101, 'Caribbean Adventure', 7, 201),
    (102, 'Mediterranean Escape', 10, 202),
    (103, 'Alaskan Explorer', 14, 201),
    (104, 'Baltic Discovery', 12, 203);

INSERT INTO CRUISE_LINE
    (CRUISE_LINE_ID, CRUISE_LINE_NAME, CRUISE_ID)
VALUES
    (100, 'Carnival Cruise Line', 101),
    (101, 'Norwegian Cruise Line', 102),
    (102, 'Princess Cruises', 103),
    (103, 'Royal Caribbean', 104);

INSERT INTO DEPARTURE_DATE
    (DEPARTURE_DATE_ID, DEPART_DATE)
VALUES
    (301, '2025-12-15'),
    (302, '2025-12-22'),
    (303, '2025-11-10'),
    (304, '2025-10-05'),
    (305, '2025-09-25');

INSERT INTO CRUISE_DATE
    (CRUISE_ID, DEPARTURE_DATE_ID)
VALUES
    (101, 301),
    (101, 302),
    (102, 303),
    (103, 304),
    (104, 305);

INSERT INTO BONUS_OFFER
    (BONUS_OFFER_ID, BONUS_OFFER_NAME)
VALUES
    (1, 'Free Spa Access'),
    (2, 'Complimentary Wine'),
    (3, 'Onboard Shopping Voucher'),
    (4, 'Free WiFi Package');

INSERT INTO CRUISE_OFFER
    (CRUISE_ID, BONUS_OFFER_ID)
VALUES
    (101, 1),
    (102, 2),
    (103, 3),
    (104, 1),
    (104, 4);

INSERT INTO DEAL
    (DEAL_ID, DEAL_DESCRIPTION, PARTNER_SITE, CRUISE_ID)
VALUES
    (1, '7-night Bahamas cruise with exclusive double perks and rewards', 'https://www.cruises.com/example-caribbean-adventure', 101),
    (2, '4-night Mexico cruise with onboard spending credits', 'https://www.cruisewise.com/example-mediterranean-escape', 102),
    (3, '4-night Bahamas and Perfect Day balcony deal', 'https://www.cruisesonly.com/example-alaskan-explorer', 103),
    (4, '6-night Caribbean cruise with bonus onboard spending', 'https://www.cruisewise.com/example-baltic-discovery', 104);

INSERT INTO PRICE_TIER
    (PRICE_TIER_ID, PRICE_TIER_NAME)
VALUES
    (10, 'Premium Suite'),
    (11, 'Deluxe Cabin'),
    (12, 'Economy Cabin');

INSERT INTO DEAL_TIER
    (PRICE_TIER_ID, DEAL_ID, PRICE)
VALUES
    (10, 1, 899.00),
    (11, 2, 1599.00),
    (12, 3, 1299.00),
    (12, 4, 1899.00);

INSERT INTO CUSTOMER
    (CUSTOMER_ID, FIRST_NAME, LAST_NAME, EMAIL)
VALUES
    (1001, 'John', 'Doe', 'john.doe@example.com'),
    (1002, 'Alice', 'Smith', 'alice.smith@example.com'),
    (1003, 'Robert', 'Brown', 'robert.brown@example.com'),
    (1004, 'Maria', 'Garcia', 'maria.garcia@example.com');

INSERT INTO REVIEW
    (REVIEW_ID, REVIEW_DESCRIPTION, CRUISE_ID, CUSTOMER_ID)
VALUES
    (900, 'Amazing trip with great service!', 101, 1001),
    (901, 'Good food and entertainment.', 102, 1002),
    (902, 'Weather was rough but still fun.', 103, 1003);

INSERT INTO REVIEW_TYPE
    (REVIEW_TYPE_ID, REVIEW_TYPE_NAME)
VALUES
    (1, 'Dining/Food'),
    (2, 'Entertainment'),
    (3, 'Value for Money'),
    (4, 'Service');

INSERT INTO RATING
    (REVIEW_ID, REVIEW_TYPE_ID, SCORE)
VALUES
    (900, 1, 4.5),
    (901, 1, 4.0),
    (902, 2, 3.5);

INSERT INTO ITINERARY
    (ITINERARY_ID, CRUISE_ID)
VALUES
    (500, 101),
    (501, 102),
    (502, 103),
    (503, 104);

INSERT INTO PORT
    (PORT_ID, PORT_NAME, PORT_LOCATION)
VALUES
    (700, 'Port of Toronto', 'Toronto, Canada'),
    (701, 'Port of Montreal', 'Montreal, Canada'),
    (702, 'Port of Philadelphia', 'Philadelphia, USA'),
    (703, 'Port of Baltimore', 'Baltimore, USA'),
    (704, 'Port of New York (Manhattan)', 'New York, USA');

INSERT INTO ITINERARY_PORT
    (ITINERARY_ID, PORT_ID, ORDERING)
VALUES
    (500, 700, 1),
    (500, 701, 2),
    (501, 702, 1),
    (502, 703, 1),
    (503, 704, 1);
