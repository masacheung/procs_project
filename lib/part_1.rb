def my_map(array, &proc)
    new_arr = []
    array.each {|ele| new_arr << proc.call(ele)}

    new_arr
end

def my_select(array, &proc)
    new_arr = []
    array.each do |ele| 
        if proc.call(ele)
            new_arr << ele
        end
    end

    new_arr
end

def my_count(array, &proc)
    count = 0
    array.each do |ele|
        if proc.call(ele)
            count += 1
        end
    end
    count
end

def my_any?(array, &proc)
    array.each do |ele| 
        if proc.call(ele)
           return true
        end
    end
    false
end

def my_all?(array, &proc)
    array.each do |ele|
        if !proc.call(ele)
            return false
        end
    end
    true
end

def my_none?(array, &proc)
    array.each do |ele|
        if proc.call(ele)
            return false
        end
    end
    true
end