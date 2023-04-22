class ChangeDataStartdayToPosts < ActiveRecord::Migration[6.1]
  def change
    change_column :posts, :startday, :date
  end
end
