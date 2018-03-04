class CreateResidences < ActiveRecord::Migration[5.1]
  def change
    create_table :residences do |t|
      t.integer :user_profile_id, limit: 4, null: false, unsigned: true
      t.integer :prefecture_id,   limit: 4, null: false, unsigned: true

      t.timestamps
    end
  end
end
