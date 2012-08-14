class TodoCreatorWorker
	include Sidekiq::Worker

	def perform name
		# It's very simple to move logic to process offline
		manager = TodoManager.new
		todo = manager.create(name)
		raise("ERROR") unless todo.valid?
	end
end
