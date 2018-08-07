class AddSuperpowerNameToSuperheroes < ActiveRecord::Migration[5.0]
  def change
    add_column :superheroes, :superpower_name, :string
  end
end
