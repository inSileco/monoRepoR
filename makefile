rpkgs: 
	R CMD build testpkg01
	R CMD build testpkg02

docker:
	docker build -t ex_custom_docker . 