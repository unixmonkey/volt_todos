class Todo < Volt::Model
  field :completed
  field :name, String
  field :description, String
  validate :name, presence: true
end
