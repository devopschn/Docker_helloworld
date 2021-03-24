FROM openjdk
COPY src HelloWorld
WORKDIR HelloWorld
RUN mkdir -p bin
RUN javac -d bin ./com/myapp/HelloWorld.java
WORKDIR bin
CMD ["java", "com.myapp.HelloWorld"]