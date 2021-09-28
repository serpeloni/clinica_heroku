class AddBirthdateToPatient < ActiveRecord::Migration[6.1]
  def change
    add_column :patients, :birthdate, :date
  end
end
