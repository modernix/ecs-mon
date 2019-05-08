.PHONY : clean build publish

build :
	make clean
	python setup.py sdist

publish:
	make build
	twine upload dist/*
	make clean

clean :
	rm -rf dist/
