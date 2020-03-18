class ChangeAlcFromIntToDecimal < ActiveRecord::Migration[5.2]
  def up
  	change_column :wines, :alc, :decimal
  	Wine.all.each do |w|
  		w.alc = w.alc / 10.0
  		w.save
  	end
  end

  def down
  	Wine.all.each do |w|
  		w.alc = w.alc * 10
  		w.save
  	end
  	change_column :wines, :alc, :integer
  end
end
