#include "Lexical.h"
#include "Parser.h"
#include "ObjectCodeGenerator.h"


/******************************
 * 词法分析 Lexical
 * 语法分析 Parser
 * 目标代码生成 ObjectCodeGenerator
 ******************************/
int main() {
	// test.txt中存放需要解析的代码
	Lexical lexicalParser("test_with_array.txt");
	lexicalParser.analyse();
	
	//productions.txt中存放语法规则
	Parser parser("productions.txt");
	parser.outputDFA("result/DFA.txt");

	//根据移进规约表分析词法结果并将分析结果输出到SLR1_analyse.txt 
	parser.analyse(lexicalParser.getResult(), "result/SLR1_analyse.txt");
	parser.outputInterCode("result/Intermediate.txt");
	
	InterCode* code = parser.getInterCode();
	code->divideBlocks(parser.getFuncEnter());
	code->outputBlocks("result/funBlocks.txt");

	ObjectCodeGenerator ocg;
	ocg.analyseBlock(code->getFuncBlock());
	ocg.outputIBlocks("result/IBlocks.txt");
	ocg.generateCode();
	ocg.outputObjectCode("result/program.asm");

	return 0;
}