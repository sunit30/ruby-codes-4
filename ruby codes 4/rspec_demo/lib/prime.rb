def prime?(n)
    return false if n<2
(2...n).each do |ele|
    if (n%ele)==0
        return false
    end
end
        return true    
end
