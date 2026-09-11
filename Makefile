ci: clean stage deps test-python-cli test-python-cli-partials test-python-lib test-python-lib-partials

clean:
	rm -rf stage/

stage:
	mkdir -p stage/

deps:
	npm install .

########################################
# Utility targets
########################################

GENERATOR_CONFIG ?= piemaker.yml

define set_generator_vars
$(1): GENERATOR_COMPONENT = $$(shell yq .generator.component $(2))
$(1): GENERATOR_INPUTS_PROJECT_ID = $$(shell yq .generator.inputs.project_id $(2))
$(1): GENERATOR_INPUTS_PROJECT_NAME = $$(shell yq .generator.inputs.project_name $(2))
$(1): GENERATOR_INPUTS_PROJECT_DESC = $$(shell yq .generator.inputs.project_desc $(2))
$(1): GENERATOR_INPUTS_AUTHOR_NAME = $$(shell yq .generator.inputs.author_name $(2))
$(1): GENERATOR_INPUTS_AUTHOR_EMAIL = $$(shell yq .generator.inputs.author_email $(2))
$(1): GENERATOR_INPUTS_AUTHOR_URL = $$(shell yq .generator.inputs.author_url $(2))
$(1): GENERATOR_INPUTS_GITHUB_ID = $$(shell yq .generator.inputs.github_id $(2))
$(1): GENERATOR_INPUTS_GITHUB_REPO = $$(shell yq .generator.inputs.github_repo $(2))
$(1): GENERATOR_INPUTS_GITHUB_TOKEN_PREFIX = $$(shell yq .generator.inputs.github_token_prefix $(2))
endef

########################################
# python-cli targets
########################################

clean-python-cli:
	rm -rf stage/python-cli/

generate-python-cli: clean-python-cli
	node_modules/.bin/plop python-cli

$(eval $(call set_generator_vars,generate-python-cli-with-config,$(GENERATOR_CONFIG)))
generate-python-cli-with-config: clean-python-cli
	node_modules/.bin/plop $(GENERATOR_COMPONENT) -- \
	    --project_id "$(GENERATOR_INPUTS_PROJECT_ID)" \
		--project_name "$(GENERATOR_INPUTS_PROJECT_NAME)" \
		--project_desc "$(GENERATOR_INPUTS_PROJECT_DESC)" \
		--author_name "$(GENERATOR_INPUTS_AUTHOR_NAME)" \
		--author_email "$(GENERATOR_INPUTS_AUTHOR_EMAIL)" \
		--author_url "$(GENERATOR_INPUTS_AUTHOR_URL)" \
		--github_id "$(GENERATOR_INPUTS_GITHUB_ID)" \
		--github_repo "$(GENERATOR_INPUTS_GITHUB_REPO)" \
		--github_token_prefix "$(GENERATOR_INPUTS_GITHUB_TOKEN_PREFIX)"

test-python-cli: clean-python-cli
	make generate-python-cli-with-config GENERATOR_CONFIG=examples/piemaker-python-cli.yml
	cd stage/python-cli/ && make deps ci && \
	  cd examples/ && ./pythoncli-cli.sh

########################################
# python-cli-partials targets
########################################

clean-python-cli-partials:
	rm -rf stage/python-cli-partials/

generate-python-cli-partials: clean-python-cli-partials
	node_modules/.bin/plop python-cli-partials

$(eval $(call set_generator_vars,generate-python-cli-partials-with-config,$(GENERATOR_CONFIG)))
generate-python-cli-partials-with-config: clean-python-cli-partials
	node_modules/.bin/plop $(GENERATOR_COMPONENT) -- \
	    --project_id "$(GENERATOR_INPUTS_PROJECT_ID)" \
		--project_name "$(GENERATOR_INPUTS_PROJECT_NAME)" \
		--project_desc "$(GENERATOR_INPUTS_PROJECT_DESC)" \
		--author_name "$(GENERATOR_INPUTS_AUTHOR_NAME)" \
		--author_email "$(GENERATOR_INPUTS_AUTHOR_EMAIL)" \
		--author_url "$(GENERATOR_INPUTS_AUTHOR_URL)" \
		--github_id "$(GENERATOR_INPUTS_GITHUB_ID)" \
		--github_repo "$(GENERATOR_INPUTS_GITHUB_REPO)" \
		--github_token_prefix "$(GENERATOR_INPUTS_GITHUB_TOKEN_PREFIX)"

