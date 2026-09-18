class IndexController < ApplicationController
  def index
    @page_name = "Neko's Personal Website"
    @name = "XinYueNeko"
    @text = <<~TEXT
Hola, Ruby on Rails!
This is my personal website.
My name is "XinYue Neko"
I'm from China.
    TEXT
    render 'index/index'
  end
end
