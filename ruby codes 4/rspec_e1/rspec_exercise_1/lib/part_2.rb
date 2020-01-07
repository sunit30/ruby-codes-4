def hipsterfy(string)
    vowels="aeiou"
    count=0
    arr=string.split("").reverse.select do |ele|
         count +=1 if vowels.include?(ele)
         (count==0 || count>1) || (count==1 && !vowels.include?(ele)) 
    end
    arr.reverse.join("")
end

def vowel_counts(string)
    string.downcase!
    hash={}
    if string.include?("a")
    hash["a"]=string.count("a")
    end
    if string.include?("e")
    hash["e"]=string.count("e")
    end
    if string.include?("i")
    hash["i"]=string.count("i")
    end
    if string.include?("o")
    hash["o"]=string.count("o")
    end
    if string.include?("u")
    hash["u"]=string.count("u")
    end
    return hash
end

def caesar_cipher(message,num)
    alphabet="abcdefghijklmnopqrstuvwxyz"
    array=alphabet.split("")
    message.each_char.with_index do |char,i|
    if alphabet.include?(char)
        message[i]=alphabet[-(26-(alphabet.index(char)))+(num%26)]
    end
    end
return message
end