FROM ubuntu
WORKDIR /src
RUN apt-get update
RUN apt-get -y install g++
COPY ./main.cpp ./
RUN g++ -Wall -pthread main.cpp -o main.exe
CMD ["./main.exe", "asdf"]