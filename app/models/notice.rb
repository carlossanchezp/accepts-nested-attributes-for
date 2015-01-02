class Notice < ActiveRecord::Base
  has_many :entity_roles, inverse_of: :notice
  has_many :entities, through: :entity_roles


  validates :title, presence: true

  accepts_nested_attributes_for :entities

end
