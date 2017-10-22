require 'sinatra'
require_relative 'oauth2'

class Server < Sinatra::Base

  def self.run!
    super
  end

  get '/' do
    'hello world'
  end

end
