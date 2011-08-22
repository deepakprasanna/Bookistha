class User < ActiveRecord::Base
  has_many :services
  has_many :books
  has_one :preference
 
  attr_accessible :name, :email
end
