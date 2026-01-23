; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!146116 () Bool)

(assert start!146116)

(declare-fun res!699093 () Bool)

(declare-fun e!1007461 () Bool)

(assert (=> start!146116 (=> (not res!699093) (not e!1007461))))

(declare-datatypes ((List!17132 0))(
  ( (Nil!17062) (Cons!17062 (h!22463 (_ BitVec 16)) (t!142429 List!17132)) )
))
(declare-datatypes ((TokenValue!3080 0))(
  ( (FloatLiteralValue!6160 (text!22005 List!17132)) (TokenValueExt!3079 (__x!11462 Int)) (Broken!15400 (value!94863 List!17132)) (Object!3149) (End!3080) (Def!3080) (Underscore!3080) (Match!3080) (Else!3080) (Error!3080) (Case!3080) (If!3080) (Extends!3080) (Abstract!3080) (Class!3080) (Val!3080) (DelimiterValue!6160 (del!3140 List!17132)) (KeywordValue!3086 (value!94864 List!17132)) (CommentValue!6160 (value!94865 List!17132)) (WhitespaceValue!6160 (value!94866 List!17132)) (IndentationValue!3080 (value!94867 List!17132)) (String!19733) (Int32!3080) (Broken!15401 (value!94868 List!17132)) (Boolean!3081) (Unit!26283) (OperatorValue!3083 (op!3140 List!17132)) (IdentifierValue!6160 (value!94869 List!17132)) (IdentifierValue!6161 (value!94870 List!17132)) (WhitespaceValue!6161 (value!94871 List!17132)) (True!6160) (False!6160) (Broken!15402 (value!94872 List!17132)) (Broken!15403 (value!94873 List!17132)) (True!6161) (RightBrace!3080) (RightBracket!3080) (Colon!3080) (Null!3080) (Comma!3080) (LeftBracket!3080) (False!6161) (LeftBrace!3080) (ImaginaryLiteralValue!3080 (text!22006 List!17132)) (StringLiteralValue!9240 (value!94874 List!17132)) (EOFValue!3080 (value!94875 List!17132)) (IdentValue!3080 (value!94876 List!17132)) (DelimiterValue!6161 (value!94877 List!17132)) (DedentValue!3080 (value!94878 List!17132)) (NewLineValue!3080 (value!94879 List!17132)) (IntegerValue!9240 (value!94880 (_ BitVec 32)) (text!22007 List!17132)) (IntegerValue!9241 (value!94881 Int) (text!22008 List!17132)) (Times!3080) (Or!3080) (Equal!3080) (Minus!3080) (Broken!15404 (value!94882 List!17132)) (And!3080) (Div!3080) (LessEqual!3080) (Mod!3080) (Concat!7398) (Not!3080) (Plus!3080) (SpaceValue!3080 (value!94883 List!17132)) (IntegerValue!9242 (value!94884 Int) (text!22009 List!17132)) (StringLiteralValue!9241 (text!22010 List!17132)) (FloatLiteralValue!6161 (text!22011 List!17132)) (BytesLiteralValue!3080 (value!94885 List!17132)) (CommentValue!6161 (value!94886 List!17132)) (StringLiteralValue!9242 (value!94887 List!17132)) (ErrorTokenValue!3080 (msg!3141 List!17132)) )
))
(declare-datatypes ((C!8810 0))(
  ( (C!8811 (val!5001 Int)) )
))
(declare-datatypes ((List!17133 0))(
  ( (Nil!17063) (Cons!17063 (h!22464 C!8810) (t!142430 List!17133)) )
))
(declare-datatypes ((IArray!11261 0))(
  ( (IArray!11262 (innerList!5688 List!17133)) )
))
(declare-datatypes ((Conc!5628 0))(
  ( (Node!5628 (left!13825 Conc!5628) (right!14155 Conc!5628) (csize!11486 Int) (cheight!5839 Int)) (Leaf!8344 (xs!8432 IArray!11261) (csize!11487 Int)) (Empty!5628) )
))
(declare-datatypes ((BalanceConc!11200 0))(
  ( (BalanceConc!11201 (c!254213 Conc!5628)) )
))
(declare-datatypes ((Regex!4318 0))(
  ( (ElementMatch!4318 (c!254214 C!8810)) (Concat!7399 (regOne!9148 Regex!4318) (regTwo!9148 Regex!4318)) (EmptyExpr!4318) (Star!4318 (reg!4647 Regex!4318)) (EmptyLang!4318) (Union!4318 (regOne!9149 Regex!4318) (regTwo!9149 Regex!4318)) )
))
(declare-datatypes ((String!19734 0))(
  ( (String!19735 (value!94888 String)) )
))
(declare-datatypes ((TokenValueInjection!5820 0))(
  ( (TokenValueInjection!5821 (toValue!4381 Int) (toChars!4240 Int)) )
))
(declare-datatypes ((Rule!5780 0))(
  ( (Rule!5781 (regex!2990 Regex!4318) (tag!3254 String!19734) (isSeparator!2990 Bool) (transformation!2990 TokenValueInjection!5820)) )
))
(declare-datatypes ((Token!5546 0))(
  ( (Token!5547 (value!94889 TokenValue!3080) (rule!4776 Rule!5780) (size!13825 Int) (originalCharacters!3804 List!17133)) )
))
(declare-datatypes ((List!17134 0))(
  ( (Nil!17064) (Cons!17064 (h!22465 Token!5546) (t!142431 List!17134)) )
))
(declare-datatypes ((IArray!11263 0))(
  ( (IArray!11264 (innerList!5689 List!17134)) )
))
(declare-datatypes ((Conc!5629 0))(
  ( (Node!5629 (left!13826 Conc!5629) (right!14156 Conc!5629) (csize!11488 Int) (cheight!5840 Int)) (Leaf!8345 (xs!8433 IArray!11263) (csize!11489 Int)) (Empty!5629) )
))
(declare-datatypes ((BalanceConc!11202 0))(
  ( (BalanceConc!11203 (c!254215 Conc!5629)) )
))
(declare-datatypes ((List!17135 0))(
  ( (Nil!17065) (Cons!17065 (h!22466 Rule!5780) (t!142432 List!17135)) )
))
(declare-datatypes ((PrintableTokens!1198 0))(
  ( (PrintableTokens!1199 (rules!12121 List!17135) (tokens!2215 BalanceConc!11202)) )
))
(declare-fun thiss!10002 () PrintableTokens!1198)

