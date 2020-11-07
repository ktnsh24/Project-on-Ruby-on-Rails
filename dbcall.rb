require 'csv'

v1 = ARGV[0]
v2 = ARGV[1]
v3 = ARGV[2]
v4 = ARGV[3]




if v1.nil? && v2.nil? && v3.nil? && v4.nil? == true
	Arti = Article.all
	# puts Arti.inspect
else
	Arti = Article.where(date: "%s" % [v1].."%s" % [v2], app: "%s" % [v3], platform: "%s" % [v4]) 
# puts Arti.inspect
end



CSV.open("dboutput.csv", "wb") do |csv|
  csv << Arti.attribute_names
  Arti.find_each do |user|
    csv << user.attributes.values
  end
end
# bundle exec rails runner DBcall.rb 2020-01-01 2020-01-01 Pong Android