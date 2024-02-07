class CreateStocks < ActiveRecord::Migration[7.0]
  def change
    create_table :stocks do |t|
      t.string :ticker
      t.integer :stock_source_id
      t.integer :company_source_id

      t.timestamps
    end
  end
end
