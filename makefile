docker-run:
	docker run -d \
	-it \
	-p 6080:80 \
	--name tetris-pytorch \
	--shm-size=512m \
	--mount type=bind,source=/c/Users/eva_s/projects/tetris,target=/home/ubuntu/tetris \
	seigott/tetris_docker:pytorchv1.10 

train:
	python start.py -m train -d 50 -t -1 -l 2

predict:
	python start.py -m predict -l 2