class Skill < ApplicationRecord
	# Relationships
	has_many :project_skills
	has_many :projects, through: :project_skills

	# Scopes
	scope :for_project(project_id), -> { nil } # TODO skills for a given project id

	# Validations
end