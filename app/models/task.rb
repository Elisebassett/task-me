class Task < ApplicationRecord
	belongs_to :user
	# belongs_to :projects, optional :true

	# has_many :subtasks
	# has_many :categories, through :tasks_categories


end
