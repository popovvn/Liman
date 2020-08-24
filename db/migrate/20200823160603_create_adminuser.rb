class CreateAdminusers < ActiveRecord::Migration[5.2]
  def change
    create_table :adminusers do |t|
      t.string :salt
      t.string :h_passw

      t.timestamps
    end
  end
end
