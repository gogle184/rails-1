class CreatePosts < ActiveRecord::Migration[6.1]
  def change
    create_table :posts do |t|
      t.string :title
      t.string :startday
      t.string :finishday
      t.string :wholeday

      t.timestamps
    end
  end
end
