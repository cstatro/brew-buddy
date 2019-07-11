def limit_rating(num)
    if num > 5
        5
    elsif num < 1
        1
    else
        num
    end
end
### Paginate_Toggling
def page_toggle_up(current,max)
    current == max ? current : current += 1
end
def page_toggle_down(current)
    current == 1 ? current : current -= 1
end
### Stats helper
def find_favorite_type(beer_arr)
    begin
        beer_types = beer_arr.pluck(:style)
        beer_types.max_by { |t| beer_types.count(t)}
    rescue
        "Bud Light Straw-Ber-Rita"
    end
end