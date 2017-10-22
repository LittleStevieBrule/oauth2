require 'sinatra'
require_relative 'lib/helpers'

class Server < Sinatra::Base
  include OauthHelpers


  set :port, 8080
  set :bind, '0.0.0.0'
  # set(:port, config.port ? config.port : 8080)
  # set(:addr, config.addr ? config.addr : '0.0.0.0')

  get '/' do
    _render 'lib/template/index.erb', url: auth_url
  end

  get '/auth' do
    get_access_token params['code']
    _render 'lib/template/auth.erb', url: '/content'
  end

  get '/content' do
    'made it!'
  end

end

Server.run!
