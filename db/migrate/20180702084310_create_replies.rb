class CreateReplies < ActiveRecord::Migration
  def change
    create_table :replies do |t|
      t.string :comment
      
      t.string :user_id
      t.string :post_id

      t.timestamps null: false
    end
  end
end
