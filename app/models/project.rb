class Project < ApplicationRecord
	# Relationships
	has_many :project_images
	has_many :project_skills
	has_many :skills, through: :project_skills

	# Scopes
	scope :chronological, -> { nil } # TODO projects ordered by :created_at
	scope :for_user, -> { nil } # TODO projects for a given user
	scope :for_skill, ->(skill_name) { nil } # TODO projects for a given skill name
	scope :ordered, -> { order(order: :asc) } # TODO projects ordered by :order

	# Validations
	validates :title, presence: true
	validates_numericality_of :order, only_integer: true, greater_than_or_equal_to: 0
	# TODO uniqueness of :order per project id validation
	# TODO cover url regex validation
end
