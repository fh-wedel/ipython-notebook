run: notebook-image
	docker run -d -p 8889:8888 -v $(HOME)/notebooks:/notebooks -e "PASSWORD=ipython" uhoffmann/notebook
	sleep 2
	open https://`boot2docker ip 2>/dev/null`:8889

notebook-image:
	docker build -t uhoffmann/notebook .
	@tail -1 Dockerfile
