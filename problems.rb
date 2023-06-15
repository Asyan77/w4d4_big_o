
# def my_min1(array)
#     array.each do |ele1|
#       smallest = true 
#         array.each do |ele2|
#            if ele1 > ele2
#              smallest = false
#            end
#        end
#        if smallest 
#         return ele1 
#        end
#     end

# end


# def my_min(array)
#     min = array[0]
#     array.each do |ele| 
#         min = ele if ele < min 
#     end
#     min
# end

# list = [ 0, 3, 5, 4, -5, 10, 1, 90 ]
# p my_min(list)  # =>  -5


# def largest_contiguous_subsum1(arr)
#     sub_sets = []
#     (0...arr.length).each do |start| 
#         (start...arr.length).each do |stop|
#             sub_sets << arr[start..stop]
#         end
#     end
#     sub_sets.map { |sub| sub.sum}.max
# end

def largest_contiguous_subsum(arr)
    largest = arr[0]
    (0...arr.length).each do |start| 
        (start...arr.length).each do |stop|
            current_sum = arr[start..stop].sum
             largest = current_sum if current_sum > largest
        end
    end
    largest
end


list = [2, 3, -6, 7, -6, 7]

p largest_contiguous_subsum(list) # => 8