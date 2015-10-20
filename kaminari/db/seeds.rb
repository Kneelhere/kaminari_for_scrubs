require "ffaker"

User.delete_all

100.times do ||
	User.create(
		first_name: FFaker::Name::first_name,
		last_name: FFaker::Name::last_name,
		age: FFaker::Address::building_number
		)
end