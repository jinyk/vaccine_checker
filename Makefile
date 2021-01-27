help:
	@echo "make sh:     shell into the docker container"

sh:
	docker exec -it vaccinechecker_app_1 /bin/bash -l
