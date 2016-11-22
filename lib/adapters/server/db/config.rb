# DB = Sequel.connect('jdbc:mysql://sql/pizza_builder?user=root&password=password')
DB = Sequel.connect(
  adapter:  'mysql2',
  user:     'root',
  host:     'localhost',
  database: 'pizza_builder',
  password: 'password'
)
