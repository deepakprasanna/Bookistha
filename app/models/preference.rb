class Preference < ActiveRecord::Base
  belongs_to :preference

  validates_presence_of :slug, :country
  validates_uniqueness_of :slug
end
