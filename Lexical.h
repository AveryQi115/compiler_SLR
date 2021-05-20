#pragma once
#include"Common.h"
class Lexical {
private:
	ifstream src;
	list<Token> result;
	int lineCount;
private:
	void openFile(const char* path);
	char getNextChar();
	Token getNextToken();
	void outputToStream(ostream&out);
public:
	Lexical(const char* path);
	~Lexical();
	void analyse();
	void outputToScreen();
	void outputToFile(const char *fileName);
	list<Token>&getResult();
};
