CREATE TABLE users
(
  id BIGSERIAL PRIMARY KEY,
  name VARCHAR (128) NOT NULL,
  email VARCHAR (128) NOT NULL UNIQUE,
  avatar VARCHAR (128),
  is_admin BOOLEAN NOT NULL DEFAULT FALSE,
  password VARCHAR (128) NOT NULL,
  created_date TIMESTAMP DEFAULT NOW(),
  modified_date TIMESTAMP
);

CREATE TABLE requests
(
  id BIGSERIAL PRIMARY KEY,
  title VARCHAR  (128) NOT NULL,
  requestType BOOLEAN NOT NULL DEFAULT FALSE,
  body VARCHAR (128) NOT NULL,
  image VARCHAR (128),
  user_id BIGINT REFERENCES users (id),
  is_resolved BOOLEAN NOT NULL DEFAULT FALSE,
  is_approved BOOLEAN NOT NULL DEFAULT FALSE,
  created_date TIMESTAMP DEFAULT NOW(),
  modified_date TIMESTAMP
);
   