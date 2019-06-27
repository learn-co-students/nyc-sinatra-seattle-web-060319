class Title < ActiveRecord::Base
  # add relationships here
  has_many:figurestitles
  has_many :figures, through: :figurestitles
end
