CC = g++
CXX_FLAGS = -std=c++11 -w -g

BIN = MyCompiler

$(BIN): main.o Common.o InterCode.o Lexical.o ObjectCodeGenerator.o Optimizer.o Parser.o
	$(CC) $(CXX_FLAGS) -o $@ $^
InterCode.o: InterCode.cpp
	$(CC) $(CXX_FLAGS) -c -o $@ $<
Lexical.o: Lexical.cpp
	$(CC) $(CXX_FLAGS) -c -o $@ $<
ObjectCodeGenerator.o: ObjectCodeGenerator.cpp
	$(CC) $(CXX_FLAGS) -c -o $@ $<
Optimizer.o: Optimizer.cpp
	$(CC) $(CXX_FLAGS) -c -o $@ $<
Parser.o: Parser.cpp
	$(CC) $(CXX_FLAGS) -c -o $@ $<
Common.o: Common.cpp
	$(CC) $(CXX_FLAGS) -c -o $@ $<
main.o: main.cpp
	$(CC) $(CXX_FLAGS) -c -o $@ $<
	
.phony:
clean:
	rm -f *.o $(BIN)