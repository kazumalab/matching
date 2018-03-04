class CreateUserProfiles < ActiveRecord::Migration[5.1]
  def change
    create_table :user_profiles do |t|
      t.integer :user_id,              limit: 4,                   null: false, unsigned: true
      t.integer :job_id,               limit: 4,                   null: false, unsigned: true
      t.integer :height,               limit: 4,                   null: false, unsigned: true # 身長
      t.integer :body_type,            limit: 1, default: 0,       null: false, unsigned: true # 体型 0:未選択
      t.integer :blood_type,           limit: 1, default: 0,       null: false                 # 血液型 0:未選択
      t.integer :education_background, limit: 1, default: 0,       null: false, unsigned: true # 学歴 0:未選択
      t.integer :annual_income,        limit: 1, default: 0,       null: false, unsigned: true # 年収 0:未選択
      t.integer :holiday,              limit: 1, default: 0,       null: false, unsigned: true # 休日 0:未選択
      t.integer :drink_alcohol,        limit: 1, default: 0,       null: false, unsigned: true # お酒 0:未選択
      t.integer :smoking,              limit: 1, default: 0,       null: false, unsigned: true # タバコ 0:未選択
      t.integer :marriage_history,     limit: 1, default: 0,       null: false, unsigned: true # 婚歴 0:未選択
      t.integer :marriage_intention,   limit: 1, default: 0,       null: false, unsigned: true # 結婚に対する意思 0:未選択
      t.integer :date_cost,            limit: 1, default: 0,       null: false, unsigned: true # デートの費用 0:未選択

      t.timestamps
    end
  end
end
