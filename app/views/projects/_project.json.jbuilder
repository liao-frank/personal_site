json.extract! project, :id, :title, :subtitle, :snippet, :description, :dates, :collaboration, :cover_url, :order, :visibility, :site_link, :github_link, :created_at, :updated_at
json.url project_url(project, format: :json)
