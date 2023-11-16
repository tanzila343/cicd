install:
	pip install -r requirements.txt


docs:
	echo "Generating docs..." && \
	cd docs && \
	sphinx-quickstart -q -p "MyMl" -a "Tanzila" -r "0.0.0.1" --ext-viewcode --ext-todo --ext-autodoc && \
	cd .. && \
	cd my_py_pkg && \
	sphinx-apidoc -o ../docs src/
.PHONY: docs
