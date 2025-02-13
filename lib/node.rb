# frozen_string_literal: true

# The Node class represents a single element in the linked list.
# Each node stores a value and a reference to the next node in the list.
class Node
  attr_accessor :value, :next_node

  # Initializes a new node with an optional value and a reference to the next node.
  def initialize(value = nil, next_node = nil)
    @value = value
    @next_node = next_node
  end
end
