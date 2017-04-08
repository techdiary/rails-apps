class TodoList < ApplicationRecord
  validates :name, presence: true,length: { in: 10..40}
end
