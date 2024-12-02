PACKAGE_NAME=ansible-docker-migrid
PACKAGE_NAME_FORMATTED=$(subst -,_,$(PACKAGE_NAME))

.PHONY: all clean install-dep install uninstall

all: venv install-dep

clean:
	$(MAKE) venv-clean
	rm -fr .env
	rm -fr .pytest_cache
	rm -fr tests/__pycache__

install-dep:
	$(VENV)/pip install -r requirements.txt

install:
	$(MAKE) install-dep

uninstall:
	$(VENV)/pip uninstall -y -r requirements.txt

include Makefile.venv