require 'csv'

csv_text = File.read(Rails.root.join('lib', 'seeds', 'starch.csv'))
csv = CSV.parse(csv_text, :headers => true, :encoding => 'ISO-8859-1')
csv.each do |row|
    puts row.to_hash
    t = Starch.new
    t.id = row['id']
    t.name = row['name']
    t.save
    puts "#{t.id}, #{t.name} saved"
end
puts "There are now #{Starch.count} rows in veg table";