# require_relative 'sql_database/sql_database'
# require_relative 'server/app/pizza_server'

module PizzaBuilder
  module Adapters
    puts File.dirname(__FILE__)
    autoload  :SQLDatabase, File.dirname(__FILE__) + '/sql_database/sql_database'
    autoload  :Server, File.dirname(__FILE__) + '/server/server'
  end
end
