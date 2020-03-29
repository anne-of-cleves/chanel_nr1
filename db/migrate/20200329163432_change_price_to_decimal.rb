class ChangePriceToDecimal < ActiveRecord::Migration[5.2]
 def up
  	change_column :wines, :price, :decimal, precision: 7, scale: 2
  	Wine.all.each do |w|
  		w.price = w.price / 100.0
  		w.save
  	end
  end

  def down
  	Wine.all.each do |w|
  		w.price = w.price * 100
  		w.save
  	end
  	change_column :wines, :price, :integer
  end
end
