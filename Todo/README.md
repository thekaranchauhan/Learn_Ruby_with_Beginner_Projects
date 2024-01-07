# Simple To-Do List App

This is a simple to-do list application written in Ruby that allows you to manage tasks from the command line.

## Features

- Add tasks
- Mark tasks as completed
- Delete tasks
- Display all tasks

## How to Use

1. Clone the repository:

    ```bash
    git clone https://github.com/thekaranchauhan/Learn_Ruby_with_Beginner_Projects.git
    cd Todo
    ```

2. Run the application:

    ```bash
    ruby main.rb
    ```

3. Follow the on-screen menu to interact with the to-do list.

## Commands

- **Add a task**: Enter task descriptions, separating multiple tasks with commas.

- **Mark a task as completed**: Enter the task index to mark as completed.

- **Delete a task**: Enter task indices to delete, separating multiple indices with commas.

- **Display all tasks**: View all tasks in the to-do list.

- **Exit**: Quit the application.

## Colors

- Green: Success messages
- Blue: Informational messages
- Red: Error and task deletion messages

## File Structure

- `main.rb`: Entry point of the application.
- `application.rb`: Application logic and user interface.
- `manager.rb`: Task management functionalities.
- `task.rb`: Task class definition.
- `tasks.txt`: File to store the tasks.

Feel free to customize and extend this to-do list app according to your needs!