(declare-fun isEmpty!10215 (List!17135) Bool)

(assert (=> start!146116 (= res!699093 (not (isEmpty!10215 (rules!12121 thiss!10002))))))

(declare-fun lt!543440 () BalanceConc!11200)

(declare-datatypes ((LexerInterface!2619 0))(
  ( (LexerInterfaceExt!2616 (__x!11463 Int)) (Lexer!2617) )
))
(declare-fun print!1156 (LexerInterface!2619 BalanceConc!11202) BalanceConc!11200)

(assert (=> start!146116 (= lt!543440 (print!1156 Lexer!2617 (tokens!2215 thiss!10002)))))

(declare-datatypes ((Unit!26284 0))(
  ( (Unit!26285) )
))
(declare-fun lt!543439 () Unit!26284)

(declare-fun theoremInvertabilityWhenTokenListSeparable!88 (LexerInterface!2619 List!17135 List!17134) Unit!26284)

(declare-fun list!6568 (BalanceConc!11202) List!17134)

(assert (=> start!146116 (= lt!543439 (theoremInvertabilityWhenTokenListSeparable!88 Lexer!2617 (rules!12121 thiss!10002) (list!6568 (tokens!2215 thiss!10002))))))

(assert (=> start!146116 e!1007461))

(declare-fun e!1007460 () Bool)

(declare-fun inv!22451 (PrintableTokens!1198) Bool)

(assert (=> start!146116 (and (inv!22451 thiss!10002) e!1007460)))

(declare-fun b!1568693 () Bool)

(declare-fun rulesInvariant!2291 (LexerInterface!2619 List!17135) Bool)

(assert (=> b!1568693 (= e!1007461 (not (rulesInvariant!2291 Lexer!2617 (rules!12121 thiss!10002))))))

(declare-fun b!1568695 () Bool)

(declare-fun e!1007459 () Bool)

(declare-fun tp!461988 () Bool)

(declare-fun inv!22452 (Conc!5629) Bool)

(assert (=> b!1568695 (= e!1007459 (and (inv!22452 (c!254215 (tokens!2215 thiss!10002))) tp!461988))))

(declare-fun b!1568694 () Bool)

(declare-fun tp!461987 () Bool)

(declare-fun inv!22453 (BalanceConc!11202) Bool)

(assert (=> b!1568694 (= e!1007460 (and tp!461987 (inv!22453 (tokens!2215 thiss!10002)) e!1007459))))

(assert (= (and start!146116 res!699093) b!1568693))

(assert (= b!1568694 b!1568695))

(assert (= start!146116 b!1568694))

(declare-fun m!1842559 () Bool)

(assert (=> start!146116 m!1842559))

(declare-fun m!1842561 () Bool)

(assert (=> start!146116 m!1842561))

(declare-fun m!1842563 () Bool)

(assert (=> start!146116 m!1842563))

(declare-fun m!1842565 () Bool)

(assert (=> start!146116 m!1842565))

(assert (=> start!146116 m!1842559))

(declare-fun m!1842567 () Bool)

(assert (=> start!146116 m!1842567))

(declare-fun m!1842569 () Bool)

(assert (=> b!1568693 m!1842569))

(declare-fun m!1842571 () Bool)

(assert (=> b!1568695 m!1842571))

(declare-fun m!1842573 () Bool)

(assert (=> b!1568694 m!1842573))

(push 1)

(assert (not b!1568694))

(assert (not start!146116))

(assert (not b!1568693))

(assert (not b!1568695))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!465358 () Bool)

(declare-fun isBalanced!1668 (Conc!5629) Bool)

(assert (=> d!465358 (= (inv!22453 (tokens!2215 thiss!10002)) (isBalanced!1668 (c!254215 (tokens!2215 thiss!10002))))))

(declare-fun bs!389982 () Bool)

(assert (= bs!389982 d!465358))

(declare-fun m!1842591 () Bool)

