module RepositoryBase
  # Setup a default method to retrieve one by id record  
  def get id
    where(:id => id).first
  end
end