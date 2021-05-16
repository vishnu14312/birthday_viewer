birthday_array = []
@birthdays.each do |birthday|
	if birthday.birthday < Date.today
		next_birthday = Date.new(Date.today.year + 1, birthday.birthday.month, birthday.birthday.day)
	else 
		next_birthday = birthday.birthday
	end

	(0..49).each do |i|
		birthday_hash = { }
		birthday_hash["id"] = birthday.id
		birthday_hash["title"] = birthday.name
		birthday_hash["start"] = (next_birthday + i.year)   
		birthday_hash["end"] = (next_birthday + i.year)
		birthday_hash["url"] = birthday_url(birthday, format: :html)
		birthday_array << birthday_hash
	end	
end	
json.array!(birthday_array) do |birthday_hash|
	json.id birthday_hash["id"]
	json.title birthday_hash["title"]
	json.start birthday_hash["start"]   
	json.end birthday_hash["end"]
	json.url birthday_hash["url"]
end