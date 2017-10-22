require 'sinatra'
require_relative 'lib/oauth2'

include OauthHelpers

get '/' do
  _render 'lib/template/index.erb', url: auth_url
end

get '/auth' do
  _render 'lib/template/auth.erb'
end
