module WelcomeHelper

	def count_locations(respItems, locations_count)
  	respItems.each do |item|
      js_items.push( { "lat" => item["lat"], "lng" => item["lng"], "title" => item["title"] } )
      location_key = "lat #{format("%.6f", item["lat"])}, lng #{format("%.6f", item["lng"])}"
      locations_count[location_key] = (@locations_count.has_key? location_key) ?  @locations_count[location_key]+1 : 1
    end
    locations_count
	end

end
