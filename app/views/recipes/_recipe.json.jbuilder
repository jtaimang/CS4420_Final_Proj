json.extract! recipe, :id, :name, :description, :meat_id, :vegetable_id, :starch_id, :created_at, :updated_at
json.url recipe_url(recipe, format: :json)
