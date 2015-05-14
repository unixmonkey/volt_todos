class Todo < Volt::Model
  validate :name, presence: true
end
