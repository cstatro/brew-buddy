def beer_search(arg,pg=1)
    beer = RestClient.get("http://api.brewerydb.com/v2/search?key=3f1a5ca2f9d684d046245ab5c02b0f47&q=#{arg}&withBreweries=y&p=#{pg}")
    result_json = JSON.parse(beer)
end

# returns first result of beer_search in a hash

def beer_search_first(arg)
    beer_search(arg).find {|beer|beer}
end


def display_navigation(arg,pg=1)
    print_line
    line_break
    puts "There are #{beer_search(arg,pg)["totalResults"]} total results. You are on page #{beer_search(arg,pg)["currentPage"]} of #{beer_search(arg,pg)["numberOfPages"]}. "
    line_break
end

# puts a numbered list of search results, array of search results is returned

def beer_search_with_index(arg,pg=1)
    display_navigation(arg,pg)
    beer_search(arg,pg)["data"].each_with_index do |beer, index|
        begin
            puts "#{index+1}. #{beer["name"]} - #{beer["breweries"].first["name"]}"
        rescue 
            puts "#{index+1}. Duff Beer - Springfield Brewery"
        end
    end
end


