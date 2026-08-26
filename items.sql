CREATE TABLE items (
  id SERIAL,
  categ_id INTEGER,
  type_id INTEGER,
  brand_id INTEGER,
  model_id INTEGER,
  price FLOAT,
  store_id INTEGER,
  amount INTEGER,
  PRIMARY KEY (id),
  FOREIGN KEY (categ_id) REFERENCES item_categories ON DELETE RESTRICT,
  FOREIGN KEY (type_id) REFERENCES item_types ON DELETE RESTRICT,
  FOREIGN KEY (brand_id) REFERENCES brands ON DELETE RESTRICT,
  FOREIGN KEY (model_id) REFERENCES models ON DELETE RESTRICT,
  FOREIGN KEY (store_id) REFERENCES stores ON DELETE RESTRICT
)