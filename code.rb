def bubble_sort(array)
    n = array.length
    swapped = true
    while swapped
        puts 'a'
        i = 1
        swapped = false
        while i <= n - 1
            puts 'b'
            if array[i - 1] > array[i]
                puts'c'
                array[i - 1], array[i] = array[i], array[i - 1]
                swapped = true
            end
            i += 1
        end
    end
    puts 'e'
    array
end

