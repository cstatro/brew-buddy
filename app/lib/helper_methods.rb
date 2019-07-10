def limit_rating(num)
    if num > 5
        5
    elsif num < 1
        1
    else
        num
    end
end


#### test method
def colin 
    User.find(1)
end

def joe
    User.find(2)
end