test-python-cli-partials: clean-python-cli-partials
	make generate-python-cli-partials-with-config GENERATOR_CONFIG=examples/piemaker-python-cli-partials.yml

########################################
# python-lib targets
########################################

clean-python-lib:
	rm -rf stage/python-lib/

generate-python-lib: clean-python-lib
	node_modules/.bin/plop python-lib

$(eval $(call set_generator_vars,generate-python-lib-with-config,$(GENERATOR_CONFIG)))
generate-python-lib-with-config: clean-python-lib
	node_modules/.bin/plop $(GENERATOR_COMPONENT) -- \
	    --project_id "$(GENERATOR_INPUTS_PROJECT_ID)" \
		--project_name "$(GENERATOR_INPUTS_PROJECT_NAME)" \
		--project_desc "$(GENERATOR_INPUTS_PROJECT_DESC)" \
		--author_name "$(GENERATOR_INPUTS_AUTHOR_NAME)" \
		--author_email "$(GENERATOR_INPUTS_AUTHOR_EMAIL)" \
		--author_url "$(GENERATOR_INPUTS_AUTHOR_URL)" \
		--github_id "$(GENERATOR_INPUTS_GITHUB_ID)" \
		--github_repo "$(GENERATOR_INPUTS_GITHUB_REPO)" \
		--github_token_prefix "$(GENERATOR_INPUTS_GITHUB_TOKEN_PREFIX)"

test-python-lib: clean-python-lib
	make generate-python-lib-with-config GENERATOR_CONFIG=examples/piemaker-python-lib.yml
	cd stage/python-lib/ && make deps ci && \
	  cd examples/

########################################
# python-lib-partials targets
########################################

clean-python-lib-partials:
	rm -rf stage/python-lib-partials/

generate-python-lib-partials: clean-python-lib-partials
	node_modules/.bin/plop python-lib-partials

$(eval $(call set_generator_vars,generate-python-lib-partials-with-config,$(GENERATOR_CONFIG)))
generate-python-lib-partials-with-config: clean-python-lib-partials
	node_modules/.bin/plop $(GENERATOR_COMPONENT) -- \
	    --project_id "$(GENERATOR_INPUTS_PROJECT_ID)" \
		--project_name "$(GENERATOR_INPUTS_PROJECT_NAME)" \
		--project_desc "$(GENERATOR_INPUTS_PROJECT_DESC)" \
		--author_name "$(GENERATOR_INPUTS_AUTHOR_NAME)" \
		--author_email "$(GENERATOR_INPUTS_AUTHOR_EMAIL)" \
		--author_url "$(GENERATOR_INPUTS_AUTHOR_URL)" \
		--github_id "$(GENERATOR_INPUTS_GITHUB_ID)" \
		--github_repo "$(GENERATOR_INPUTS_GITHUB_REPO)" \
		--github_token_prefix "$(GENERATOR_INPUTS_GITHUB_TOKEN_PREFIX)"

test-python-lib-partials: clean-python-lib-partials
	make generate-python-lib-partials-with-config GENERATOR_CONFIG=examples/piemaker-python-lib-partials.yml

update-piemaker-to-latest:
	cd templates/python-cli && make update-to-latest
	cd templates/python-lib && make update-to-latest

.PHONY: ci clean clean-python-cli clean-python-cli-partials clean-python-lib clean-python-lib-partials stage deps generate-python-cli generate-python-cli-with-config test-python-cli generate-python-cli-partials generate-python-cli-partials-with-config test-python-cli-partials generate-python-lib generate-python-lib-with-config test-python-lib generate-python-lib-partials generate-python-lib-partials-with-config test-python-lib-partials update-piemaker-to-latest