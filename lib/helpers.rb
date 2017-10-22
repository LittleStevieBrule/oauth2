require 'ostruct'
require 'yaml'
require 'psych'
require 'pry'

module OauthHelpers
  def config
    @config ||= begin
      path = File.absolute_path(__FILE__ + '/../../config.yaml')
      OpenStruct.new(Psych.load_file(path))
    end
  end

  def auth_url
    'https://accounts.google.com/o/oauth2/v2/auth?' \
    'scope=email'\
    '&access_type=offline'\
    '&redirect_uri='\
      "#{config.redirect_uri}"\
    '&response_type=code&'\
    '&client_id='\
      "#{config.client_id}"
  end

  def _render(template, options = {})
    options.each { |k, v| instance_variable_set("@#{k}", v) }
    template = File.read(template)
    ERB.new(template).result(binding)
  end

end