
#run website
1. py -m venv venv

2. venv\Scripts\activate

3. pip install -r requirements.txt

4. py run.py

5. open browser http://127.0.0.1:5000

#Create database
1. Create database name 'tps3221'

2. Import tps3221.sql in database

or copy sql

2. Copy this sql

CREATE TABLE `user` (
  `username` text NOT NULL,
  `name` text NOT NULL,
  `password` text NOT NULL,
  `salt` text NOT NULL,
  `hash_password` text NOT NULL,
  `hashType` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

ALTER TABLE `user`
  ADD PRIMARY KEY (`username`(20));
COMMIT;