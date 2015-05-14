# By default Volt generates this controller for your Main component
module Main
  class MainController < Volt::ModelController
    model :store

    def current_todo
      index = (params._index || 0).to_i
      _todos[index]
    end

    def add_todo
      puts 'adding a todo'
      _todos << Todo.new( name: page._new_todo, completed: false )
      page._new_todo = ''
    end

    def selected_classname(params_index, item_index)
      'selected' if (params_index || 0).to_i == item_index
    end

    def completed_classname(todo)
      'complete' if todo._completed
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
