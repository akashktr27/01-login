deps:
	pipenv run

migrate:
	@./manage.py makemigrations
	@./manage.py migrate

createuser:
	@echo "${green}>>> Creating a 'admin' user ...${reset}"
	@./manage.py createsuperuser --username='admin' --email=''


load:
	@./manage.py loaddata fixtures.json

run:
	@./manage.py runserver

setup: venv active

install: installdjango createproject migrate createuser magic run