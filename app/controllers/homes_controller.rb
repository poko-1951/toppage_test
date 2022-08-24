class HomesController < ApplicationController
  def top
  end

  def wiki
    @page = Wikipedia.find("伊勢崎市")
    @title = @page.title
    @con = @page.content
    @content = WikiCloth::Parser.new(data: @page.content) #page.contentはさっき取得した内容

    @content.to_html
  end
end
