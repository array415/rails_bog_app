class Creature < ActiveRecord::Base
  validates :name, :description, presence: true
end
