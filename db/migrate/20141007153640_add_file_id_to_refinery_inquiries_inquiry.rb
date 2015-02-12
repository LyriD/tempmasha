class AddFileIdToRefineryInquiriesInquiry < ActiveRecord::Migration
  def change
    add_column :refinery_inquiries_inquiries, :file_id, :string
    add_column :refinery_inquiries_inquiries, :vacancy_id, :integer, index: true
  end
end
