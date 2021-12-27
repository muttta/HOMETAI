class CreateDiaries < ActiveRecord::Migration[6.0]
  def change
    create_table :diaries do |t|
      t.text       :comment    
      t.integer    :category_id, null: false
      t.integer    :feeling_id , null: false
      t.date        :day       , null: false
      t.timestamps
    end
  end
end
