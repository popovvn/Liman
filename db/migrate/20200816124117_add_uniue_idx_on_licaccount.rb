class AddUniueIdxOnLicaccount < ActiveRecord::Migration[5.2]
  def change
    add_index :licenses, [:lictype, :licaccount], unique: true
  end
end