(assert (=> bs!389982 m!1842591))

(assert (=> b!1568694 d!465358))

(declare-fun d!465360 () Bool)

(declare-fun e!1007481 () Bool)

(assert (=> d!465360 e!1007481))

(declare-fun res!699102 () Bool)

(assert (=> d!465360 (=> (not res!699102) (not e!1007481))))

(declare-datatypes ((tuple2!16616 0))(
  ( (tuple2!16617 (_1!9710 BalanceConc!11202) (_2!9710 BalanceConc!11200)) )
))
(declare-fun lex!1118 (LexerInterface!2619 List!17135 BalanceConc!11200) tuple2!16616)

(declare-fun seqFromList!1789 (List!17134) BalanceConc!11202)

(assert (=> d!465360 (= res!699102 (= (list!6568 (_1!9710 (lex!1118 Lexer!2617 (rules!12121 thiss!10002) (print!1156 Lexer!2617 (seqFromList!1789 (list!6568 (tokens!2215 thiss!10002))))))) (list!6568 (tokens!2215 thiss!10002))))))

(declare-fun lt!543523 () Unit!26284)

(declare-fun e!1007482 () Unit!26284)

(assert (=> d!465360 (= lt!543523 e!1007482)))

(declare-fun c!254225 () Bool)

(assert (=> d!465360 (= c!254225 (or (is-Nil!17064 (list!6568 (tokens!2215 thiss!10002))) (is-Nil!17064 (t!142431 (list!6568 (tokens!2215 thiss!10002))))))))

(assert (=> d!465360 (not (isEmpty!10215 (rules!12121 thiss!10002)))))

(assert (=> d!465360 (= (theoremInvertabilityWhenTokenListSeparable!88 Lexer!2617 (rules!12121 thiss!10002) (list!6568 (tokens!2215 thiss!10002))) lt!543523)))

(declare-fun b!1568720 () Bool)

(declare-fun Unit!26289 () Unit!26284)

(assert (=> b!1568720 (= e!1007482 Unit!26289)))

(declare-fun b!1568721 () Bool)

(declare-fun Unit!26290 () Unit!26284)

(assert (=> b!1568721 (= e!1007482 Unit!26290)))

(declare-fun lt!543519 () BalanceConc!11200)

(assert (=> b!1568721 (= lt!543519 (print!1156 Lexer!2617 (seqFromList!1789 (list!6568 (tokens!2215 thiss!10002)))))))

(declare-fun lt!543520 () BalanceConc!11200)

(assert (=> b!1568721 (= lt!543520 (print!1156 Lexer!2617 (seqFromList!1789 (t!142431 (list!6568 (tokens!2215 thiss!10002))))))))

(declare-fun lt!543512 () tuple2!16616)

(assert (=> b!1568721 (= lt!543512 (lex!1118 Lexer!2617 (rules!12121 thiss!10002) lt!543520))))

(declare-fun lt!543506 () List!17133)

(declare-fun list!6570 (BalanceConc!11200) List!17133)

(declare-fun charsOf!1661 (Token!5546) BalanceConc!11200)

(assert (=> b!1568721 (= lt!543506 (list!6570 (charsOf!1661 (h!22465 (list!6568 (tokens!2215 thiss!10002))))))))

(declare-fun lt!543500 () List!17133)

(assert (=> b!1568721 (= lt!543500 (list!6570 lt!543520))))

(declare-fun lt!543503 () Unit!26284)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!797 (List!17133 List!17133) Unit!26284)

(assert (=> b!1568721 (= lt!543503 (lemmaConcatTwoListThenFirstIsPrefix!797 lt!543506 lt!543500))))

(declare-fun isPrefix!1272 (List!17133 List!17133) Bool)

(declare-fun ++!4440 (List!17133 List!17133) List!17133)

(assert (=> b!1568721 (isPrefix!1272 lt!543506 (++!4440 lt!543506 lt!543500))))

(declare-fun lt!543515 () Unit!26284)

(assert (=> b!1568721 (= lt!543515 lt!543503)))

(declare-fun lt!543499 () Unit!26284)

(assert (=> b!1568721 (= lt!543499 (theoremInvertabilityWhenTokenListSeparable!88 Lexer!2617 (rules!12121 thiss!10002) (t!142431 (list!6568 (tokens!2215 thiss!10002)))))))

(declare-fun lt!543511 () Unit!26284)

(declare-fun seqFromListBHdTlConstructive!101 (Token!5546 List!17134 BalanceConc!11202) Unit!26284)

(assert (=> b!1568721 (= lt!543511 (seqFromListBHdTlConstructive!101 (h!22465 (t!142431 (list!6568 (tokens!2215 thiss!10002)))) (t!142431 (t!142431 (list!6568 (tokens!2215 thiss!10002)))) (_1!9710 lt!543512)))))

(declare-fun prepend!488 (BalanceConc!11202 Token!5546) BalanceConc!11202)

(assert (=> b!1568721 (= (list!6568 (_1!9710 lt!543512)) (list!6568 (prepend!488 (seqFromList!1789 (t!142431 (t!142431 (list!6568 (tokens!2215 thiss!10002))))) (h!22465 (t!142431 (list!6568 (tokens!2215 thiss!10002)))))))))

