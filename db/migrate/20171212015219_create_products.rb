class CreateProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :products do |t|
      t.string :code
      t.string :name
      t.decimal :proce

      t.timestamps
    end
  end
end
