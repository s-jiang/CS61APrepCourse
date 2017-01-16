puts 'Type in your list and we will alphabetize it for you.'
puts 'Once your list is in, simply press [Enter]'


def sort some_array
  recursive_sort some_array, []
end

def recursive_sort unsorted_array, sorted_array
  if unsorted_array.length <= 0 #2.1 nothing in unsorted_array?, nothing
    return sorted_array
  end

  smallest = unsorted_array.pop #2.2 smallest gets removed from unsorted_array
  still_unsorted_array = [] #3 still_unsorted_array limbo made

  unsorted_array.each do |tested_object|
    if tested_object < smallest #4 smallest tested from unsorted_array
      still_unsorted_array.push smallest #5 move next smallest to still_unsorted_array
      smallest = tested_object
    else
      still_unsorted_array.push tested_object #5.2 move the last, biggest object
    end
  end

sorted_array.push smallest #5.1 move the smallest, small, less small into sorted_array

recursive_sort still_unsorted_array, sorted_array #6 def stuff
end

new_array = [] #1 unsorted_array made

while true
t_object = gets.chomp #2 input moved into unsorted_array
new_array.push t_object
  if t_object == ''
    puts 'The following is your generated list: '
    puts sort new_array
    break
  end
end

puts 'Thank you for using our alphabetzing service. Have a nice day.'
