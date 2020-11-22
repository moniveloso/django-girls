docker build -t dgmonica /home/busercamp/monica
docker stop dgmonica
docker rm dgmonica
docker run -d -p 8004:8000 --name=dgmonica \
	-v /home/busercamp/monica/dbdata:/dbdata \
	--env-file=/home/busercamp/monica/dg.properties \
	dgmonica \
	./start_prod.sh

