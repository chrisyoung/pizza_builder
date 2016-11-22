require 'pry'
module PizzaBuilder
  module Adapters
    class SQLDatabase
      module Queries
        class Read
          def initialize(id)
            @id = id
          end

          def call
            get_pizza
            domain_object
          end

          private

          attr_reader :id, :pizza

          def domain_object
            return if pizza.nil?
            PizzaBuilder::Domain::Pizzas::Pizza.new(pizza.values)
          end

          def get_pizza
            @pizza = Models::Pizza.where(pizzas__id: id).first
          end
        end
      end
    end
  end
end
