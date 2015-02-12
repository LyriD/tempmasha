class AddMapUrlToRefinerySaloonsSaloon < ActiveRecord::Migration
  def change
    add_column :refinery_saloons, :map_url, :string
  end
end
