class AddSpecialtyToDoctor < ActiveRecord::Migration[6.1]
  def change
    add_reference :doctors, :specialty, null: false, foreign_key: true
  end
end
