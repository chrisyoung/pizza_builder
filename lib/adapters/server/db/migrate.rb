require_relative '../app/pizza_server'
require_relative 'config'

Dir["migrations/*.rb"].each {|file| require_relative file }
