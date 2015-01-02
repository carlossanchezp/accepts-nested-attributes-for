class Entity < ActiveRecord::Base
  has_many :entity_roles, inverse_of: :entity
  has_many :notices, through: :entity_roles

  validates :name, presence: true
  validates :address, presence: true

end
