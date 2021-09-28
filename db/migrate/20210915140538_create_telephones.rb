class CreateTelephones < ActiveRecord::Migration[6.1]
  def change
    create_table :telephones do |t|
      t.string :number
      t.integer :kind
      t.references :patient, null: false, foreign_key: true

      t.timestamps
    end
  end
end
