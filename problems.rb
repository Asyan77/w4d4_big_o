

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

# def largest_contiguous_subsum(arr)
#     # Handle case when numbers are all negative.
#     all_negative = true
#     largest_num = arr[0]
#     arr.each do |x|
#         if x > largest_num
#             largest_num = x
#         end
#         if x >= 0
#             all_negative = false
#             break
#         end
#     end
#     if all_negative
#         return largest_num
#     end

#     # Loop again adding up consecutive values
#     largest_sum = arr[0]
#     current_sum = arr[0]
#     (1...arr.length).each do |idx|          # 0, 0
#         current_sum += arr[idx]                  #
#         if current_sum > largest_sum        #
#             largest_sum = current_sum       #
#         elsif arr[idx] < 0 and current_sum < 0
#             current_sum = 0                 #
#         end
#     end
#     largest_sum
# end


# list = [2, 3, -6, 7, -6, 7]
# list2 = [5, 3, -7]
# list3 = [-5, -1, -3]

# p largest_contiguous_subsum(list) # => 8
# p largest_contiguous_subsum(list2) # => 8
# p largest_contiguous_subsum(list3) # => -1

# def first_anagram?(str1, str2)
#     # 4 letter word
#     """
#     abcd
#     acdb
#     acbd
#     adbc
#     abdc
#     adcb
#     bacd
#     bcda
#     bdac
#     bdca

#     """
#     substrings = Array.new(4)
#     (0...str1.length).each do |x|

#         (0...str1.length).each do |y|
# end

# # Phase 4 + BONUS
# def first_anagram_hash?(str1, str2)
#     str_hash = Hash.new(0)
#     str1.each_char { |letter| str_hash[letter] += 1}
#     str2.each_char { |letter| str_hash[letter] -= 1}
#     str_hash.values.all? { |x| x == 0 }
# end

# p first_anagram_hash?("gizmo", "sally")    #=> false
# p first_anagram_hash?("elvis", "lives")    #=> true


# def two_sum?(arr, target)
#     prev_seen = Hash.new
#     arr.each do |num|
#         remainder = target - num 
#        if prev_seen[remainder] 
#         return true
#        else 
#         prev_seen[num] = true
#        end
#     end
#     return false
# end 

# arr = [0, 1, 5, 7]
# p two_sum?(arr, 6) # => should be true
# p two_sum?(arr, 10) # => should be false

def windowed_max_range(arr,win_size)
    current_max_range = 0
    (0..arr.length-win_size).each do |start|
        sub_arr = arr[start, win_size]
        # p sub_arr
        diff = sub_arr.max - sub_arr.min 
        if diff > current_max_range
            current_max_range = diff
        end
    end 
    current_max_range
end

 p windowed_max_range([1, 0, 2, 5, 4, 8], 2) # == 4 # 4, 8
 p windowed_max_range([1, 0, 2, 5, 4, 8], 3) # == 5 # 0, 2, 5
 p windowed_max_range([1, 0, 2, 5, 4, 8], 4) # == 6 # 2, 5, 4, 8
 p windowed_max_range([1, 3, 2, 5, 4, 8], 5) # == 6 # 3, 2, 5, 4, 8