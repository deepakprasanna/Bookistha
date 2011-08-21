class User < ActiveRecord::Base
  has_many :services
  has_many :books
  
  attr_accessible :name, :email
end
