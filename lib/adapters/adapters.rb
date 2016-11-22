# require 'pizza_builder'
# require 'hecks'

require_relative 'sql_database/sql_database'
require_relative 'server/app/pizza_server'

module PizzaBuilder
  module Adapters
    autoload  :SQLDatabase, 'sql_database/sql_database'
    autoload  :Server, 'server/server'
  end
end
