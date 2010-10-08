require 'open-uri'


class RecentSearch

  attr_reader :recent_searches
  attr_accessor :recent_searches_hash
  
  def query(page = 1)    
    recent_searches_json = open(ANSWERICA_RECENT_QUERIES_URL + "?p=#{page}")
    @recent_searches = JSON.parse(recent_searches_json.read)    
  end

  def organize
    @recent_searches_hash = {}
    @recent_searches['recent100'].each do |search_result|
      @recent_searches_hash["#{search_result[0]}"] = "#{HELLOEXPERT_DOMAIN}/answerica_search_/" + URI.escape(search_result[0])
    end
  end

  def self.recent_search(page = 1)
    recent_search = RecentSearch.new
    recent_search.query(page)
    recent_search.organize
    recent_search.recent_searches_hash
  end
end


#http://answerica.com/rjson?p=1