all: run
	jar -cfm ./dist/Main.jar ./src/manifest.mf ./bin/Main.class
run: compile
	java -classpath ./bin Main
compile:
	javac -d bin ./src/Main.java
clean:
	del /Q bin