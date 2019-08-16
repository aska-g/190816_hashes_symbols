# oslo is in norway and you should visit the opera house when you're there

require 'csv'
# Date.today

CSV.foreach('cities.csv') do |row|
  p "#{row[0]} is in #{row[1]} and you should visit the #{row[2]} when you're there"
end
