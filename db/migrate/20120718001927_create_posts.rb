class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :text
      t.string :user
      t.datetime :date
      t.string :map

      t.timestamps
    end
  end
end
