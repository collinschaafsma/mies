ENV['RACK_ENV'] = "test"

RSpec.configure do |config|
  config.after :all do
    ActiveRecord::Base.connection.tables.each do |table|
      unless ['schema_migrations'].include?(table)
        ActiveRecord::Base.connection.execute("DELETE FROM #{table}")
        ActiveRecord::Base.connection.execute("DELETE FROM sqlite_sequence where name='#{table}'")
      end
    end
    ActiveRecord::Base.connection.execute("VACUUM")
  end
end
