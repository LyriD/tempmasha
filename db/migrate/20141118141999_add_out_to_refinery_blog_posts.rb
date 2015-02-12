class AddOutToRefineryBlogPosts < ActiveRecord::Migration
  def change
    add_column :refinery_blog_posts, :out, :integer, :index => true
  end
end
