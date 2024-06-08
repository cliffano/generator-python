ci: clean stage deps test-python-cli

clean:
	rm -rf stage/

stage:
	mkdir -p stage/

deps:
	npm install .

generate-python-cli:
	node_modules/.bin/plop python-cli

test-python-cli:
	node_modules/.bin/plop python-cli -- \
	  --project_id "pythoncli" \
		--project_name "PythonCLI" \
		--project_desc "A sample Python CLI project" \
		--author_name "Pakkun" \
		--author_email "blah+pakkun@cliffano.com"
	cd stage/python-cli/ && make ci && \
	  cd examples/ && PATH=/opt/poetry-venv/bin/:$PATH ./pythoncli-cli.sh

generate-python-lib:
	node_modules/.bin/plop python-lib

test-python-lib:
	node_modules/.bin/plop python-lib -- \
	  --project_id "pythonlib" \
		--project_name "PythonLib" \
		--project_desc "A sample Python library project" \
		--author_name "Pakkun" \
		--author_email "blah+pakkun@cliffano.com"
	cd stage/python-lib/ && make ci && \
	  cd examples/

.PHONY: ci clean stage deps generate-python-cli generate-python-lib test-python-cli test-python-lib