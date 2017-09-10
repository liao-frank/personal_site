class Project < ApplicationRecord
	# Relationships
	has_many :project_images
	has_many :project_skills
	has_many :skills, through: :project_skills

	# Scopes
	scope :chronological, -> { nil } # TODO projects ordered by :created_at
	scope :for_user, -> { nil } # TODO projects for a given user
	scope :for_skill, ->(skill_name) { nil } # TODO projects for a given skill name
	scope :ordered, -> { order(order: :asc, title: :asc) } # TODO projects ordered by :order

	# Validations
	validates :title, presence: true
	# TODO uniqueness of :order per project id validation
	# TODO cover url regex validation

	def to_param
		self.title.gsub(' ','-')
	end
end