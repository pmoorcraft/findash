class AddBusinessRefToCashflows < ActiveRecord::Migration
  def change
    add_reference :cashflows, :business, index: true, foreign_key: true
  end
end
