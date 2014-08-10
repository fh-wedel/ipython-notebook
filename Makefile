run: notebook-image
	docker run -d -p 8889:8888 -v $(HOME)/notebooks:/notebooks -e "PASSWORD=ipython" uhoffmann/notebook

notebook-image:
	docker build -t uhoffmann/notebook .
	@tail -1 Dockerfile
