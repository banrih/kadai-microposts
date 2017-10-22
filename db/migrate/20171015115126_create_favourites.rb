class CreateFavourites < ActiveRecord::Migration[5.0]
  def change
    create_table :favourites do |t|
      t.references :user, foreign_key: true
      t.references :post, foreign_key: { to_table: :microposts }

      t.timestamps
      
      t.index [:user_id, :post_id], unique: true
    end
  end
end
