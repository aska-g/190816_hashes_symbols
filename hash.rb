students = %w[petter tulasi handan]
ages =       [26, 28, 25]

# '- Petter is 26 years old'

students.each_with_index do |student, index|
  "- #{student.capitalize} is #{ages[index]} years old"
end

students_ages = {
  'petter' => 26,
  'tulasi' => 28,
  'handan' => 25
}


# CRUD
# Create
students_ages['jostein'] = 31


# Read
students_ages['tulasi']

# Update
students_ages['tulasi'] = 20
#=> {"petter"=>26, "tulasi"=>20, "handan"=>25, "jostein"=>31}


# Delete
students_ages.delete('petter')
#=> {"tulasi"=>20, "handan"=>25, "jostein"=>31}



# Checking if a key exists
students_ages.key?('jostein') #=> true
students_ages.key?('joanna') #=> false

students_ages.value?(20) #=> true

# Retrieve all keys
students_ages.keys
#=> ["tulasi", "handan", "jostein"]

students_ages.values
#=> [20, 25, 31]

# EACH

# '- Petter is 26 years old'

students_ages.each do |student, age|
  "- #{student} is #{age} years old"
end


# 3 ways of writing the same hash

# students_ages = {
#   'petter' => 26,
#   'tulasi' => 28,
#   'handan' => 25
# }

# students_ages = {
#   :petter => 26,
#   :tulasi => 28,
#   :handan => 25
# }

students_ages = {
  petter: 26,
  tulasi: 28,
  handan: 25
}

students_ages['handan'] #=> nil
students_ages[:handan] #=> 25


students = {
  jeremie: {
    age: 34,
    city: 'Oslo'
  },
  agnieszka: {
    age: 31,
    city: 'Oslo'
  }
}

students[:jeremie][:age] #=> 34
students[:agnieszka][:age] #=> 31

# The objects id is the same for 2 same symbols:
students[:jeremie].keys[0].object_id
students[:agnieszka].keys[0].object_id




def tag(tag_name, content, attributes = {})
  #  what we get
  # {
  #   href: "http://lewagon.org",
  #   class: "btn"
  # }

  #  what we want
  # href='http://lewagon.org' class='btn'

  attributes_string = attributes.map do |name, value|
    " #{name}='#{value}'"
  end
  attributes_string = attributes_string.join

  "<#{tag_name}#{attributes_string}>#{content}</#{tag_name}>"
end

puts tag('h1', 'Hello world')
# puts tag('h1') => ArgumentError
# puts tag('h1', 'Hello', 'style: color=red') => ArgumentError

puts tag("h1", "Hello world", class: "bold")
puts tag("a", "Le Wagon", { href: "http://lewagon.org", class: "btn" })


# puts tag('h1', 'Hello', ['style: color=red', 'class="header"', 'id="main_header"'])


