(declare-fun lt!543524 () Unit!26284)

(assert (=> b!1568721 (= lt!543524 lt!543511)))

(declare-datatypes ((tuple2!16618 0))(
  ( (tuple2!16619 (_1!9711 Token!5546) (_2!9711 List!17133)) )
))
(declare-datatypes ((Option!3071 0))(
  ( (None!3070) (Some!3070 (v!23854 tuple2!16618)) )
))
(declare-fun lt!543513 () Option!3071)

(declare-fun maxPrefix!1225 (LexerInterface!2619 List!17135 List!17133) Option!3071)

(assert (=> b!1568721 (= lt!543513 (maxPrefix!1225 Lexer!2617 (rules!12121 thiss!10002) (list!6570 lt!543519)))))

(declare-fun singletonSeq!1354 (Token!5546) BalanceConc!11202)

(declare-fun printTailRec!711 (LexerInterface!2619 BalanceConc!11202 Int BalanceConc!11200) BalanceConc!11200)

(assert (=> b!1568721 (= (print!1156 Lexer!2617 (singletonSeq!1354 (h!22465 (list!6568 (tokens!2215 thiss!10002))))) (printTailRec!711 Lexer!2617 (singletonSeq!1354 (h!22465 (list!6568 (tokens!2215 thiss!10002)))) 0 (BalanceConc!11201 Empty!5628)))))

(declare-fun lt!543507 () Unit!26284)

(declare-fun Unit!26291 () Unit!26284)

(assert (=> b!1568721 (= lt!543507 Unit!26291)))

(declare-fun lt!543508 () Unit!26284)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!245 (LexerInterface!2619 List!17135 List!17133 List!17133) Unit!26284)

(assert (=> b!1568721 (= lt!543508 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!245 Lexer!2617 (rules!12121 thiss!10002) (list!6570 (charsOf!1661 (h!22465 (list!6568 (tokens!2215 thiss!10002))))) (list!6570 lt!543520)))))

(assert (=> b!1568721 (= (list!6570 (charsOf!1661 (h!22465 (list!6568 (tokens!2215 thiss!10002))))) (originalCharacters!3804 (h!22465 (list!6568 (tokens!2215 thiss!10002)))))))

(declare-fun lt!543514 () Unit!26284)

(declare-fun Unit!26292 () Unit!26284)

(assert (=> b!1568721 (= lt!543514 Unit!26292)))

(declare-fun singletonSeq!1355 (C!8810) BalanceConc!11200)

(declare-fun apply!4147 (BalanceConc!11200 Int) C!8810)

(declare-fun head!3134 (List!17133) C!8810)

(assert (=> b!1568721 (= (list!6570 (singletonSeq!1355 (apply!4147 (charsOf!1661 (h!22465 (t!142431 (list!6568 (tokens!2215 thiss!10002))))) 0))) (Cons!17063 (head!3134 (originalCharacters!3804 (h!22465 (t!142431 (list!6568 (tokens!2215 thiss!10002)))))) Nil!17063))))

(declare-fun lt!543504 () Unit!26284)

(declare-fun Unit!26293 () Unit!26284)

(assert (=> b!1568721 (= lt!543504 Unit!26293)))

(assert (=> b!1568721 (= (list!6570 (singletonSeq!1355 (apply!4147 (charsOf!1661 (h!22465 (t!142431 (list!6568 (tokens!2215 thiss!10002))))) 0))) (Cons!17063 (head!3134 (list!6570 lt!543520)) Nil!17063))))

(declare-fun lt!543501 () Unit!26284)

(declare-fun Unit!26294 () Unit!26284)

(assert (=> b!1568721 (= lt!543501 Unit!26294)))

(declare-fun head!3135 (BalanceConc!11200) C!8810)

(assert (=> b!1568721 (= (list!6570 (singletonSeq!1355 (apply!4147 (charsOf!1661 (h!22465 (t!142431 (list!6568 (tokens!2215 thiss!10002))))) 0))) (Cons!17063 (head!3135 lt!543520) Nil!17063))))

(declare-fun lt!543510 () Unit!26284)

(declare-fun Unit!26295 () Unit!26284)

(assert (=> b!1568721 (= lt!543510 Unit!26295)))

(declare-fun isDefined!2466 (Option!3071) Bool)

(assert (=> b!1568721 (isDefined!2466 (maxPrefix!1225 Lexer!2617 (rules!12121 thiss!10002) (originalCharacters!3804 (h!22465 (list!6568 (tokens!2215 thiss!10002))))))))

(declare-fun lt!543509 () Unit!26284)

(declare-fun Unit!26296 () Unit!26284)

(assert (=> b!1568721 (= lt!543509 Unit!26296)))

(assert (=> b!1568721 (isDefined!2466 (maxPrefix!1225 Lexer!2617 (rules!12121 thiss!10002) (list!6570 (charsOf!1661 (h!22465 (list!6568 (tokens!2215 thiss!10002)))))))))

(declare-fun lt!543518 () Unit!26284)

(declare-fun Unit!26297 () Unit!26284)

(assert (=> b!1568721 (= lt!543518 Unit!26297)))

