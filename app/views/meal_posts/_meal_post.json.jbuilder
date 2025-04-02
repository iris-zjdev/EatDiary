json.extract! meal_post, :id, :title, :content, :meal_type, :source_type, :user_id, :created_at, :updated_at
json.url meal_post_url(meal_post, format: :json)
