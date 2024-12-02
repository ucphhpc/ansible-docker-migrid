PACKAGE_NAME=ansible-docker-migrid
PACKAGE_NAME_FORMATTED=$(subst -,_,$(PACKAGE_NAME))

.PHONY: all
all: venv install-dep

.PHONY: clean
clean:
	$(MAKE) venv-clean
	rm -fr .env
	rm -fr .pytest_cache
	rm -fr tests/__pycache__

.PHONY: install-dep
install-dep:
	$(VENV)/pip install -r requirements.txt

.PHONY: install
install:
	$(MAKE) install-dep

.PHONY: uninstall
uninstall:
	$(VENV)/pip uninstall -y -r requirements.txt

include Makefile.venv