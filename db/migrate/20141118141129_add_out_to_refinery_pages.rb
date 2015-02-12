class AddOutToRefineryPages < ActiveRecord::Migration
  def change
    add_column :refinery_pages, :out, :integer, :index => true
  end
end
