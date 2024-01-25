class CreateCharacters < ActiveRecord::Migration[7.1]
  def change
    create_table :characters do |t|
      t.string :first_name
      t.string :last_name
      t.string :race
      t.string :klass
      t.integer :hit_points

      t.timestamps
    end
  end
end
