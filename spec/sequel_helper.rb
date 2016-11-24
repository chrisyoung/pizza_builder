require 'sequel'

Sequel.connect(
  adapter:  'mysql2',
  user:     'root',
  host:     'localhost',
  database: 'pizza_builder',
  password: 'password'
)
