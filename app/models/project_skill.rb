class ProjectSkill < ApplicationRecord
	# Relationships
	belongs_to :project
	belongs_to :skill

	# Scope
	scope :for_project, ->(project_id) { nil } # TODO project skills for a given project id
	scope :for_skill, ->(skill_id) { nil } # TODO project skills of given skill name
	scope :ordered, -> { nil } # TODO projects ordered by :order

	# Validations
	validates_numericality_of :order, only_integer: true, greater_than_or_equal_to: 0
	# TODO uniqueness of :order per project id validation
end