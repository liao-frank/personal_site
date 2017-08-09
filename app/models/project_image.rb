class ProjectImage < ApplicationRecord
	# Relationships
	belongs_to :project

	# Scopes
	scope :for_project, ->(project_id) { nil } # TODO skills for a project id
	scope :ordered, -> { nil } # TODO projects ordered by :order

	# Validations
	validates_numericality_of :order, only_integer: true, greater_than_or_equal_to: 0
	# TODO uniqueness of :order per project id validation
	# TODO image url regex validation
end