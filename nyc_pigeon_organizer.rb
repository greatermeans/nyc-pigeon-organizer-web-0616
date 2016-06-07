pigeon_data = {
  :color => {
    :purple => ["Theo", "Peter Jr.", "Lucky"],
    :grey => ["Theo", "Peter Jr.", "Ms. K"],
    :white => ["Queenie", "Andrew", "Ms. K", "Alex"],
    :brown => ["Queenie", "Alex"]
  },
  :gender => {
    :male => ["Alex", "Theo", "Peter Jr.", "Andrew", "Lucky"],
    :female => ["Queenie", "Ms. K"]
  },
  :lives => {
    "Subway" => ["Theo", "Queenie"],
    "Central Park" => ["Alex", "Ms. K", "Lucky"],
    "Library" => ["Peter Jr."],
    "City Hall" => ["Andrew"]
  }
}

require 'pry'

def nyc_pigeon_organizer(pigeon_data)
  new_hash = {}
  pigeon_data.each do |attribute,value_hash|
    value_hash.each do |key,value_array|
      value_array.each do |name|
        new_hash[name] ||= {}
        new_hash[name][attribute] ||= []
        if value_array.include?(name)
          new_hash[name][attribute] << key.to_s
        end
      end
    end
  end
  new_hash
end
# if a name exists within the array of a value_hash, then the key of the value_hash will 

# name = {attribute => key}