class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.date   :birthday,      null: false
      t.string :nickname,      null:false
      t.timestamps
    end
  end
end
