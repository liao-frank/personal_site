class ProjectImage < ApplicationRecord
	# Relationships
	belongs_to :project

	# Scopes
	scope :for_project, ->(project_id) { where(id: project_id) } # TODO skills for a project id
	scope :order_by_project, -> { joins(:project).order('projects.title ASC') }
	scope :ordered, -> { order(order: :asc) } # TODO projects ordered by :order

	# Validations
	validates_numericality_of :order, only_integer: true, greater_than_or_equal_to: 0
	# TODO uniqueness of :order per project id validation
	# TODO image url regex validation
end