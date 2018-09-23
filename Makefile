# this file serves as aliases to useful commands using phony targets
# usage:
# `make serve`
HUGO = hugo

.PHONY: serve

# local development, run a local server with hugo
serve:
	$(HUGO) server --ignoreCache --disableFastRender
