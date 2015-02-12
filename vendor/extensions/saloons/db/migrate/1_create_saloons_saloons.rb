class CreateSaloonsSaloons < ActiveRecord::Migration

  def up
    create_table :refinery_saloons do |t|
      t.string :title
      t.text :body
      t.string :adress
      t.string :phone
      t.string :time
      t.integer :map_id
      t.integer :position

      t.timestamps
    end

  end

  def down
    if defined?(::Refinery::UserPlugin)
      ::Refinery::UserPlugin.destroy_all({:name => "refinerycms-saloons"})
    end

    if defined?(::Refinery::Page)
      ::Refinery::Page.delete_all({:link_url => "/saloons/saloons"})
    end

    drop_table :refinery_saloons

  end

end
