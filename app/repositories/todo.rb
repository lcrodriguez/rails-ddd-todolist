module TodoRepository
  # Separating this method will allow for simple reuse
  def list_home_page
    scoped.limit(10).order("name asc")
  end
end