class Title < ActiveRecord::Base
  # add relationships here
  has_and_belongs_to_many :figures
end
