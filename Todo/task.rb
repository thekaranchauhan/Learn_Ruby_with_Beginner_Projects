class Task
  # Attributes for task description and completion status
  attr_accessor :description, :completed

  # Constructor for initializing a task with a description
  def initialize(description)
    @description = description
    @completed = false
  end

  # Method to mark a task as completed
  def mark_as_completed
    @completed = true
  end
end
