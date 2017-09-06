class ProjectSkill < ApplicationRecord
	# Relationships
	belongs_to :project
	belongs_to :skill

	# Scope
	scope :for_skill, ->(skill_id) { nil } # TODO project skills of given skill name
	scope :order_by_project, -> { joins(:project).order('projects.title ASC') }
	scope :ordered, -> { order(order: :asc) }
	scope :meta, -> { where(meta: true) }

	# Validations
	validates_numericality_of :order, only_integer: true, greater_than_or_equal_to: 0
	# TODO uniqueness of :order per project id validation
end