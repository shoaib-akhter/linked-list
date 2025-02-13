# Linked List Implementation in Ruby

## Description
This project is an implementation of a **singly linked list** in Ruby. The linked list is built using two classes:

1. **Node Class** (Defined in `node.rb`)
   - Represents a single node in the linked list.
   - Has two attributes:
     - `value`: Stores the data.
     - `next_node`: Points to the next node in the list.

2. **LinkedList Class** (Defined in `linked_list.rb`)
   - Represents the entire linked list.
   - Provides various methods to manipulate the list.

## Features Implemented So Far
- `append(value)`: Adds a node with the given value at the end of the list.
- `prepend(value)`: Adds a node with the given value at the beginning of the list.
- `size`: Returns the total number of nodes in the list.
- `head`: Returns the first node of the list.
- `tail`: Returns the last node of the list.
- `at(index)`: Returns the node at a given index.
- `pop`: Removes the last node from the list.
- `contains?(value)`: Checks if a given value exists in the list.
- `find(value)`: Returns the index of the node containing the value, or `nil` if not found.
- `to_s`: Provides a readable string representation of the linked list.

## Example Usage
To use the linked list, run the following example in `main.rb`:

```ruby
require_relative 'lib/linked_list'
require_relative 'lib/node'

list = LinkedList.new
list.append("A")
list.append("B")
list.append("C")

puts list  # Output: ( A ) -> ( B ) -> ( C ) -> nil
puts "Size: #{list.size}"  # Output: 3
puts "Contains B?: #{list.contains?("B")}"  # Output: true
puts "Index of C: #{list.find("C")}"  # Output: 2
```

## Next Steps
- Implement `insert_at(value, index)`: Inserts a node at a specific index.
- Implement `remove_at(index)`: Removes the node at a given index.
- Additional optimizations and edge case handling.

## License
This project is open-source and available under the MIT License.
