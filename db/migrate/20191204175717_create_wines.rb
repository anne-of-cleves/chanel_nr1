class CreateWines < ActiveRecord::Migration[5.2]
  def change
    create_table :wines do |t|
      t.string :name
      t.integer :year
      t.integer :alc
      t.integer :sugar
      t.string :origin
      t.integer :price
      t.string :wherebought

      t.timestamps
    end
  end
end
