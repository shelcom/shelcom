languages = {
  :de => 'German',
  :en => 'English',
  :es => 'Spanish',
}
dictionary = {
  :de => { :one => 'eins', :two => 'zwei', :three => 'drei' },
  :en => { :one => 'one', :two => 'two', :three => 'three' },
  :es => { :one => 'uno', :two => 'dos', :three => 'tres' }
}


word = languages.select do |key, value|
  key === :de || key === :en || key === :es
end

lines = word.map do |key, name|
  value = dictionary[key]
  part = value.map { |key, value| "#{key} means #{value}." }
  "In #{name}, #{part.join(",")}"
end