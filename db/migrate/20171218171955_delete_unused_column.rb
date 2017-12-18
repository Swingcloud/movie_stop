class DeleteUnusedColumn < ActiveRecord::Migration[5.1]
  def change
    remove_column :movies, :genres
  end
end
