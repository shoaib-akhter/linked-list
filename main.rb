# frozen_string_literal: true

require_relative 'lib/linked_list'
require_relative 'lib/node'

list = LinkedList.new
list.append('A')
list.append('B')
list.append('C')

puts "Index of 'B': #{list.find('B')}"  # Expected output: 1
puts "Index of 'C': #{list.find('C')}"  # Expected output: 2
puts "Index of 'Z': #{list.find('Z')}"  # Expected output: nil
