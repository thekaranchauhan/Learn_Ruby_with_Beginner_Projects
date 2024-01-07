require_relative './manager'

class Application
  def initialize
    @manager = TaskManager.new
  end

  def run
    loop do
      display_menu
      choice = gets.chomp.to_i

      case choice
      when 1
        add_task
      when 2
        mark_task_as_completed
      when 3
        delete_task
      when 4
        display_tasks
      when 5
        break
      else
        puts "\e[31Invalid choice. Please try again.\e[0m"
      end
    end
  end

  def add_task
    puts "\e[34mEnter task description (separate multiple tasks with commas):\e[0m"
    descriptions = gets.chomp.split(',')

    descriptions.each do |description|
      description = description.strip
      @manager.add_task(description) unless description.empty?
    end
  end

  def mark_task_as_completed
    puts "\e[36mEnter task index to mark as completed:\e[0m"
    display_tasks
    index = gets.chomp.to_i - 1
    @manager.mark_task_as_completed(index)
  end

  def delete_task
    puts "\e[31mEnter task indices to delete (separate multiple indices with commas):\e[0m"
    indices = gets.chomp.split(',')
    indices.each do |index_str|
      index = index_str.strip.to_i - 1
      @manager.delete_task(index) if index >= 0
    end
  end

  def display_tasks
    @manager.display_tasks
  end

  def display_menu
    puts "\e[37mTasks:\e[0m"
    puts "\e[34m1. Add a task\e[0m"
    puts "\e[36m2. Mark a task as completed\e[0m"
    puts "\e[31m3. Delete a task\e[0m"
    puts "\e[93m4. Display all tasks\e[0m"
    puts "\e[32m5. Exit\e[0m"
    print "Enter your choice: "
  end
end
