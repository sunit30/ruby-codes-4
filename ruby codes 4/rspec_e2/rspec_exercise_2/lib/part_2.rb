def palindrome?(string)
    array=string.split("")
    (0...array.length/2).each do |i|
    array[i],array[-(i+1)]=array[-(i+1)],array[i]
    end
    new_string=array.join("")
    if new_string==string
    return true
    else return false
    end
end


def substrings(string)
    array=[]
    string.each_char.with_index do |char,j|
         i=j
         while(i<string.length)
            array<<string[j..i]
            i+=1
         end
    end
    array
end


def palindrome_substrings(string)
array=[]
substrings(string).each do |s|
if s.length>1
    if palindrome?(s)
        array<<s
    end
end
end
array
end