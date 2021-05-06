CC = g++
CXX_FLAGS = -std=c++11 -w 

BIN = MyCompiler

$(BIN): main.o Common.o IntermediateCode.o LexicalAnalyser.o ObjectCodeGenerator.o Optimizer.o ParserAndSemanticAnalyser.o
	$(CC) $(CXX_FLAGS) -o $@ $^
IntermediateCode.o: IntermediateCode.cpp
	$(CC) $(CXX_FLAGS) -c -o $@ $<
LexicalAnalyser.o: LexicalAnalyser.cpp
	$(CC) $(CXX_FLAGS) -c -o $@ $<
ObjectCodeGenerator.o: ObjectCodeGenerator.cpp
	$(CC) $(CXX_FLAGS) -c -o $@ $<
Optimizer.o: Optimizer.cpp
	$(CC) $(CXX_FLAGS) -c -o $@ $<
ParserAndSemanticAnalyser.o: ParserAndSemanticAnalyser.cpp
	$(CC) $(CXX_FLAGS) -c -o $@ $<
Common.o: Common.cpp
	$(CC) $(CXX_FLAGS) -c -o $@ $<
main.o: main.cpp
	$(CC) $(CXX_FLAGS) -c -o $@ $<
	
.phony:
clean:
	rm -f *.o $(BIN)