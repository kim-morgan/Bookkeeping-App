# frozen_string_literal: true

require './lib/database_connection'

if ENV['ENVIRONMENT'] == 'test'
  DatabaseConnection.setup('bookkeeping_app_test')
else
  DatabaseConnection.setup('bookkeeping_app')
end
