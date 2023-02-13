
-- Run queries independently in order

\connect jrvstrading

INSERT INTO trader (id, first_name, last_name, dob, country, email)
VALUES
 (10, 'John', 'Doe', '05/01/1985', 'Canada', 'JohnDoe@emailcom'),
(20, 'Jane', 'Doe', '10/01/1985', 'Canada', 'JaneDoe@emailcom'),
(30, 'Jack', 'Doe', '01/01/1985', 'Canada', 'JackDoe@emailcom');

INSERT INTO account (id, trader_id, amount)
VALUES
(15, 20, 1000),
(25, 30, 500),
(35, 20, 800);

INSERT INTO quote (ticker, last_price, bid_price, bid_size, ask_price, ask_size)
VALUES
('SAMPLE', 99,99,100,150, 200),
('SAMPLETWO', 199,299,300,50, 400),
('SAMPLETHREE', 400, 300, 100, 75, 400);

INSERT INTO security_order (account_id, status, ticker, size, price, notes)
VALUES
(15, 'FILLED', 'SAMPLE', 200, 150, 'None'),
(25, 'FILLED', 'SAMPLETWO', 100, 75, 'None'),
(35, 'FILLED', 'SAMPLETHREE' , 250, 50, 'None');