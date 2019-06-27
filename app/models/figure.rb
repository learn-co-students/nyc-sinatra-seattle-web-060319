class Figure < ActiveRecord::Base
  # add relationships here
  has_many :landmarks
  has_many :figurestitles
  has_many :titles, through: :figurestitles
end
