CREATE TABLE IF NOT EXISTS messages (
  id serial primary key,
  message text NOT NULL,
  to_user_id serial REFERENCES users (id),
  from_user_id serial REFERENCES users (id))

