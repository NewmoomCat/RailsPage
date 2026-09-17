class BlogController < ApplicationController
  def blogs
    @blog_page_title = "Neko's Blog"
    @list_text = "Blog List: "
    render 'blog/blogs'
  end
  def neko
    @neko_page_title = "XinYueNeko's Page"
    @neko_h1_title = "Personal Page"
    render 'blog/neko'
  end
end
