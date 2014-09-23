require "net/http"

class Stretchy
  @http_client = HTTP::Client
  
  def initialize(host = "127.0.0.1", port = "9200")
    @es_url = "http://#{host}:#{port}"
  end

  def search(query)
    post_json("#{@es_url}/_search", query)
  end

  def match_all(size = "10")
    query = "{\"query\":{\"bool\":{\"must\":{\"match_all\":{}}}},\"size\":#{size.to_s}}"

    search(query)
  end

  def post_json(url, json)
    Json.parse(@http_client.post(url, json).body.not_nil!)
  end

end

puts Stretchy.new.match_all
