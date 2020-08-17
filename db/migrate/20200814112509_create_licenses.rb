class CreateLicenses < ActiveRecord::Migration[5.2]
  def change
    create_table :licenses do |t|
      t.string :lictype
      t.string :licaccount
      t.timestamp :licdate
      t.text :comment

      t.timestamps
    end
  end
end
