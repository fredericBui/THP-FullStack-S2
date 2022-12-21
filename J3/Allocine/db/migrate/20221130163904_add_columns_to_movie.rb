class AddColumnsToMovie < ActiveRecord::Migration[7.0]
  def change
    add_column :movies, :year, :integer
    add_column :movies, :genre, :string
    add_column :movies, :synopsis, :text
    add_column :movies, :director, :string
    add_column :movies, :allocine_rating, :float
    add_column :movies, :my_rating, :integer
    add_column :movies, :already_seen, :boolean
  end
end
