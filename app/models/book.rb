class Book < ActiveRecord::Base
  belongs_to :user
  validates_presence_of :name, :condition, :interested_in, :age
end
