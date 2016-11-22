require 'hecks'
require 'pizza_builder'

require_relative '../db/config'

class PizzaServer
  def app
    Hecks::Adapters::ResourceServer::App.new(
      application_adapter: Hecks::Adapters::Application.new(
        domain:   PizzaBuilder,
        database: PizzaBuilder::Adapters::SQLDatabase
      )
    )
  end
end
