class AddCargoToColaborador < ActiveRecord::Migration[5.2]
  def change
    add_reference :colaboradores, :cargo, foreign_key: true
  end
end
