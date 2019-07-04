SCRIPTS_DIRNAME="scripts"

.PHONY: dev_image
image:
	./$(SCRIPTS_DIRNAME)/build_image.sh

.PHONY: run
run:
	./$(SCRIPTS_DIRNAME)/run_container.sh
