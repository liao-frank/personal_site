json.extract! project_image, :id, :project_id, :caption, :img_url, :order, :created_at, :updated_at
json.url project_image_url(project_image, format: :json)
