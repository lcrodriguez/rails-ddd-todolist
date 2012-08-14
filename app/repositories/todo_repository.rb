require_relative 'repository_base'

module TodoRepository
  include RepositoryBase

  # Separating this method will allow for simple reuse
  def list_home_page
    scoped.limit(10).order("id desc")
  end
end