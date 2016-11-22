DB.create_table? :pizzas do
  primary_key :id
  String :name
  String :description
end