(declare-fun lt!543521 () Unit!26284)

(declare-fun Unit!26298 () Unit!26284)

(assert (=> b!1568721 (= lt!543521 Unit!26298)))

(declare-fun get!4900 (Option!3071) tuple2!16618)

(assert (=> b!1568721 (= (_1!9711 (get!4900 (maxPrefix!1225 Lexer!2617 (rules!12121 thiss!10002) (list!6570 (charsOf!1661 (h!22465 (list!6568 (tokens!2215 thiss!10002)))))))) (h!22465 (list!6568 (tokens!2215 thiss!10002))))))

(declare-fun lt!543522 () Unit!26284)

(declare-fun Unit!26299 () Unit!26284)

(assert (=> b!1568721 (= lt!543522 Unit!26299)))

(declare-fun isEmpty!10217 (List!17133) Bool)

(assert (=> b!1568721 (isEmpty!10217 (_2!9711 (get!4900 (maxPrefix!1225 Lexer!2617 (rules!12121 thiss!10002) (list!6570 (charsOf!1661 (h!22465 (list!6568 (tokens!2215 thiss!10002)))))))))))

(declare-fun lt!543502 () Unit!26284)

(declare-fun Unit!26300 () Unit!26284)

(assert (=> b!1568721 (= lt!543502 Unit!26300)))

(declare-fun matchR!1893 (Regex!4318 List!17133) Bool)

(assert (=> b!1568721 (matchR!1893 (regex!2990 (rule!4776 (h!22465 (list!6568 (tokens!2215 thiss!10002))))) (list!6570 (charsOf!1661 (h!22465 (list!6568 (tokens!2215 thiss!10002))))))))

(declare-fun lt!543505 () Unit!26284)

(declare-fun Unit!26301 () Unit!26284)

(assert (=> b!1568721 (= lt!543505 Unit!26301)))

(assert (=> b!1568721 (= (rule!4776 (h!22465 (list!6568 (tokens!2215 thiss!10002)))) (rule!4776 (h!22465 (list!6568 (tokens!2215 thiss!10002)))))))

(declare-fun lt!543517 () Unit!26284)

(declare-fun Unit!26302 () Unit!26284)

(assert (=> b!1568721 (= lt!543517 Unit!26302)))

(declare-fun lt!543516 () Unit!26284)

(declare-fun lemmaMaxPrefWithNoPrefixMatchAllRulesThenSuffixReturnSame!43 (LexerInterface!2619 List!17135 Token!5546 Rule!5780 List!17133) Unit!26284)

(assert (=> b!1568721 (= lt!543516 (lemmaMaxPrefWithNoPrefixMatchAllRulesThenSuffixReturnSame!43 Lexer!2617 (rules!12121 thiss!10002) (h!22465 (list!6568 (tokens!2215 thiss!10002))) (rule!4776 (h!22465 (list!6568 (tokens!2215 thiss!10002)))) (list!6570 lt!543520)))))

(declare-fun b!1568722 () Bool)

(declare-fun isEmpty!10218 (BalanceConc!11200) Bool)

(assert (=> b!1568722 (= e!1007481 (isEmpty!10218 (_2!9710 (lex!1118 Lexer!2617 (rules!12121 thiss!10002) (print!1156 Lexer!2617 (seqFromList!1789 (list!6568 (tokens!2215 thiss!10002))))))))))

(assert (= (and d!465360 c!254225) b!1568720))

(assert (= (and d!465360 (not c!254225)) b!1568721))

(assert (= (and d!465360 res!699102) b!1568722))

(assert (=> d!465360 m!1842565))

(declare-fun m!1842599 () Bool)

(assert (=> d!465360 m!1842599))

(declare-fun m!1842601 () Bool)

(assert (=> d!465360 m!1842601))

(declare-fun m!1842603 () Bool)

(assert (=> d!465360 m!1842603))

(declare-fun m!1842605 () Bool)

(assert (=> d!465360 m!1842605))

(assert (=> d!465360 m!1842599))

(assert (=> d!465360 m!1842559))

(assert (=> d!465360 m!1842605))

(declare-fun m!1842607 () Bool)

(assert (=> b!1568721 m!1842607))

(declare-fun m!1842609 () Bool)

(assert (=> b!1568721 m!1842609))

(declare-fun m!1842611 () Bool)

(assert (=> b!1568721 m!1842611))

(declare-fun m!1842613 () Bool)

(assert (=> b!1568721 m!1842613))

(declare-fun m!1842615 () Bool)

(assert (=> b!1568721 m!1842615))

(declare-fun m!1842617 () Bool)

(assert (=> b!1568721 m!1842617))

(declare-fun m!1842619 () Bool)

(assert (=> b!1568721 m!1842619))

(declare-fun m!1842621 () Bool)

(assert (=> b!1568721 m!1842621))

(declare-fun m!1842623 () Bool)

(assert (=> b!1568721 m!1842623))

(declare-fun m!1842625 () Bool)

(assert (=> b!1568721 m!1842625))

(declare-fun m!1842627 () Bool)

(assert (=> b!1568721 m!1842627))

(declare-fun m!1842629 () Bool)

(assert (=> b!1568721 m!1842629))

