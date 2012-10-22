require "sinatra/config_file"
require 'json'
require 'haml'
require 'oauth'

class Bookworm < Sinatra::Base

    configure do
        set :port, ENV['PORT']
    end

    get '/' do
      haml :index
    end

end

Bookworm.run!