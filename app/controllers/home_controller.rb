class HomeController < ApplicationController
  def index
    @bookmarks = Bookmark.joins(:category).group("categories.title").count
  end
end
