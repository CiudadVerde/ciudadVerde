class Harvest < ActiveRecord::Base
  belongs_to :table
  belongs_to :center
end
