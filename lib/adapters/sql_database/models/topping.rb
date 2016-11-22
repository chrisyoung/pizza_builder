module PizzaBuilder
  module Adapters
    class SQLDatabase
      module Models
        class Topping < Sequel::Model
          many_to_many :pizzas

          def values
            result = super.clone
            result.delete(:id)
            result
          end
        end
      end
    end
  end
end
