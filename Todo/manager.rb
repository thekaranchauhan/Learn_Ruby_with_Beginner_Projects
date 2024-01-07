require_relative './task'

class TaskManager
  attr_accessor :tasks

  def initialize
    @tasks = []
    load_tasks_from_file
  end

  def add_task(description)
    task = Task.new(description)
    @tasks << task
    update_tasks_file
    puts "\e[34mTasks added successfully.\e[0m"
    task
  end

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

  def display_tasks
    puts "Tasks:"
    @tasks.each_with_index do |task, index|
      status = task.completed ? '[X]' : '[ ]'
      puts "#{index + 1}. #{status} #{task.description}"
    end
  end

  private

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

  def update_tasks_file
    File.open('tasks.txt', 'w') do |file|
      @tasks.each do |task|
        status = task.completed ? '[X]' : '[ ]'
        file.puts("#{Time.now.strftime('%Y-%m-%d %H:%M:%S')} - #{status} - #{task.description}")
      end
    end
  end
end
