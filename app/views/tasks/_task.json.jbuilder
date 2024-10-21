json.extract! task, :id, :title, :description, :status, :created_at, :updated_at, :completed_at, :deleted_at, :created_at, :updated_at
json.url task_url(task, format: :json)
