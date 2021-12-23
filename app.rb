# frozen_string_literal: true

require 'sinatra/base'
require 'sinatra/reloader'
require 'sinatra/flash'

class BookkeepingApp < Sinatra::Base

  configure :development do
    register Sinatra::Reloader
  end

  enable :sessions, :method_override
  register Sinatra::Flash

  get '/' do
  end

  run! if app_file == $PROGRAM_NAME
end
