birthday.schedule.first(1).each do |date|
	json.id birthday.id
	json.title birthday.name
	json.title birthday.name
	json.start date   
  	json.end date   
	json.url birthday_url(birthday, format: :html)
end	
