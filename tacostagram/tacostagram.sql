-- Drops existing tables, so we start fresh with each
-- run of this script
DROP TABLE IF EXISTS posts;
DROP TABLE IF EXISTS users;
DROP TABLE IF EXISTS likes;
DROP TABLE IF EXISTS comments;
DROP TABLE IF EXISTS follows;

-- CREATE TABLES
CREATE TABLE posts (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  time TEXT,
  pic_file TEXT,
  author_user_id INTEGER
);

CREATE TABLE users (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  username TEXT,
  real_name TEXT,
  location INTEGER
);

CREATE TABLE likes (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  post_id INTEGER,
  user_id INTEGER,
  status TEXT
);

CREATE TABLE comments (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  post_id INTEGER,
  user_id INTEGER,
  comment TEXT
);

CREATE TABLE follows (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  follow_user_id INTEGER,
  leader_user_id INTEGER
);

ALTER TABLE follows ADD COLUMN status TEXT;