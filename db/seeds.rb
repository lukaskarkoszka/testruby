#50.times {|x| User.create(name: "nametest#{x}", email: "emailtest#{x}")}


users = %w(kaisa maciek grzesiek kamil aaa lal jdjdj aasasa sadsad sdsadas asd sadas asdsad asdsad asd aasd sad )
users.each { |name| User.create(name:name)}

User.all.each do |user|
	user.orders.create(name: "Zamoowienie #{user.name}")
end