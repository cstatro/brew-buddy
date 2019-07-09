def limit_rating(num)
    if num > 5
        5
    elsif num < 1
        1
    else
        num
    end
end