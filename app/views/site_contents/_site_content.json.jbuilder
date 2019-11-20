json.extract! site_content, :id, :title, :heading1, :heading2, :location, :created_at, :updated_at
json.url site_content_url(site_content, format: :json)
