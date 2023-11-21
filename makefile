all: rpkgs docker clean

rpkgs: 
	R CMD build testpkg01
	R CMD build testpkg02

docker:
	sudo docker build -t ex_custom_docker . 

clean: 
	rm *.tar.gz
