.PHONY: dev prod down

dev:
	@echo "Starting development..."
	docker-compose -f docker-compose.yml -f docker-compose.dev.yml up -d --build
	@echo "✓ Dev running at http://localhost"

prod:
	@echo "Starting production..."
	docker compose -f docker compose.yml -f docker compose.prod.yml up -d --build
	@echo "✓ Production running at https://companyq.xyz"

down:
	@echo "Stopping containers..."
	docker-compose -f docker-compose.yml -f docker-compose.dev.yml down
	docker-compose -f docker-compose.yml -f docker-compose.prod.yml down
	@echo "✓ Stopped"