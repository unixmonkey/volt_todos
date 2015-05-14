class Todo < Volt::Model
  field :completed
  field :name, String
  field :description, String
  field :user_id
  validate :name, presence: true
end
