# frozen_string_literal: true

describe DatabaseConnection do

  it "should setup a connection to the database" do
    expect(PG).to receive(:connect).with(dbname: 'bookkeeping_app_test')
    DatabaseConnection.setup('bookkeeping_app_test')
  end

  it "should have a persistent connection" do
    test_connection = DatabaseConnection.setup('bookkeeping_app_test')
    expect(DatabaseConnection.connection).to eq test_connection
  end

  context ".query"

  it "executes a query" do
    connection = DatabaseConnection.setup('bookkeeping_app_test')
    expect(connection).to receive(:exec_params).with("SELECT * FROM projects", [])
    DatabaseConnection.query("SELECT * FROM projects")
  end

end