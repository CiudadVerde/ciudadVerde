class Delivery < ActiveRecord::Base
  belongs_to :premio
  belongs_to :usuario
end
