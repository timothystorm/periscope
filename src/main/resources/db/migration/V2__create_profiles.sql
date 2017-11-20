CREATE TABLE periscope.profiles (
  -- identity
  id          BIGINT UNSIGNED NOT NULL
  COMMENT 'FK:users.id',

  -- details
  email       VARCHAR(128)    NULL,

  -- name
  family_name VARCHAR(64)     NULL,
  given_name  VARCHAR(64)     NULL,

  -- keys and constraints
  FOREIGN KEY (id) REFERENCES periscope.users (id)
    ON DELETE CASCADE
)
  DEFAULT CHARSET = UTF8;

-- indexes and triggers
CREATE INDEX idx_profile_email ON periscope.profiles(email);