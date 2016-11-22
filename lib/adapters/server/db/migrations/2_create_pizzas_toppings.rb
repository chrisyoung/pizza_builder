DB.create_table? :pizzas_toppings do
  primary_key :id
  Integer :pizza_id
  Integer :topping_id

  String :name
end
