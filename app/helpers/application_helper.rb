module ApplicationHelper



  def get_resource_url(m)
    if m.class == Refinery::Page
      href = url_for(m)
    end
    if m.class == Refinery::Blog::Post
      if Refinery::Blog::Category.find_by_title('Акции').posts.include?(m)
        href = "/action/#{m.slug}"
      elsif Refinery::Blog::Category.find_by_title('Скидки').posts.include?(m)
        href = "/discount/#{m.slug}"
      elsif Refinery::Blog::Category.find_by_title('Статьи').posts.include?(m)
        href = "/article/#{m.slug}"
      elsif Refinery::Blog::Category.find_by_title('Новости').posts.include?(m)
        href = "/news/#{m.slug}"
      end
    end
    href
  end

  # def get_category_url(c)
  #   href = case c.title
  #            when 'Акции' then 'actions'
  #          end
  #
  # end

end
