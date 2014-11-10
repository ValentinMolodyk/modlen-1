class ChangeCurrency < ActiveRecord::Migration
  def change
    change_column :currencies, :rate, :decimal, :precision => 4, :scale => 3
  end
end
