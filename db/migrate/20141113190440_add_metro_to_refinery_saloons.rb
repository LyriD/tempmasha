class AddMetroToRefinerySaloons < ActiveRecord::Migration
  def change
    add_column :refinery_saloons, :metro, :string
  end
end
