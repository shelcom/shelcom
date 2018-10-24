names = ['Dr. Joanne Bartoletti', 'Bob Taylor Jr.']
first_name = ['Dr.', 'Mrs.', 'Mr.', 'Jr.']
last_names = names.map do |name|
	first_name.inject(name) do |last_name, first_name|
		last_name.sub(first_name, '')
	end.split.join(" ")
end
puts last_names

hash_of_names = last_names.inject({}) do |hash, name|
	name_parts = name.split
	hash[name_parts[0]] = name_parts[1]
	hash
end
puts hash_of_names

hash_of_letters = last_names.inject({}) do |hash, name|
	name_parts = name.split
	hash[name_parts[0][0]] = name_parts[1][1]
	hash
end
puts hash_of_letters