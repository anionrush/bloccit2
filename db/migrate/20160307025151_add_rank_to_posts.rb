class AddRankToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :rank, :float, default: 0.0
  end
end
