require_relative './task'

class TaskManager
  attr_accessor :tasks

  # Constructor to initialize an empty tasks array and load tasks from file
  def initialize
    @tasks = []
    load_tasks_from_file
  end

  # Method to add a task to the tasks array and update the tasks file
  def add_task(description)
    task = Task.new(description)
    @tasks << task
    update_tasks_file
    puts "\e[34mTasks added successfully.\e[0m"
    task
  end

  # Method to mark a task as completed and update the tasks file
  def mark_task_as_completed(index)
    task = @tasks[index]
    if task
      task.mark_as_completed
      update_tasks_file
      puts "\e[36mTask marked as completed.\e[0m"
    else
      puts "\e[31mInvalid task index.\e[0m"
    end
  end

  # Method to delete a task from the tasks array and update the tasks file
  def delete_task(index)
    task = @tasks[index]
    if task
      @tasks.delete_at(index)
      update_tasks_file
      puts "\e[31mTask deleted successfully.\e[0m"
    else
      puts "\e[93mInvalid task index.\e[0m"
    end
  end

  # Method to display all tasks with their completion status
  def display_tasks
    puts "Tasks:"
    @tasks.each_with_index do |task, index|
      status = task.completed ? '[X]' : '[ ]'
      puts "#{index + 1}. #{status} #{task.description}"
    end
  end

  private

  # Method to load tasks from the 'tasks.txt' file
  def load_tasks_from_file
    if File.exist?('tasks.txt')
      File.readlines('tasks.txt').each do |line|
        parts = line.split(' - ')
        description = parts[1].strip
        task = Task.new(description)
        task.mark_as_completed if parts[0].strip == '[X]'
        @tasks << task
      end
    end
  end

  # Method to update the 'tasks.txt' file with the current tasks
  def update_tasks_file
    File.open('tasks.txt', 'w') do |file|
      @tasks.each do |task|
        status = task.completed ? '[X]' : '[ ]'
        # Include timestamp, completion status, and description in the file
        file.puts("#{Time.now.strftime('%Y-%m-%d %H:%M:%S')} - #{status} - #{task.description}")
      end
    end
  end
end
