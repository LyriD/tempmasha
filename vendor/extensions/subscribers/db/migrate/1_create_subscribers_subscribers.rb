class CreateSubscribersSubscribers < ActiveRecord::Migration

  def up
    create_table :refinery_subscribers do |t|
      t.string :email
      t.integer :position

      t.timestamps
    end

  end

  def down
    if defined?(::Refinery::UserPlugin)
      ::Refinery::UserPlugin.destroy_all({:name => "refinerycms-subscribers"})
    end

    if defined?(::Refinery::Page)
      ::Refinery::Page.delete_all({:link_url => "/subscribers/subscribers"})
    end

    drop_table :refinery_subscribers

  end

end
