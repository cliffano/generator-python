ci: clean stage deps test-python-cli test-python-cli-partials test-python-lib test-python-lib-partials

clean:
	rm -rf stage/

stage:
	mkdir -p stage/

deps:
	npm install .

########################################
# python-cli targets
########################################

clean-python-cli:
	rm -rf stage/python-cli/

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
		--github_repo "python-cli" \
		--github_token_prefix "STUDIO"
	cd stage/python-cli/ && make deps-extra-apt ci && \
	  cd examples/ && ./pythoncli-cli.sh

########################################
# python-cli-partials targets
########################################

clean-python-cli-partials:
	rm -rf stage/python-cli-partials/

generate-python-cli-partials: clean-python-cli-partials
	node_modules/.bin/plop python-cli-partials

test-python-cli-partials:
	node_modules/.bin/plop python-cli-partials -- \
	  --project_id "pythoncli" \
		--project_name "PythonCLI" \
		--project_desc "A sample Python CLI project" \
		--author_name "Pakkun" \
		--author_email "blah+pakkun@cliffano.com" \
		--github_id "pakkunbot" \
		--github_repo "python-cli" \
		--github_token_prefix "STUDIO"

########################################
# python-lib targets
########################################

clean-python-lib:
	rm -rf stage/python-lib/

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
		--github_repo "python-lib" \
		--github_token_prefix "STUDIO"
	cd stage/python-lib/ && make deps-extra-apt ci && \
	  cd examples/

########################################
# python-lib-partials targets
########################################

clean-python-lib-partials:
	rm -rf stage/python-lib-partials/

generate-python-lib-partials: clean-python-lib-partials
	node_modules/.bin/plop python-lib-partials

test-python-lib-partials:
	node_modules/.bin/plop python-lib-partials -- \
	  --project_id "pythonlib" \
		--project_name "PythonLib" \
		--project_desc "A sample Python library project" \
		--author_name "Pakkun" \
		--author_email "blah+pakkun@cliffano.com" \
		--github_id "pakkunbot" \
		--github_repo "python-lib" \
		--github_token_prefix "STUDIO"

update-piemaker-to-latest:
	cd templates/python-cli && make update-to-latest
	cd templates/python-lib && make update-to-latest

.PHONY: ci clean clean-python-cli clean-python-cli-partials clean-python-lib clean-python-lib-partials stage deps generate-python-cli test-python-cli generate-python-cli-partials test-python-cli-partials generate-python-lib test-python-lib generate-python-lib-partials test-python-lib-partials update-piemaker-to-latest