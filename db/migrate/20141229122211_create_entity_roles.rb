class CreateEntityRoles < ActiveRecord::Migration
  def change
    create_table :entity_roles do |t|
      t.belongs_to :entity, index: true
      t.belongs_to :notice, index: true

      t.timestamps
    end
  end

end
