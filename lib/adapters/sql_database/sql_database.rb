require_relative 'commands/create'
require_relative 'commands/update'
require_relative 'commands/delete'
require_relative 'repositories/pizzas'
require_relative 'queries/read'

[ '/models/*.rb', '/repositories/*.rb'].each do |file|
  Dir[File.dirname(__FILE__) + file].each { |file| require_relative file }
end

module PizzaBuilder
  module Adapters
    class SQLDatabase
      def initialize(domain)
        @domain = domain
      end

      def [](repository_name)
        { pizzas: Repositories::Pizzas.new }[repository_name]
      end
    end
  end
end
