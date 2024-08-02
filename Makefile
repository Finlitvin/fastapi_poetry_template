host ?= 0.0.0.0
port ?= 8000
lint-dir ?= .

lint:
	ruff check $(lint-dir) --fix ; ruff format $(lint-dir)

test:
	pytest .

serve:
	uvicorn app:app --host $(host) --port $(port) --reload

build:
	docker build . --tag test_backend

run:
	docker run -d -p $(port):$(port) --name test_backend test_backend