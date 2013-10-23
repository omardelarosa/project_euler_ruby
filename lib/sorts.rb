def sel_sort(array)

    array_length = array.size
    

    # first find the lowest numbuer in the array
    # then we move it to the beginning of the list
    for i in (0..array_length-2)
        min_pos = i
        for j in (i + 1)..(array_length-1)
            if(array[j] < array[min_pos])
                min_pos = j
            end
        end
        #knowing the min, swap with the current first element (at position i)
        temp = array[i]
        array[i] = array[min_pos]
        array[min_pos] = temp
    end

    #now ouput the sorted array
    puts "Sorted list:"
    for i in (0...array_length)
        puts "array["+i.to_s+"] ==>"+array[i].to_s
    end
end

#-----------------
#--- merge sort --
#-----------------

def merge_sort(array)
    #if it is a single element (or less)...
    #return the single element array.
    return array if array.size <= 1
    
    #otherwise, split a into two arrays.
    left, right = split_array(array)
    
    #combine the merge_sort of the left array and right array.
    result = combine(merge_sort(left), merge_sort(right))
end
 
def split_array(array)
    #find the index of the middle of the array, rounding down.
    mid = (array.size / 2).round
    
    #turn the two halves of the array into an array of arrays with two elements.
    [array.take(mid), array.drop(mid)]
end
 
def combine(array_a, array_b)
    #check if either array is empty.
    #if so return the non-empty array.
    if array_a.empty? || array_b.empty?
        if array_b.empty?
            return array_a 
        else
            return array_b
    end
    #otherwise...
    #find the smaller of each array's first elements.
    #return the smaller of the two array's first elements
    #store it in the variable "smallest" and remove it from the array
    if array_a.first <= array_b.first
        smallest = array_a.shift
    else
        smallest = array_b.shift
    end
    
#-----------------
#--- merge sort --
#-----------------

def merge_sort(array)
    #if it is a single element (or less)...
    #return the single element array.
    return array if array.size <= 1
    
    #otherwise, split a into two arrays.
    left, right = split_array(array)
    
    #combine the merge_sort of the left array and right array.
    result = combine(merge_sort(left), merge_sort(right))
end
 
def split_array(array)
    #find the index of the middle of the array, rounding down.
    mid = (array.size / 2).round
    
    #turn the two halves of the array into an array of arrays with two elements.
    [array.take(mid), array.drop(mid)]
end
 
def combine(array_a, array_b)
    #check if either array is empty.
    #if so return the non-empty array.
    if array_a.empty? || array_b.empty?
        if array_b.empty?
            return array_a 
        else
            return array_b
        end
    end
    #otherwise...
    #find the smaller of each array's first elements.
    #return the smaller of the two array's first elements
    #store it in the variable "smallest" and remove it from the array
    if array_a.first <= array_b.first
        smallest = array_a.shift
    else
        smallest = array_b.shift
    end
    
    #recursively call combine on the two arrays
    #(note that one of which is now one, smaller element shorter)
    #then prepend the smallest element to the result of there recursion.
    combine(array_a, array_b).unshift(smallest)
end
 
# a = [6,23,53,1,2,5,62,61,33,21,14,6,23].shuffle
# p merge_sort(a)