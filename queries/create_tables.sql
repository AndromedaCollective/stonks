CREATE TABLE users (
  user_id INT,
  username VARCHAR(32),
  email VARCHAR(64),
  PRIMARY KEY (user_id)
);

CREATE TABLE stocks (
  ticker VARCHAR(6),
  stock_name VARCHAR(100),
  PRIMARY KEY (ticker)
);

CREATE TABLE investments (
  user_id INT,
  ticker VARCHAR(6),
  num_shares INT,
  PRIMARY KEY (user_id, ticker),
  FOREIGN KEY (user_id) REFERENCES users(user_id),
  FOREIGN KEY (ticker) REFERENCES stocks(ticker)
);

CREATE TABLE transactions (
  trans_id INT,
  user_id INT,
  ticker VARCHAR(6),
  num_shares INT,
  date DATE,
  buy_sell BOOLEAN,
  PRIMARY KEY (trans_id),
  FOREIGN KEY (user_id) REFERENCES users(user_id),
  FOREIGN KEY (ticker) REFERENCES stocks (ticker)
);

CREATE TABLE prices (
  ticker VARCHAR(6),
  date DATE,
  high DECIMAL(23,16),
  low DECIMAL(23,16),
  open DECIMAL(23,16),
  close DECIMAL(23,16),
  adj_close DECIMAL(23,16),
  volume INT,
  PRIMARY KEY (ticker, date),
  FOREIGN KEY (ticker) REFERENCES stocks(ticker)
);

