class CreateCashflows < ActiveRecord::Migration
  def change
    create_table :cashflows do |t|
      t.string :name
      t.string :type
      t.float :amount

      t.timestamps null: false
    end
  end
end
