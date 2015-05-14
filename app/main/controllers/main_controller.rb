# By default Volt generates this controller for your Main component
module Main
  class MainController < Volt::ModelController
    before_action :require_login
    model :store

    def current_todo
      index = (params._index || 0).to_i
      _todos[index]
    end

    def todos
      _todos.where(user_id: Volt.current_user_id)
    end

    def add_todo
      puts 'adding a todo'
      # puts Volt.current_user_id
      _todos << Todo.new( name: page._new_todo, completed: false, user_id: Volt.current_user_id )
      page._new_todo = ''
    end

    def check_all
      todos.each{|t| t.completed = true }
    end

    def completed
      todos.count(&:_completed)
    end

    def incomplete
      todos.size - completed
    end

    def percent_complete
      (completed / todos.size.to_f * 100).round
    end

    def selected_classname(todo)
      'selected' if todo == current_todo
    end

    def completed_classname(todo)
      'complete' if todo.completed
    end












    def index
      # Add code for when the index view is loaded
    end

    def about
      # Add code for when the about view is loaded
    end

    private

    # The main template contains a #template binding that shows another
    # template.  This is the path to that template.  It may change based
    # on the params._component, params._controller, and params._action values.
    def main_path
      "#{params._component || 'main'}/#{params._controller || 'main'}/#{params._action || 'index'}"
    end

    # Determine if the current nav component is the active one by looking
    # at the first part of the url against the href attribute.
    def active_tab?
      url.path.split('/')[1] == attrs.href.split('/')[1]
    end
  end
end