(assert (=> b!1568721 m!1842559))

(assert (=> b!1568721 m!1842605))

(declare-fun m!1842631 () Bool)

(assert (=> b!1568721 m!1842631))

(declare-fun m!1842633 () Bool)

(assert (=> b!1568721 m!1842633))

(declare-fun m!1842635 () Bool)

(assert (=> b!1568721 m!1842635))

(declare-fun m!1842637 () Bool)

(assert (=> b!1568721 m!1842637))

(declare-fun m!1842639 () Bool)

(assert (=> b!1568721 m!1842639))

(assert (=> b!1568721 m!1842637))

(declare-fun m!1842641 () Bool)

(assert (=> b!1568721 m!1842641))

(declare-fun m!1842643 () Bool)

(assert (=> b!1568721 m!1842643))

(declare-fun m!1842645 () Bool)

(assert (=> b!1568721 m!1842645))

(declare-fun m!1842647 () Bool)

(assert (=> b!1568721 m!1842647))

(declare-fun m!1842649 () Bool)

(assert (=> b!1568721 m!1842649))

(declare-fun m!1842651 () Bool)

(assert (=> b!1568721 m!1842651))

(declare-fun m!1842653 () Bool)

(assert (=> b!1568721 m!1842653))

(assert (=> b!1568721 m!1842649))

(assert (=> b!1568721 m!1842633))

(assert (=> b!1568721 m!1842611))

(assert (=> b!1568721 m!1842645))

(assert (=> b!1568721 m!1842637))

(assert (=> b!1568721 m!1842625))

(assert (=> b!1568721 m!1842637))

(assert (=> b!1568721 m!1842619))

(declare-fun m!1842655 () Bool)

(assert (=> b!1568721 m!1842655))

(declare-fun m!1842657 () Bool)

(assert (=> b!1568721 m!1842657))

(assert (=> b!1568721 m!1842639))

(declare-fun m!1842659 () Bool)

(assert (=> b!1568721 m!1842659))

(declare-fun m!1842661 () Bool)

(assert (=> b!1568721 m!1842661))

(assert (=> b!1568721 m!1842607))

(assert (=> b!1568721 m!1842647))

(declare-fun m!1842663 () Bool)

(assert (=> b!1568721 m!1842663))

(assert (=> b!1568721 m!1842657))

(declare-fun m!1842665 () Bool)

(assert (=> b!1568721 m!1842665))

(declare-fun m!1842667 () Bool)

(assert (=> b!1568721 m!1842667))

(assert (=> b!1568721 m!1842605))

(assert (=> b!1568721 m!1842599))

(assert (=> b!1568721 m!1842631))

(declare-fun m!1842669 () Bool)

(assert (=> b!1568721 m!1842669))

(assert (=> b!1568721 m!1842651))

(assert (=> b!1568721 m!1842639))

(declare-fun m!1842671 () Bool)

(assert (=> b!1568721 m!1842671))

(declare-fun m!1842673 () Bool)

(assert (=> b!1568721 m!1842673))

(assert (=> b!1568721 m!1842661))

(assert (=> b!1568721 m!1842611))

(declare-fun m!1842675 () Bool)

(assert (=> b!1568721 m!1842675))

(assert (=> b!1568721 m!1842619))

(declare-fun m!1842677 () Bool)

(assert (=> b!1568721 m!1842677))

(assert (=> b!1568721 m!1842619))

(assert (=> b!1568722 m!1842559))

(assert (=> b!1568722 m!1842605))

(assert (=> b!1568722 m!1842605))

(assert (=> b!1568722 m!1842599))

(assert (=> b!1568722 m!1842599))

(assert (=> b!1568722 m!1842601))

(declare-fun m!1842679 () Bool)

(assert (=> b!1568722 m!1842679))

(assert (=> start!146116 d!465360))

(declare-fun d!465368 () Bool)

(declare-fun res!699109 () Bool)

(declare-fun e!1007485 () Bool)

(assert (=> d!465368 (=> (not res!699109) (not e!1007485))))

(assert (=> d!465368 (= res!699109 (not (isEmpty!10215 (rules!12121 thiss!10002))))))

(assert (=> d!465368 (= (inv!22451 thiss!10002) e!1007485)))

(declare-fun b!1568729 () Bool)

(declare-fun res!699110 () Bool)

(assert (=> b!1568729 (=> (not res!699110) (not e!1007485))))

(assert (=> b!1568729 (= res!699110 (rulesInvariant!2291 Lexer!2617 (rules!12121 thiss!10002)))))

(declare-fun b!1568730 () Bool)

(declare-fun res!699111 () Bool)

(assert (=> b!1568730 (=> (not res!699111) (not e!1007485))))

(declare-fun rulesProduceEachTokenIndividually!911 (LexerInterface!2619 List!17135 BalanceConc!11202) Bool)

(assert (=> b!1568730 (= res!699111 (rulesProduceEachTokenIndividually!911 Lexer!2617 (rules!12121 thiss!10002) (tokens!2215 thiss!10002)))))

(declare-fun b!1568731 () Bool)

(declare-fun separableTokens!282 (LexerInterface!2619 BalanceConc!11202 List!17135) Bool)

