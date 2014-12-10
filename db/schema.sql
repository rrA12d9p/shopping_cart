DROP TABLE IF EXISTS products;

CREATE TABLE products(
  id SERIAL PRIMARY KEY,
  product_name text NOT NULL,
  description text NOT NULL,
  image text NOT NULL,
  price money NOT NULL
);