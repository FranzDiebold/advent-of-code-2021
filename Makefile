.PHONY: help
help:  ## Show this help.
	@egrep '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-22s\033[0m %s\n", $$1, $$2}'

.PHONY: run-notebook
run-notebook:  ## Run the Jupyter notebook.
	docker run --rm -p 8888:8888 -p 4040:4040 -v "${PWD}":/home/jovyan jupyter/all-spark-notebook:python-3.9.7
