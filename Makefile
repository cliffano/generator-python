ci: clean stage deps test-python-cli

clean:
	rm -rf stage/

stage:
	mkdir -p stage/

deps:
	npm install .

generate-python-cli:
	node_modules/.bin/plop component python-cli

test-python-cli:
	node_modules/.bin/plop component -- \
	  --project_id "pythoncli" \
		--project_name "PythonCLI" \
		--project_desc "A sample Python CLI project" \
		--author_name "Pakkun" \
		--author_email "blah+pakkun@cliffano.com"
	cd stage/python-cli/ && make ci && \
	  cd examples/ && PATH=/opt/poetry-venv/bin/:$PATH ./pythoncli-cli.sh

.PHONY: ci clean stage deps generate-python-cli test-python-cli