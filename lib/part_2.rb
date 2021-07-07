def reverser(string, &proc)
    proc.call(string.reverse)
end

def word_changer(string, &proc)
    new_string = string.split(" ")
    ans = []
    new_string.each do |word|
        ans << proc.call(word)
    end

    ans.join(" ")
end

def greater_proc_value(num, p1, p2)
    if p1.call(num) > p2.call(num)
        return p1.call(num)
    else
        return p2.call(num)
    end
end

def and_selector(array, p1, p2)
    arr = []
    array.each do |ele|
        if p1.call(ele) && p2.call(ele)
            arr << ele
        end
    end
    arr
end

def alternating_mapper(array, p1, p2)
    ans = []
    array.each.with_index do |ele, i|
        if i == 0 || i % 2 ==0
            ans << p1.call(ele)
        else
            ans << p2.call(ele)
        end
    end
    ans
end