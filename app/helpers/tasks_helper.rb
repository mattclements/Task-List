module TasksHelper
  def display_task_name(task)
      style = 'text-decoration: line-through; color: #AAA;' if task.completed?
      content_tag :h3, task.name, :style => "#{style}"
  end
end
