def partition(arr,num)
new_arr=[]
arr1=[]
arr2=[]
arr.each do |ele|
    if ele<num
        arr1<<ele
    else 
        arr2<<ele
    end
end
new_arr=[arr1,arr2]
end


def merge(hash1,hash2)
    new_hash={}
    hash1.each {|k,v| new_hash[k]=v}
    hash2.each {|k,v| new_hash[k]=v}
    new_hash
end


def censor(sent,arr)
    sent_arr=sent.split
    arr.each do |arr_word|
        arr_word.downcase
        sent_arr.each do|sent_word|
            if sent_word.downcase==arr_word
            i=sent_arr.index(sent_word)
            sent_arr[i]=censored(sent_word)
            end
        end
    end
    sent=sent_arr.join(" ")
end
def censored(w)
    vowels="aeiou"
    w.each_char.with_index {|char,i| w[i]="*" if vowels.include?(char.downcase)}
    return w
end


 def power_of_two?(num)
     (0...num).each do |i|
        start=1
         i.times do
             start*=2
         end
        return true if start==num
    end
    return false
end