class CreateNotices < ActiveRecord::Migration
  def change
    create_table :notices do |t|
      t.string :title, null: false

      t.timestamps
    end
  end
end
