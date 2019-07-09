

def beer_search(arg)
    beer = RestClient.get("http://api.brewerydb.com/v2/search?key=3f1a5ca2f9d684d046245ab5c02b0f47&q=#{arg}")
    result_json = JSON.parse(beer)["data"]
end



def beer_search_names(arg)
    beer_search(arg).each_with_index {|beer, index| "#{index + 1}. #{beer["name"]}"}[0]
end



def beer_search_first(arg)
    beer_search(arg).find {|beer| beer}
end