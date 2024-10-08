CREATE TABLE Users (
  UserID SERIAL PRIMARY KEY,
  firstName VARCHAR NOT NULL,
  lastName VARCHAR NOT NULL,
  email VARCHAR UNIQUE NOT NULL,
  password VARCHAR NOT NULL
);

CREATE TABLE Books (
    BookID SERIAL PRIMARY KEY,
    isbn VARCHAR UNIQUE NOT NULL,
    title VARCHAR NOT NULL,
    author VARCHAR NOT NULL,
    year SMALLINT NOT NULL
);

CREATE TABLE Reviews (
    ReviewID SERIAL PRIMARY KEY,
    user_id INTEGER REFERENCES users,
    book_id INTEGER REFERENCES books,
    rating SMALLINT NOT NULL CONSTRAINT Invalid_Rating CHECK (rating <=5 AND rating>=1),
    comment VARCHAR
);
