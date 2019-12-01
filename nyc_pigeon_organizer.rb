require 'pp'
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
 
 def nyc_pigeon_organizer(data)
  organized_pigeons = {}
 	 data.each do |attribute, info|
     info.each do |detail, names|
       names.each do |name|
        organized_pigeons[name] ||= {}
        organized_pigeons[name][attribute] ||= []
        organized_pigeons[name][attribute] << detail.to_s
       end
     end
   end
  organized_pigeons
end


#def nyc_pigeon_organizer(data)
#  organized_pigeons = {}
#	  data.each do |attribute, hash|
#    hash.each do |key, array|
#      array.each do |name|
#        if !organized_pigeons.has_key?(name)
#          organized_pigeons[name] = {}
#        end
#        if !organized_pigeons[name].has_key?(attribute)
#          organized_pigeons[name][attribute] = []
#        end
#        if !organized_pigeons[name][attribute].include?(key)
#          organized_pigeons[name][attribute] << key.to_s
#        end
#      end
#    end
#  end
#  pp organized_pigeons
#  organized_pigeons
#end
#nyc_pigeon_organizer(pigeon_data)
