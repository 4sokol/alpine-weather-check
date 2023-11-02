# alpine-weather-check
a Dockerfile with a simple html file which checks the weather in your Region by providing all the details on the web page. Region could be changed.

Howto:
1. clone the repo to the local
2. from the local directory with the Dockerfile, build the image: docker build -t <image_name:tag> .
3. check that the image exists:
  docker images
4. run the container using the image which was created (in interractive mode and as a daemon):
  docker run -it -d <image_name:tag>
Port could be changed in case the default 80 is occupied (port 9095 used as an example):  docker run -it -d -p 9095:80 <image_name:tag>
5. check that the container exists and up and running:
  docker ps
6. open the browser, put down the local IP and the port in case it was specified during 'docker run'. Your Region weather info should be visible:
![image](https://github.com/4sokol/alpine-weather-check/assets/72856789/532b4fb6-9d52-4307-8b47-94c7467ec889)

The Region could be changed using the 'Enter your Location' field:
![image](https://github.com/4sokol/alpine-weather-check/assets/72856789/f358d757-5e13-4f88-82d1-123abd855c9e)
