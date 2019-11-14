class CreateMovies < ActiveRecord::Migration[5.2]
  def change
    create_table :movies do |t|
      t.references :user, foreign_key: true
      t.string :title
      t.text :description
      t.string :url
      t.integer :likes, default: 0
      t.integer :dislikes, default: 0

      t.timestamps
    end
  end
end
