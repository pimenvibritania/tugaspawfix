class CreateSales < ActiveRecord::Migration[5.1]
  def change
    create_table :sales do |t|
      t.string :name
      t.decimal :total

      t.timestamps
    end
  end
end