(assert (=> b!1568731 (= e!1007485 (separableTokens!282 Lexer!2617 (tokens!2215 thiss!10002) (rules!12121 thiss!10002)))))

(assert (= (and d!465368 res!699109) b!1568729))

(assert (= (and b!1568729 res!699110) b!1568730))

(assert (= (and b!1568730 res!699111) b!1568731))

(assert (=> d!465368 m!1842565))

(assert (=> b!1568729 m!1842569))

(declare-fun m!1842681 () Bool)

(assert (=> b!1568730 m!1842681))

(declare-fun m!1842683 () Bool)

(assert (=> b!1568731 m!1842683))

(assert (=> start!146116 d!465368))

(declare-fun d!465370 () Bool)

(assert (=> d!465370 (= (isEmpty!10215 (rules!12121 thiss!10002)) (is-Nil!17065 (rules!12121 thiss!10002)))))

(assert (=> start!146116 d!465370))

(declare-fun d!465372 () Bool)

(declare-fun lt!543533 () BalanceConc!11200)

(declare-fun printList!775 (LexerInterface!2619 List!17134) List!17133)

(assert (=> d!465372 (= (list!6570 lt!543533) (printList!775 Lexer!2617 (list!6568 (tokens!2215 thiss!10002))))))

(assert (=> d!465372 (= lt!543533 (printTailRec!711 Lexer!2617 (tokens!2215 thiss!10002) 0 (BalanceConc!11201 Empty!5628)))))

(assert (=> d!465372 (= (print!1156 Lexer!2617 (tokens!2215 thiss!10002)) lt!543533)))

(declare-fun bs!389984 () Bool)

(assert (= bs!389984 d!465372))

(declare-fun m!1842685 () Bool)

(assert (=> bs!389984 m!1842685))

(assert (=> bs!389984 m!1842559))

(assert (=> bs!389984 m!1842559))

(declare-fun m!1842687 () Bool)

(assert (=> bs!389984 m!1842687))

(declare-fun m!1842689 () Bool)

(assert (=> bs!389984 m!1842689))

(assert (=> start!146116 d!465372))

(declare-fun d!465374 () Bool)

(declare-fun list!6571 (Conc!5629) List!17134)

(assert (=> d!465374 (= (list!6568 (tokens!2215 thiss!10002)) (list!6571 (c!254215 (tokens!2215 thiss!10002))))))

(declare-fun bs!389985 () Bool)

(assert (= bs!389985 d!465374))

(declare-fun m!1842691 () Bool)

(assert (=> bs!389985 m!1842691))

(assert (=> start!146116 d!465374))

(declare-fun d!465376 () Bool)

(declare-fun res!699114 () Bool)

(declare-fun e!1007490 () Bool)

(assert (=> d!465376 (=> (not res!699114) (not e!1007490))))

(declare-fun rulesValid!1058 (LexerInterface!2619 List!17135) Bool)

(assert (=> d!465376 (= res!699114 (rulesValid!1058 Lexer!2617 (rules!12121 thiss!10002)))))

(assert (=> d!465376 (= (rulesInvariant!2291 Lexer!2617 (rules!12121 thiss!10002)) e!1007490)))

(declare-fun b!1568738 () Bool)

(declare-datatypes ((List!17140 0))(
  ( (Nil!17070) (Cons!17070 (h!22471 String!19734) (t!142437 List!17140)) )
))
(declare-fun noDuplicateTag!1058 (LexerInterface!2619 List!17135 List!17140) Bool)

(assert (=> b!1568738 (= e!1007490 (noDuplicateTag!1058 Lexer!2617 (rules!12121 thiss!10002) Nil!17070))))

(assert (= (and d!465376 res!699114) b!1568738))

(declare-fun m!1842693 () Bool)

(assert (=> d!465376 m!1842693))

(declare-fun m!1842695 () Bool)

(assert (=> b!1568738 m!1842695))

(assert (=> b!1568693 d!465376))

(declare-fun d!465378 () Bool)

(declare-fun c!254230 () Bool)

(assert (=> d!465378 (= c!254230 (is-Node!5629 (c!254215 (tokens!2215 thiss!10002))))))

(declare-fun e!1007497 () Bool)

(assert (=> d!465378 (= (inv!22452 (c!254215 (tokens!2215 thiss!10002))) e!1007497)))

(declare-fun b!1568747 () Bool)

(declare-fun inv!22457 (Conc!5629) Bool)

(assert (=> b!1568747 (= e!1007497 (inv!22457 (c!254215 (tokens!2215 thiss!10002))))))

(declare-fun b!1568748 () Bool)

(declare-fun e!1007498 () Bool)

(assert (=> b!1568748 (= e!1007497 e!1007498)))

(declare-fun res!699119 () Bool)

(assert (=> b!1568748 (= res!699119 (not (is-Leaf!8345 (c!254215 (tokens!2215 thiss!10002)))))))

(assert (=> b!1568748 (=> res!699119 e!1007498)))

(declare-fun b!1568749 () Bool)

(declare-fun inv!22458 (Conc!5629) Bool)

(assert (=> b!1568749 (= e!1007498 (inv!22458 (c!254215 (tokens!2215 thiss!10002))))))

