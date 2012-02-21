class Building < ActiveRecord::Base
  # I'm a class that inherits from active record.
  # I should only deal with matters related to the db.
  validates :name, :presence => true

end
