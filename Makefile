start:
		@echo "🏡 Welcome home! 🏡"
		@echo "Starting the hub..."
		@docker-compose up -d
		@echo "🚀 The hub is up and running!"

stop:
		@echo "Powering down the hub..."
		@docker-compose down

restart:
		@echo "Restarting the hub..."
		@docker-compose stop 
		@docker-compose up -d

logs:
		@docker-compose logs -f 
