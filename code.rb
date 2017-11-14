def bubble_sort(array)
    n = array.length
    swapped = true
    while swapped
        i = 1
        swapped = false
        while i <= n - 1
            if array[i - 1] > array[i]
                array[i - 1], array[i] = array[i], array[i - 1]
                swapped = true
            end
            i += 1
        end
    end
    puts array.inspect
end

def bubble_sort_by(array)
    n = array.length
    swapped = true
    while swapped
        i = 1
        swapped = false
        while i <= n - 1
            if yield(array[i - 1], array[i]) > 0
                array[i - 1], array[i] = array[i], array[i - 1]
                swapped = true
            end
            i += 1
        end
    end
    puts array.inspect
end

bubble_sort([4,3,78,2,0,2])

bubble_sort_by(["hi", "hello", "hey"]) do |left, right|
    left.length - right.length
end