(assert (= (and d!465378 c!254230) b!1568747))

(assert (= (and d!465378 (not c!254230)) b!1568748))

(assert (= (and b!1568748 (not res!699119)) b!1568749))

(declare-fun m!1842697 () Bool)

(assert (=> b!1568747 m!1842697))

(declare-fun m!1842699 () Bool)

(assert (=> b!1568749 m!1842699))

(assert (=> b!1568695 d!465378))

(declare-fun b!1568760 () Bool)

(declare-fun b_free!41987 () Bool)

(declare-fun b_next!42691 () Bool)

(assert (=> b!1568760 (= b_free!41987 (not b_next!42691))))

(declare-fun tp!462006 () Bool)

(declare-fun b_and!109557 () Bool)

(assert (=> b!1568760 (= tp!462006 b_and!109557)))

(declare-fun b_free!41989 () Bool)

(declare-fun b_next!42693 () Bool)

(assert (=> b!1568760 (= b_free!41989 (not b_next!42693))))

(declare-fun tp!462003 () Bool)

(declare-fun b_and!109559 () Bool)

(assert (=> b!1568760 (= tp!462003 b_and!109559)))

(declare-fun e!1007507 () Bool)

(assert (=> b!1568760 (= e!1007507 (and tp!462006 tp!462003))))

(declare-fun tp!462005 () Bool)

(declare-fun b!1568759 () Bool)

(declare-fun e!1007508 () Bool)

(declare-fun inv!22448 (String!19734) Bool)

(declare-fun inv!22459 (TokenValueInjection!5820) Bool)

(assert (=> b!1568759 (= e!1007508 (and tp!462005 (inv!22448 (tag!3254 (h!22466 (rules!12121 thiss!10002)))) (inv!22459 (transformation!2990 (h!22466 (rules!12121 thiss!10002)))) e!1007507))))

(declare-fun b!1568758 () Bool)

(declare-fun e!1007510 () Bool)

(declare-fun tp!462004 () Bool)

(assert (=> b!1568758 (= e!1007510 (and e!1007508 tp!462004))))

(assert (=> b!1568694 (= tp!461987 e!1007510)))

(assert (= b!1568759 b!1568760))

(assert (= b!1568758 b!1568759))

(assert (= (and b!1568694 (is-Cons!17065 (rules!12121 thiss!10002))) b!1568758))

(declare-fun m!1842701 () Bool)

(assert (=> b!1568759 m!1842701))

(declare-fun m!1842703 () Bool)

(assert (=> b!1568759 m!1842703))

(declare-fun e!1007516 () Bool)

(declare-fun tp!462013 () Bool)

(declare-fun b!1568769 () Bool)

(declare-fun tp!462015 () Bool)

(assert (=> b!1568769 (= e!1007516 (and (inv!22452 (left!13826 (c!254215 (tokens!2215 thiss!10002)))) tp!462015 (inv!22452 (right!14156 (c!254215 (tokens!2215 thiss!10002)))) tp!462013))))

(declare-fun b!1568771 () Bool)

(declare-fun e!1007515 () Bool)

(declare-fun tp!462014 () Bool)

(assert (=> b!1568771 (= e!1007515 tp!462014)))

(declare-fun b!1568770 () Bool)

(declare-fun inv!22460 (IArray!11263) Bool)

(assert (=> b!1568770 (= e!1007516 (and (inv!22460 (xs!8433 (c!254215 (tokens!2215 thiss!10002)))) e!1007515))))

(assert (=> b!1568695 (= tp!461988 (and (inv!22452 (c!254215 (tokens!2215 thiss!10002))) e!1007516))))

(assert (= (and b!1568695 (is-Node!5629 (c!254215 (tokens!2215 thiss!10002)))) b!1568769))

(assert (= b!1568770 b!1568771))

(assert (= (and b!1568695 (is-Leaf!8345 (c!254215 (tokens!2215 thiss!10002)))) b!1568770))

(declare-fun m!1842705 () Bool)

(assert (=> b!1568769 m!1842705))

(declare-fun m!1842707 () Bool)

(assert (=> b!1568769 m!1842707))

(declare-fun m!1842709 () Bool)

(assert (=> b!1568770 m!1842709))

(assert (=> b!1568695 m!1842571))

(push 1)

(assert (not b!1568747))

(assert (not d!465374))

(assert (not b!1568758))

(assert (not b_next!42691))

(assert (not b!1568722))

(assert (not b!1568738))

(assert (not b!1568695))

(assert (not b!1568759))

(assert (not d!465372))

(assert (not b!1568770))

(assert (not b!1568731))

(assert b_and!109559)

(assert (not b!1568729))

(assert (not b!1568771))

(assert b_and!109557)

(assert (not d!465358))

(assert (not b!1568730))

(assert (not b!1568721))

(assert (not d!465368))

(assert (not b!1568749))

(assert (not b_next!42693))

(assert (not d!465376))

(assert (not b!1568769))

(assert (not d!465360))

(check-sat)

(pop 1)

(push 1)

(assert b_and!109557)

(assert b_and!109559)

(assert (not b_next!42691))

(assert (not b_next!42693))

(check-sat)

(pop 1)

