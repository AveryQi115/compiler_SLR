#include "LexicalAnalyser.h"
#include "ParserAndSemanticAnalyser.h"
#include "ObjectCodeGenerator.h"


/******************************
 * 词法分析 LexicalAnalyser
 * 语法分析 ParserAndSemanticAnalyser
 * 目标代码生成 ObjectCodeGenerator
 ******************************/
int main() {
	// test.txt中存放需要解析的代码
	LexicalAnalyser lexicalAnalyser("test_with_array.txt");
	lexicalAnalyser.analyse();
	
	//productions.txt中存放语法规则
	ParserAndSemanticAnalyser parserAndSemanticAnalyser("productions.txt");
	parserAndSemanticAnalyser.outputDFA("result/DFA.txt");
	
	//根据移进规约表分析词法结果并将分析结果输出到SLR1_analyse.txt 
	parserAndSemanticAnalyser.analyse(lexicalAnalyser.getResult(), "result/SLR1_analyse.txt");
	parserAndSemanticAnalyser.outputIntermediateCode("result/Intermediate.txt");
	
	// IntermediateCode* code = parserAndSemanticAnalyser.getIntermediateCode();
	// code->divideBlocks(parserAndSemanticAnalyser.getFuncEnter());
	// code->outputBlocks("result/funBlocks.txt");

	// ObjectCodeGenerator objectCodeGenerator;
	// objectCodeGenerator.analyseBlock(code->getFuncBlock());
	// objectCodeGenerator.outputIBlocks();
	// objectCodeGenerator.generateCode();
	// objectCodeGenerator.outputObjectCode();
	// objectCodeGenerator.outputObjectCode("result/program.asm");

	return 0;
}