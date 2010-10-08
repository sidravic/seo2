class RecentSearchesController < ApplicationController
  def recent_searches
    @page = 1
    @page = params[:p] unless params[:p].blank?
    @recent_searches = RecentSearch.recent_search(@page)
  end  
end
