class ChangeDataFinishdayToPosts < ActiveRecord::Migration[6.1]
  def change
    change_column :posts, :finishday, :date
  end
end
