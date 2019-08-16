data_types = %w[integer float string array range true false nil time date hash]

# ARRAY CRUD
students = %w[petter tulasi handan]
#=> ["petter", "tulasi", "handan"]

# Create
# adding to the end
students.push('agnieszka')
#== students.append('agnieszka')
#== students << 'agnieszka'
#=> => ["petter", "tulasi", "handan", "agnieszka"]

# adding to the beginning
# students.unshift #== students.prepend
#=> ["agnieszka", "petter", "tulasi", "handan"]

# Read
students[0]

# Update
index = students.index('agnieszka')
students[index] = 'andreas'

# Delete
# would delete all 'handan' if there were more than one
# students.delete('handan')

index = students.index('handan')
students.delete_at(index)




p students









