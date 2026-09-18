class NsController < ApplicationController
  def index
    @title = "NekoSummer 官方网站"
    render 'ns/index', layout: false
  end
end
