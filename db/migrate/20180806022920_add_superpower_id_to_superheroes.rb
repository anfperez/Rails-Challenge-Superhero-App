class AddSuperpowerIdToSuperheroes < ActiveRecord::Migration[5.0]
  def change
    add_column :superheroes, :superpower_id, :integer
  end
end
