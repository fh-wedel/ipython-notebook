run: image
	docker run -d -p 8889:8888 -v $(HOME)/notebooks:/notebooks -e "PASSWORD=ipython" fhwedel/ipython-notebook
	sleep 2
	open https://`boot2docker ip 2>/dev/null`:8889

login: image
	docker run -t -i -p 8889:8888 -v $(HOME)/notebooks:/notebooks -e "PASSWORD=ipython" fhwedel/ipython-notebook /bin/bash

image:
	docker build -t fhwedel/ipython-notebook .
	@tail -1 Dockerfile

wipe-containers:
	docker ps -a | grep " Exited " | awk '{print $$1}' | xargs docker rm
