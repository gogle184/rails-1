class ChangeDataWholedayToPosts < ActiveRecord::Migration[6.1]
  def change
    change_column :posts, :wholeday, :boolean
  end
end
