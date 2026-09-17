class BlogController < ApplicationController
  def blogs
    @blog_page_title = "Neko's Blog"
    @list_text = "Blog List: "
    @name = "XinYueNeko"
    render 'blog/blogs'
  end
  def neko
    @neko_page_title = "XinYueNeko's Page"
    @neko_h1_title = "Personal Page"
    @name = "XinYueNeko"
    render 'blog/neko'
  end
  # 处理 Markdown
  def show_md
    file_name = params[:id].to_s.downcase.gsub(/[^a-z0-9_-]/, "")
    file_path = Rails.root.join("app", "posts", "#{file_name}.md")
    if File.exist?(file_path)
      md_text = File.read(file_path)
      @h_content = Kramdown::Document.new(md_text, input: "GFM").to_html
      @p_title = params[:id].capitalize
    else
      render plain: "Markdown not found: #{file_path}", status: 404
    end
    @name = "XinYueNeko"
    render 'blog/show_md'
  end
end
