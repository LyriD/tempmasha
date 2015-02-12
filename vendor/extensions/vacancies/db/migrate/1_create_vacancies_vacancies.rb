class CreateVacanciesVacancies < ActiveRecord::Migration

  def up
    create_table :refinery_vacancies do |t|
      t.string :title
      t.text :body
      t.integer :position

      t.timestamps
    end

  end

  def down
    if defined?(::Refinery::UserPlugin)
      ::Refinery::UserPlugin.destroy_all({:name => "refinerycms-vacancies"})
    end

    if defined?(::Refinery::Page)
      ::Refinery::Page.delete_all({:link_url => "/vacancies/vacancies"})
    end

    drop_table :refinery_vacancies

  end

end
