# frozen_string_literal: true
require 'sequel'
require_relative 'db/config'
require_relative 'app/pizza_server'

run PizzaServer.new.app
