require "net/http"

class Stretchy
  @http_client = HTTP::Client
  
  def initialize(host = "127.0.0.1", port = "9200")
    @host = host
    @port = port
    @es_url = "http://#{@host}:#{@port}"
  end

  def search(query)
    response = post_json("#{@es_url}/_search", query)
    puts response
  end


  def post_json(url, json)
    Json.parse(@http_client.post(url, json).body.not_nil!)
  end

end
