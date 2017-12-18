class CreateMovies < ActiveRecord::Migration[5.1]
  def change
    create_table :movies do |t|
      t.string  :title
      t.text    :overview
      t.string  :language
      t.string  :genres
      t.date    :release_date
      t.integer :revenue, limit: 8
      t.integer :runtime

      t.timestamps
    end
  end
end
