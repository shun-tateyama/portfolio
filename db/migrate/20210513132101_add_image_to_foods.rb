class AddImageToFoods < ActiveRecord::Migration[5.2]
  def change
    add_column :foods, :image, :string
  end
end
