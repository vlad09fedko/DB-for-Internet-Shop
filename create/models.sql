CREATE TABLE models (
  id SERIAL,
  title VARCHAR(100),
  brand_id INTEGER,
  description TEXT,
  PRIMARY KEY (id),
  FOREIGN KEY (brand_id) REFERENCES brands ON DELETE RESTRICT
);