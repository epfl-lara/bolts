export _JAVA_OPTIONS="-Xmx27g"
stainless-dotty\
 src/main/scala/com/ziplex/lexer/VerifiedRegex.scala\
 src/main/scala/com/ziplex/lexer/VerifiedLexer.scala\
 src/main/scala/com/ziplex/lexer/Utils.scala\
 src/main/scala/com/ziplex/lexer/LexerInterface.scala\
 src/main/scala/com/ziplex/map/*\
 src/main/scala/com/ziplex/example/Utils.scala\
 src/main/scala/com/ziplex/lexer/Vector.scala\
 src/main/scala/com/ziplex/lexer/BalanceConcArr.scala\
 src/main/scala/com/ziplex/example/JSONLexer.scala\
 src/main/scala/com/ziplex/example/JsonManipulation.scala\
 src/main/scala/com/ziplex/example/AmyLexer.scala\
 src/main/scala/com/ziplex/example/PythonLexer.scala\
 --config-file=stainless.conf\
 --solvers=smt-z3:/tools/solvers/z3/z3,smt-cvc5\
 -D-parallel=12 --functions=VerifiedLexer.Lexer.lex\
 $1

