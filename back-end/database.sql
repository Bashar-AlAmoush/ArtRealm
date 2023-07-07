CREATE TABLE post (
  id SERIAL PRIMARY KEY,
  user_id INT,
  title VARCHAR(255),
  description TEXT,
  likes INT,
  timestamp TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  isDeleted BOOLEAN,
  isApproved BOOLEAN
);


CREATE TABLE comments (
  id SERIAL PRIMARY KEY,
  post_id INT,
  user_id INT,
  comment TEXT,
  isDeleted BOOLEAN,
  timestamp TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  FOREIGN KEY (post_id) REFERENCES post (post_id)
);

CREATE EXTENSION IF NOT EXISTS "uuid-ossp";
CREATE TABLE users (
  user_id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
  user_name VARCHAR(255) NOT NULL, 
  user_email VARCHAR(255) NOT NULL,
  user_password VARCHAR(255) NOT NULL,
  deleted BOOLEAN DEFAULT false
);


CREATE TABLE Paintings (
    ID INT PRIMARY KEY,
   Artist_Name VARCHAR(255),
    Painting_Name VARCHAR(255),
    ImageURL TEXT,
    Category VARCHAR(255),
    Rate NUMERIC(10, 2)
);
