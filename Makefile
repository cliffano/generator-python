ci: clean stage deps test-python-cli test-python-lib

clean:
	rm -rf stage/

clean-python-cli:
	rm -rf stage/python-cli/

clean-python-lib:
	rm -rf stage/python-lib/

stage:
	mkdir -p stage/

deps:
	npm install .

generate-python-cli: clean-python-cli
	node_modules/.bin/plop python-cli

test-python-cli:
	node_modules/.bin/plop python-cli -- \
	  --project_id "pythoncli" \
		--project_name "PythonCLI" \
		--project_desc "A sample Python CLI project" \
		--author_name "Pakkun" \
		--author_email "blah+pakkun@cliffano.com" \
		--github_id "pakkunbot" \
		--github_repo "python-cli"
	cd stage/python-cli/ && make deps-extra-apt ci && \
	  cd examples/ && ./pythoncli-cli.sh

generate-python-lib: clean-python-lib
	node_modules/.bin/plop python-lib

test-python-lib:
	node_modules/.bin/plop python-lib -- \
	  --project_id "pythonlib" \
		--project_name "PythonLib" \
		--project_desc "A sample Python library project" \
		--author_name "Pakkun" \
		--author_email "blah+pakkun@cliffano.com" \
		--github_id "pakkunbot" \
		--github_repo "python-lib"
	cd stage/python-lib/ && make deps-extra-apt ci && \
	  cd examples/

update-piemaker-to-latest:
	cd templates/python-cli && make update-to-latest
	cd templates/python-lib && make update-to-latest

.PHONY: ci clean clean-python-cli clean-python-lib stage deps generate-python-cli generate-python-lib test-python-cli test-python-lib update-piemaker-to-latest