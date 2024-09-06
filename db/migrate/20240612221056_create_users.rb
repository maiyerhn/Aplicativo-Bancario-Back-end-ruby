class CreateUsers < ActiveRecord::Migration[7.1]
  def change
    create_table :users do |t|
      t.string :nombre
      t.string :apellido
      t.string :usuario
      t.string :tipo

      t.timestamps
    end
  end
end
