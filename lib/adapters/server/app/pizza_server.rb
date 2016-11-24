require 'hecks'
require_relative '../db/config'
require 'pizza_builder'

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
