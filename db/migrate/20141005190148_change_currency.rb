class ChangeCurrency < ActiveRecord::Migration
  def change
    change_column :currencies, :rate, :decimal, :precision => 10, :scale => 10
  end
end
