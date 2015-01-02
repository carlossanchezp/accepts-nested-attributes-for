class EntityRole < ActiveRecord::Base
  belongs_to :entity,   inverse_of: :entity_roles
  belongs_to :notice,   inverse_of: :entity_roles

end
