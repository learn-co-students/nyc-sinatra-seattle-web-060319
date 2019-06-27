class Figure < ActiveRecord::Base
  # add relationships here
  has_many :landmarks
  has_and_belongs_to_many :titles
end
