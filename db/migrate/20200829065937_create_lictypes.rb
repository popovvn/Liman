class CreateLictypes < ActiveRecord::Migration[5.2]
  def change
    create_table :lictypes do |t|
      t.string :typename

      t.timestamps
    end
  end
end
