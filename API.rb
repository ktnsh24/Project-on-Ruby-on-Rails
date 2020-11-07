#Approach 1
# require 'rubygems'
# require 'httparty'
# require 'open-uri'
require 'json'
require 'net/https'
require 'uri'
require 'csv'


v1 = ARGV[0]
v2 = ARGV[1]


url = "https://api.libring.com/v2/reporting/get?start_date=%s&end_date=%s&period=custom_date&group_by=date,connection,app,platform,country&allow_mock=true&lock_on_collection=true&data_type=adnetwork&limit=2&offset=5" % [v1,v2]
uri = URI.parse(url)
https = Net::HTTP.new(uri.host, uri.port) 
https.use_ssl = true 
req = Net::HTTP::Get.new(uri.request_uri, initheader = {"Content-Type" =>"application/json", "Authorization" => "Token Add_your token"})
response = https.request(req)
puts response.code
response = JSON.parse(response.body)

conn = response['connections']
return_keys = [ "date","connection","country","platform","app","impressions","ad_revenue"]

conn = conn.collect do |event|
  Hash[
    return_keys.collect do |key|
      [ key, event[key] ]
    end
  ]
end


CSV.open("output.csv", "w") do |csv| 
  conn.each do |hash| 
    csv << hash.values
  end
end






#Approach2
# require 'rubygems'
# require 'httparty'

# class API
#   include HTTParty
#   base_uri 'https://api.libring.com'

  
#   def data
#   	v1 = ARGV[0]
#   	v2 = ARGV[1]
#   	myToken = 'Add your token'
#   	head = { 'Authorization' => "Token %s" % [myToken] }
#   	endpoint = '/v2/reporting/get'
#   	filter = '?start_date=%s&end_date=%s&period=custom_date&group_by=date,connection,app,platform,country&allow_mock=true&lock_on_collection=true&data_type=adnetwork&verbose=true' % [v1,v2]
#     #filter = '?start_date=%s&end_date=%s&period=custom_date&include=date,connection,app,platform,country,impressions,ad_revenue&allow_mock=true&lock_on_collection=true&fields = adnetwork ?verbose=true' % [v1,v2]
#     self.class.get(filter ,:headers => head)
#   end
# end

# api = API.new
# api_data = api.data
# response = JSON.parse(api_data.body)
# # response.each {|line| puts line['user']['connections']}
# file = open("out1.csv", "wb")
# file.write(response)
# file.close()





 

