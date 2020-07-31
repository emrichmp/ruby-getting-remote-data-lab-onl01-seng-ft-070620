# Write your code here
class GetRequester
  attr_reader :url
  def initialize(url)
    @url = url
  end
  
  def get_response_body
    uri = URI.Parse(@url)
    response = Net::HTTP.get_response(uri)
    response.body
  end
end