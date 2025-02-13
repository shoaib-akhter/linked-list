# frozen_string_literal: true

require_relative 'node'

# The LinkedList class represents a singly linked list.
# It provides various methods to manipulate and retrieve information about the list.
class LinkedList
  attr_reader :head, :size

  # Initializes an empty linked list.
  def initialize
    @head = nil
    @size = 0
  end

  # Adds a new node containing value to the end of the list.
  def append(value)
    new_node = Node.new(value)

    if @head.nil?
      @head = new_node
      @size += 1
      return
    end

    current_node = @head
    current_node = current_node.next_node while current_node.next_node

    current_node.next_node = new_node
    @size += 1
  end

  # Returns a string representation of the linked list.
  def to_s
    current_node = @head
    result = ''

    while current_node
      result += "( #{current_node.value} ) -> "
      current_node = current_node.next_node
    end

    result += 'nil'
    result
  end

  # Adds a new node containing value to the beginning of the list.
  def prepend(value)
    new_node = Node.new(value) # Create new node
    new_node.next_node = @head  # Point new-node to current head
    @head = new_node            # Update head to new-node
    @size += 1
  end

  # Returns the last node in the list.
  def tail
    return nil if @head.nil? # Return nil if list is empty

    current_node = @head
    current_node = current_node.next_node while current_node.next_node

    current_node
  end

  # Returns the node at a given index.
  def at(index)
    return nil if index.negative? || index >= @size # Check for invalid index

    current_node = @head
    current_index = 0

    while current_index < index # Traverse to desired index
      current_node = current_node.next_node
      current_index += 1
    end

    current_node
  end

  # Removes the last node from the list.
  def pop
    return if @head.nil? # If list is empty, do nothing

    if @head.next_node.nil? # If only one node exists, remove it
      @head = nil
      @size -= 1
      return
    end

    current_node = @head

    current_node = current_node.next_node while current_node.next_node.next_node # Traverse to second-last node

    current_node.next_node = nil # Remove last node
    @size -= 1
  end

  # Checks if a given value exists in the list.
  def contains?(value)
    current_node = @head

    while current_node # Traverse through each node
      return true if current_node.value == value # If value matches, return true

      current_node = current_node.next_node # Move to next node
    end

    false # If loop completes, value is not found
  end

  # Returns the index of the node containing the value, or nil if not found.
  def find(value)
    current_node = @head
    index = 0

    while current_node
      return index if current_node.value == value # If value matches, return index

      current_node = current_node.next_node # Move to the next node
      index += 1
    end

    nil # If loop completes, value is not found
  end
end
