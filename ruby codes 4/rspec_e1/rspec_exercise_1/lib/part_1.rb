def average(num1,num2)
    (num1+num2)/2.0
end

def average_array(arr)
    (arr.inject(0){|acc,ele|acc+ele}) / (arr.length).to_f
end

def repeat(str,num)
    str*num
end

def yell(str)
    str.upcase + "!"
end

def alternating_case(sent)
    arr=sent.split(" ")
    arr=arr.map.with_index do |word,i|
    if i%2==0
        word.upcase
    else word.downcase
    end
    end
    arr.join(" ")
end 