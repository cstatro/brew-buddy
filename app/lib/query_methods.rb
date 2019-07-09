

def beer_search(arg)
    beer = RestClient.get("http://api.brewerydb.com/v2/search?key=3f1a5ca2f9d684d046245ab5c02b0f47&q=#{arg}")
    result_json = JSON.parse(beer)["data"]
end


# returns first result of beer_search in a hash
def beer_search_first(arg)
    beer_search(arg).find {|beer|beer}
end

# puts a numbered list of search results, array of search results is returned
def beer_search_with_index(arg)
    beer_search(arg).each_with_index do |beer, index|
        puts "#{index+1}. #{beer["name"]}"
    end
end