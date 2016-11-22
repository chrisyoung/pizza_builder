module PizzaBuilder
  module Adapters
    class SQLDatabase
      module Models
        class Pizza < Sequel::Model
          many_to_many :toppings

          def values
            super.merge(toppings: toppings.map { |al| al.values })
          end
        end
      end
    end
  end
end
