; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!299274 () Bool)

(assert start!299274)

(declare-fun b!3191289 () Bool)

(declare-fun b_free!84457 () Bool)

(declare-fun b_next!85161 () Bool)

(assert (=> b!3191289 (= b_free!84457 (not b_next!85161))))

(declare-fun tp!1008851 () Bool)

(declare-fun b_and!211467 () Bool)

(assert (=> b!3191289 (= tp!1008851 b_and!211467)))

(declare-fun b_free!84459 () Bool)

(declare-fun b_next!85163 () Bool)

(assert (=> b!3191289 (= b_free!84459 (not b_next!85163))))

(declare-fun tp!1008852 () Bool)

(declare-fun b_and!211469 () Bool)

(assert (=> b!3191289 (= tp!1008852 b_and!211469)))

(declare-fun b!3191316 () Bool)

(declare-fun b_free!84461 () Bool)

(declare-fun b_next!85165 () Bool)

(assert (=> b!3191316 (= b_free!84461 (not b_next!85165))))

(declare-fun tp!1008856 () Bool)

(declare-fun b_and!211471 () Bool)

(assert (=> b!3191316 (= tp!1008856 b_and!211471)))

(declare-fun b_free!84463 () Bool)

(declare-fun b_next!85167 () Bool)

(assert (=> b!3191316 (= b_free!84463 (not b_next!85167))))

(declare-fun tp!1008857 () Bool)

(declare-fun b_and!211473 () Bool)

(assert (=> b!3191316 (= tp!1008857 b_and!211473)))

(declare-fun b!3191319 () Bool)

(declare-fun b_free!84465 () Bool)

(declare-fun b_next!85169 () Bool)

(assert (=> b!3191319 (= b_free!84465 (not b_next!85169))))

(declare-fun tp!1008850 () Bool)

(declare-fun b_and!211475 () Bool)

(assert (=> b!3191319 (= tp!1008850 b_and!211475)))

(declare-fun b_free!84467 () Bool)

(declare-fun b_next!85171 () Bool)

(assert (=> b!3191319 (= b_free!84467 (not b_next!85171))))

(declare-fun tp!1008860 () Bool)

(declare-fun b_and!211477 () Bool)

(assert (=> b!3191319 (= tp!1008860 b_and!211477)))

(declare-fun tp!1008855 () Bool)

(declare-datatypes ((C!20024 0))(
  ( (C!20025 (val!12060 Int)) )
))
(declare-datatypes ((Regex!9919 0))(
  ( (ElementMatch!9919 (c!535852 C!20024)) (Concat!15309 (regOne!20350 Regex!9919) (regTwo!20350 Regex!9919)) (EmptyExpr!9919) (Star!9919 (reg!10248 Regex!9919)) (EmptyLang!9919) (Union!9919 (regOne!20351 Regex!9919) (regTwo!20351 Regex!9919)) )
))
(declare-datatypes ((List!36032 0))(
  ( (Nil!35908) (Cons!35908 (h!41328 (_ BitVec 16)) (t!236195 List!36032)) )
))
(declare-datatypes ((TokenValue!5390 0))(
  ( (FloatLiteralValue!10780 (text!38175 List!36032)) (TokenValueExt!5389 (__x!22997 Int)) (Broken!26950 (value!167494 List!36032)) (Object!5513) (End!5390) (Def!5390) (Underscore!5390) (Match!5390) (Else!5390) (Error!5390) (Case!5390) (If!5390) (Extends!5390) (Abstract!5390) (Class!5390) (Val!5390) (DelimiterValue!10780 (del!5450 List!36032)) (KeywordValue!5396 (value!167495 List!36032)) (CommentValue!10780 (value!167496 List!36032)) (WhitespaceValue!10780 (value!167497 List!36032)) (IndentationValue!5390 (value!167498 List!36032)) (String!40283) (Int32!5390) (Broken!26951 (value!167499 List!36032)) (Boolean!5391) (Unit!50349) (OperatorValue!5393 (op!5450 List!36032)) (IdentifierValue!10780 (value!167500 List!36032)) (IdentifierValue!10781 (value!167501 List!36032)) (WhitespaceValue!10781 (value!167502 List!36032)) (True!10780) (False!10780) (Broken!26952 (value!167503 List!36032)) (Broken!26953 (value!167504 List!36032)) (True!10781) (RightBrace!5390) (RightBracket!5390) (Colon!5390) (Null!5390) (Comma!5390) (LeftBracket!5390) (False!10781) (LeftBrace!5390) (ImaginaryLiteralValue!5390 (text!38176 List!36032)) (StringLiteralValue!16170 (value!167505 List!36032)) (EOFValue!5390 (value!167506 List!36032)) (IdentValue!5390 (value!167507 List!36032)) (DelimiterValue!10781 (value!167508 List!36032)) (DedentValue!5390 (value!167509 List!36032)) (NewLineValue!5390 (value!167510 List!36032)) (IntegerValue!16170 (value!167511 (_ BitVec 32)) (text!38177 List!36032)) (IntegerValue!16171 (value!167512 Int) (text!38178 List!36032)) (Times!5390) (Or!5390) (Equal!5390) (Minus!5390) (Broken!26954 (value!167513 List!36032)) (And!5390) (Div!5390) (LessEqual!5390) (Mod!5390) (Concat!15310) (Not!5390) (Plus!5390) (SpaceValue!5390 (value!167514 List!36032)) (IntegerValue!16172 (value!167515 Int) (text!38179 List!36032)) (StringLiteralValue!16171 (text!38180 List!36032)) (FloatLiteralValue!10781 (text!38181 List!36032)) (BytesLiteralValue!5390 (value!167516 List!36032)) (CommentValue!10781 (value!167517 List!36032)) (StringLiteralValue!16172 (value!167518 List!36032)) (ErrorTokenValue!5390 (msg!5451 List!36032)) )
))
(declare-datatypes ((List!36033 0))(
  ( (Nil!35909) (Cons!35909 (h!41329 C!20024) (t!236196 List!36033)) )
))
(declare-datatypes ((IArray!21395 0))(
  ( (IArray!21396 (innerList!10755 List!36033)) )
))
(declare-datatypes ((Conc!10695 0))(
  ( (Node!10695 (left!27917 Conc!10695) (right!28247 Conc!10695) (csize!21620 Int) (cheight!10906 Int)) (Leaf!16886 (xs!13813 IArray!21395) (csize!21621 Int)) (Empty!10695) )
))
(declare-datatypes ((BalanceConc!21004 0))(
  ( (BalanceConc!21005 (c!535853 Conc!10695)) )
))
(declare-datatypes ((String!40284 0))(
  ( (String!40285 (value!167519 String)) )
))
(declare-datatypes ((TokenValueInjection!10208 0))(
  ( (TokenValueInjection!10209 (toValue!7224 Int) (toChars!7083 Int)) )
))
(declare-datatypes ((Rule!10120 0))(
  ( (Rule!10121 (regex!5160 Regex!9919) (tag!5678 String!40284) (isSeparator!5160 Bool) (transformation!5160 TokenValueInjection!10208)) )
))
(declare-datatypes ((Token!9686 0))(
  ( (Token!9687 (value!167520 TokenValue!5390) (rule!7592 Rule!10120) (size!27076 Int) (originalCharacters!5874 List!36033)) )
))
(declare-datatypes ((List!36034 0))(
  ( (Nil!35910) (Cons!35910 (h!41330 Token!9686) (t!236197 List!36034)) )
))
(declare-fun tokens!494 () List!36034)

(declare-fun e!1989092 () Bool)

(declare-fun e!1989075 () Bool)

(declare-fun b!3191284 () Bool)

(declare-fun inv!48754 (String!40284) Bool)

(declare-fun inv!48757 (TokenValueInjection!10208) Bool)

(assert (=> b!3191284 (= e!1989075 (and tp!1008855 (inv!48754 (tag!5678 (rule!7592 (h!41330 tokens!494)))) (inv!48757 (transformation!5160 (rule!7592 (h!41330 tokens!494)))) e!1989092))))

(declare-fun b!3191285 () Bool)

(declare-fun e!1989095 () Bool)

(declare-fun e!1989074 () Bool)

(assert (=> b!3191285 (= e!1989095 e!1989074)))

(declare-fun res!1298093 () Bool)

(assert (=> b!3191285 (=> res!1298093 e!1989074)))

(assert (=> b!3191285 (= res!1298093 (isSeparator!5160 (rule!7592 (h!41330 tokens!494))))))

(declare-datatypes ((Unit!50350 0))(
  ( (Unit!50351) )
))
(declare-fun lt!1075049 () Unit!50350)

(declare-fun lambda!116771 () Int)

(declare-fun forallContained!1143 (List!36034 Int Token!9686) Unit!50350)

(assert (=> b!3191285 (= lt!1075049 (forallContained!1143 tokens!494 lambda!116771 (h!41330 tokens!494)))))

(declare-fun b!3191286 () Bool)

(declare-fun e!1989102 () Bool)

(declare-fun e!1989086 () Bool)

(assert (=> b!3191286 (= e!1989102 (not e!1989086))))

(declare-fun res!1298095 () Bool)

(assert (=> b!3191286 (=> res!1298095 e!1989086)))

(declare-fun lt!1075060 () List!36033)

(declare-fun lt!1075038 () List!36033)

(assert (=> b!3191286 (= res!1298095 (not (= lt!1075060 lt!1075038)))))

(declare-datatypes ((LexerInterface!4749 0))(
  ( (LexerInterfaceExt!4746 (__x!22998 Int)) (Lexer!4747) )
))
(declare-fun thiss!18206 () LexerInterface!4749)

(declare-fun printList!1303 (LexerInterface!4749 List!36034) List!36033)

(assert (=> b!3191286 (= lt!1075038 (printList!1303 thiss!18206 (Cons!35910 (h!41330 tokens!494) Nil!35910)))))

(declare-fun lt!1075035 () BalanceConc!21004)

(declare-fun list!12760 (BalanceConc!21004) List!36033)

(assert (=> b!3191286 (= lt!1075060 (list!12760 lt!1075035))))

(declare-datatypes ((IArray!21397 0))(
  ( (IArray!21398 (innerList!10756 List!36034)) )
))
(declare-datatypes ((Conc!10696 0))(
  ( (Node!10696 (left!27918 Conc!10696) (right!28248 Conc!10696) (csize!21622 Int) (cheight!10907 Int)) (Leaf!16887 (xs!13814 IArray!21397) (csize!21623 Int)) (Empty!10696) )
))
(declare-datatypes ((BalanceConc!21006 0))(
  ( (BalanceConc!21007 (c!535854 Conc!10696)) )
))
(declare-fun lt!1075058 () BalanceConc!21006)

(declare-fun printTailRec!1248 (LexerInterface!4749 BalanceConc!21006 Int BalanceConc!21004) BalanceConc!21004)

(assert (=> b!3191286 (= lt!1075035 (printTailRec!1248 thiss!18206 lt!1075058 0 (BalanceConc!21005 Empty!10695)))))

(declare-fun print!1816 (LexerInterface!4749 BalanceConc!21006) BalanceConc!21004)

(assert (=> b!3191286 (= lt!1075035 (print!1816 thiss!18206 lt!1075058))))

(declare-fun singletonSeq!2256 (Token!9686) BalanceConc!21006)

(assert (=> b!3191286 (= lt!1075058 (singletonSeq!2256 (h!41330 tokens!494)))))

(declare-fun b!3191287 () Bool)

(declare-fun e!1989093 () Bool)

(assert (=> b!3191287 (= e!1989093 true)))

(declare-fun lt!1075046 () BalanceConc!21004)

(declare-datatypes ((List!36035 0))(
  ( (Nil!35911) (Cons!35911 (h!41331 Rule!10120) (t!236198 List!36035)) )
))
(declare-fun rules!2135 () List!36035)

(declare-fun lt!1075057 () List!36034)

(declare-fun filter!508 (List!36034 Int) List!36034)

(declare-fun list!12761 (BalanceConc!21006) List!36034)

(declare-datatypes ((tuple2!35316 0))(
  ( (tuple2!35317 (_1!20792 BalanceConc!21006) (_2!20792 BalanceConc!21004)) )
))
(declare-fun lex!2089 (LexerInterface!4749 List!36035 BalanceConc!21004) tuple2!35316)

(assert (=> b!3191287 (= lt!1075057 (filter!508 (list!12761 (_1!20792 (lex!2089 thiss!18206 rules!2135 lt!1075046))) lambda!116771))))

(declare-fun b!3191288 () Bool)

(declare-fun e!1989083 () Unit!50350)

(declare-fun Unit!50352 () Unit!50350)

(assert (=> b!3191288 (= e!1989083 Unit!50352)))

(declare-fun b!3191290 () Bool)

(declare-fun res!1298105 () Bool)

(assert (=> b!3191290 (=> (not res!1298105) (not e!1989102))))

(declare-fun sepAndNonSepRulesDisjointChars!1354 (List!36035 List!36035) Bool)

(assert (=> b!3191290 (= res!1298105 (sepAndNonSepRulesDisjointChars!1354 rules!2135 rules!2135))))

(declare-fun b!3191291 () Bool)

(declare-fun res!1298103 () Bool)

(assert (=> b!3191291 (=> (not res!1298103) (not e!1989102))))

(declare-fun separatorToken!241 () Token!9686)

(declare-fun rulesProduceIndividualToken!2241 (LexerInterface!4749 List!36035 Token!9686) Bool)

(assert (=> b!3191291 (= res!1298103 (rulesProduceIndividualToken!2241 thiss!18206 rules!2135 separatorToken!241))))

(declare-fun b!3191292 () Bool)

(declare-fun res!1298106 () Bool)

(assert (=> b!3191292 (=> res!1298106 e!1989093)))

(declare-fun isEmpty!20040 (List!36034) Bool)

(declare-datatypes ((tuple2!35318 0))(
  ( (tuple2!35319 (_1!20793 List!36034) (_2!20793 List!36033)) )
))
(declare-fun lexList!1299 (LexerInterface!4749 List!36035 List!36033) tuple2!35318)

(declare-fun printWithSeparatorTokenList!110 (LexerInterface!4749 List!36034 Token!9686) List!36033)

(assert (=> b!3191292 (= res!1298106 (not (isEmpty!20040 (filter!508 (_1!20793 (lexList!1299 thiss!18206 rules!2135 (printWithSeparatorTokenList!110 thiss!18206 Nil!35910 separatorToken!241))) lambda!116771))))))

(declare-fun b!3191293 () Bool)

(declare-fun res!1298112 () Bool)

(declare-fun e!1989087 () Bool)

(assert (=> b!3191293 (=> (not res!1298112) (not e!1989087))))

(declare-fun rulesInvariant!4146 (LexerInterface!4749 List!36035) Bool)

(assert (=> b!3191293 (= res!1298112 (rulesInvariant!4146 thiss!18206 rules!2135))))

(declare-fun b!3191294 () Bool)

(declare-fun e!1989096 () tuple2!35318)

(declare-datatypes ((tuple2!35320 0))(
  ( (tuple2!35321 (_1!20794 Token!9686) (_2!20794 List!36033)) )
))
(declare-datatypes ((Option!7053 0))(
  ( (None!7052) (Some!7052 (v!35552 tuple2!35320)) )
))
(declare-fun lt!1075045 () Option!7053)

(declare-fun lt!1075050 () tuple2!35318)

(assert (=> b!3191294 (= e!1989096 (tuple2!35319 (Cons!35910 (_1!20794 (v!35552 lt!1075045)) (_1!20793 lt!1075050)) (_2!20793 lt!1075050)))))

(assert (=> b!3191294 (= lt!1075050 (lexList!1299 thiss!18206 rules!2135 (_2!20794 (v!35552 lt!1075045))))))

(declare-fun b!3191295 () Bool)

(declare-fun Unit!50353 () Unit!50350)

(assert (=> b!3191295 (= e!1989083 Unit!50353)))

(declare-fun lt!1075055 () List!36033)

(declare-fun lt!1075041 () Unit!50350)

(declare-fun lt!1075063 () C!20024)

(declare-fun lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!358 (Regex!9919 List!36033 C!20024) Unit!50350)

(assert (=> b!3191295 (= lt!1075041 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!358 (regex!5160 (rule!7592 separatorToken!241)) lt!1075055 lt!1075063))))

(declare-fun res!1298102 () Bool)

(declare-fun matchR!4577 (Regex!9919 List!36033) Bool)

(assert (=> b!3191295 (= res!1298102 (not (matchR!4577 (regex!5160 (rule!7592 separatorToken!241)) lt!1075055)))))

(declare-fun e!1989082 () Bool)

(assert (=> b!3191295 (=> (not res!1298102) (not e!1989082))))

(assert (=> b!3191295 e!1989082))

(declare-fun b!3191296 () Bool)

(declare-fun res!1298099 () Bool)

(assert (=> b!3191296 (=> (not res!1298099) (not e!1989102))))

(assert (=> b!3191296 (= res!1298099 (isSeparator!5160 (rule!7592 separatorToken!241)))))

(declare-fun b!3191297 () Bool)

(declare-fun res!1298107 () Bool)

(assert (=> b!3191297 (=> (not res!1298107) (not e!1989102))))

(get-info :version)

(assert (=> b!3191297 (= res!1298107 (and (not ((_ is Nil!35910) tokens!494)) ((_ is Nil!35910) (t!236197 tokens!494))))))

(declare-fun b!3191298 () Bool)

(declare-fun e!1989080 () Bool)

(declare-fun e!1989097 () Bool)

(assert (=> b!3191298 (= e!1989080 e!1989097)))

(declare-fun res!1298104 () Bool)

(assert (=> b!3191298 (=> (not res!1298104) (not e!1989097))))

(declare-fun lt!1075047 () Rule!10120)

(declare-fun lt!1075051 () List!36033)

(assert (=> b!3191298 (= res!1298104 (matchR!4577 (regex!5160 lt!1075047) lt!1075051))))

(declare-datatypes ((Option!7054 0))(
  ( (None!7053) (Some!7053 (v!35553 Rule!10120)) )
))
(declare-fun lt!1075054 () Option!7054)

(declare-fun get!11437 (Option!7054) Rule!10120)

(assert (=> b!3191298 (= lt!1075047 (get!11437 lt!1075054))))

(declare-fun b!3191299 () Bool)

(declare-fun e!1989084 () Bool)

(declare-fun e!1989089 () Bool)

(declare-fun tp!1008854 () Bool)

(assert (=> b!3191299 (= e!1989084 (and e!1989089 tp!1008854))))

(declare-fun b!3191300 () Bool)

(assert (=> b!3191300 (= e!1989097 (= (rule!7592 (h!41330 tokens!494)) lt!1075047))))

(declare-fun e!1989076 () Bool)

(declare-fun tp!1008859 () Bool)

(declare-fun b!3191301 () Bool)

(declare-fun e!1989078 () Bool)

(declare-fun inv!21 (TokenValue!5390) Bool)

(assert (=> b!3191301 (= e!1989078 (and (inv!21 (value!167520 separatorToken!241)) e!1989076 tp!1008859))))

(declare-fun b!3191302 () Bool)

(declare-fun tp!1008853 () Bool)

(declare-fun e!1989073 () Bool)

(assert (=> b!3191302 (= e!1989089 (and tp!1008853 (inv!48754 (tag!5678 (h!41331 rules!2135))) (inv!48757 (transformation!5160 (h!41331 rules!2135))) e!1989073))))

(declare-fun b!3191303 () Bool)

(declare-fun res!1298115 () Bool)

(assert (=> b!3191303 (=> (not res!1298115) (not e!1989087))))

(declare-fun isEmpty!20041 (List!36035) Bool)

(assert (=> b!3191303 (= res!1298115 (not (isEmpty!20041 rules!2135)))))

(declare-fun b!3191304 () Bool)

(declare-fun lt!1075042 () List!36033)

(assert (=> b!3191304 (= e!1989096 (tuple2!35319 Nil!35910 lt!1075042))))

(assert (=> b!3191304 false))

(declare-fun b!3191305 () Bool)

(declare-fun e!1989085 () Bool)

(assert (=> b!3191305 (= e!1989085 e!1989095)))

(declare-fun res!1298098 () Bool)

(assert (=> b!3191305 (=> res!1298098 e!1989095)))

(declare-fun lt!1075040 () BalanceConc!21004)

(declare-fun isEmpty!20042 (BalanceConc!21006) Bool)

(assert (=> b!3191305 (= res!1298098 (isEmpty!20042 (_1!20792 (lex!2089 thiss!18206 rules!2135 lt!1075040))))))

(declare-fun seqFromList!3399 (List!36033) BalanceConc!21004)

(assert (=> b!3191305 (= lt!1075040 (seqFromList!3399 lt!1075051))))

(declare-fun e!1989099 () Bool)

(declare-fun b!3191306 () Bool)

(declare-fun e!1989081 () Bool)

(declare-fun tp!1008849 () Bool)

(declare-fun inv!48758 (Token!9686) Bool)

(assert (=> b!3191306 (= e!1989081 (and (inv!48758 (h!41330 tokens!494)) e!1989099 tp!1008849))))

(declare-fun b!3191307 () Bool)

(declare-fun res!1298114 () Bool)

(assert (=> b!3191307 (=> res!1298114 e!1989093)))

(declare-fun printWithSeparatorToken!58 (LexerInterface!4749 BalanceConc!21006 Token!9686) BalanceConc!21004)

(assert (=> b!3191307 (= res!1298114 (not (isEmpty!20040 (filter!508 (list!12761 (_1!20792 (lex!2089 thiss!18206 rules!2135 (printWithSeparatorToken!58 thiss!18206 (BalanceConc!21007 Empty!10696) separatorToken!241)))) lambda!116771))))))

(declare-fun b!3191308 () Bool)

(declare-fun tp!1008858 () Bool)

(assert (=> b!3191308 (= e!1989099 (and (inv!21 (value!167520 (h!41330 tokens!494))) e!1989075 tp!1008858))))

(assert (=> b!3191289 (= e!1989092 (and tp!1008851 tp!1008852))))

(declare-fun res!1298096 () Bool)

(assert (=> start!299274 (=> (not res!1298096) (not e!1989087))))

(assert (=> start!299274 (= res!1298096 ((_ is Lexer!4747) thiss!18206))))

(assert (=> start!299274 e!1989087))

(assert (=> start!299274 true))

(assert (=> start!299274 e!1989084))

(assert (=> start!299274 (and (inv!48758 separatorToken!241) e!1989078)))

(assert (=> start!299274 e!1989081))

(declare-fun b!3191309 () Bool)

(assert (=> b!3191309 (= e!1989086 e!1989085)))

(declare-fun res!1298109 () Bool)

(assert (=> b!3191309 (=> res!1298109 e!1989085)))

(assert (=> b!3191309 (= res!1298109 (or (not (= lt!1075038 lt!1075051)) (not (= lt!1075060 lt!1075051))))))

(declare-fun charsOf!3182 (Token!9686) BalanceConc!21004)

(assert (=> b!3191309 (= lt!1075051 (list!12760 (charsOf!3182 (h!41330 tokens!494))))))

(declare-fun b!3191310 () Bool)

(declare-fun res!1298110 () Bool)

(assert (=> b!3191310 (=> res!1298110 e!1989085)))

(assert (=> b!3191310 (= res!1298110 (not (rulesProduceIndividualToken!2241 thiss!18206 rules!2135 (h!41330 tokens!494))))))

(declare-fun b!3191311 () Bool)

(declare-fun e!1989090 () Bool)

(declare-fun lt!1075061 () Rule!10120)

(assert (=> b!3191311 (= e!1989090 (= (rule!7592 separatorToken!241) lt!1075061))))

(declare-fun b!3191312 () Bool)

(assert (=> b!3191312 (= e!1989082 false)))

(declare-fun b!3191313 () Bool)

(declare-fun e!1989100 () Bool)

(assert (=> b!3191313 (= e!1989100 e!1989093)))

(declare-fun res!1298116 () Bool)

(assert (=> b!3191313 (=> res!1298116 e!1989093)))

(assert (=> b!3191313 (= res!1298116 (not (= e!1989096 (lexList!1299 thiss!18206 rules!2135 lt!1075042))))))

(declare-fun c!535851 () Bool)

(assert (=> b!3191313 (= c!535851 ((_ is Some!7052) lt!1075045))))

(declare-fun maxPrefix!2427 (LexerInterface!4749 List!36035 List!36033) Option!7053)

(assert (=> b!3191313 (= lt!1075045 (maxPrefix!2427 thiss!18206 rules!2135 lt!1075042))))

(declare-fun lt!1075037 () List!36033)

(assert (=> b!3191313 (= (maxPrefix!2427 thiss!18206 rules!2135 lt!1075037) (Some!7052 (tuple2!35321 (h!41330 tokens!494) lt!1075055)))))

(declare-fun lt!1075043 () Unit!50350)

(declare-fun lemmaMaxPrefWithOtherTypeUsedCharAtStartOfSuffixReturnSame!138 (LexerInterface!4749 List!36035 Token!9686 Rule!10120 List!36033 Rule!10120) Unit!50350)

(assert (=> b!3191313 (= lt!1075043 (lemmaMaxPrefWithOtherTypeUsedCharAtStartOfSuffixReturnSame!138 thiss!18206 rules!2135 (h!41330 tokens!494) (rule!7592 (h!41330 tokens!494)) lt!1075055 (rule!7592 separatorToken!241)))))

(declare-fun contains!6385 (List!36033 C!20024) Bool)

(declare-fun usedCharacters!504 (Regex!9919) List!36033)

(assert (=> b!3191313 (not (contains!6385 (usedCharacters!504 (regex!5160 (rule!7592 (h!41330 tokens!494)))) lt!1075063))))

(declare-fun lt!1075039 () Unit!50350)

(declare-fun lemmaNonSepRuleNotContainsCharContainedInASepRule!136 (LexerInterface!4749 List!36035 List!36035 Rule!10120 Rule!10120 C!20024) Unit!50350)

(assert (=> b!3191313 (= lt!1075039 (lemmaNonSepRuleNotContainsCharContainedInASepRule!136 thiss!18206 rules!2135 rules!2135 (rule!7592 (h!41330 tokens!494)) (rule!7592 separatorToken!241) lt!1075063))))

(declare-fun b!3191314 () Bool)

(declare-fun res!1298101 () Bool)

(assert (=> b!3191314 (=> res!1298101 e!1989093)))

(assert (=> b!3191314 (= res!1298101 (not (= (filter!508 (_1!20793 (lexList!1299 thiss!18206 rules!2135 (printWithSeparatorTokenList!110 thiss!18206 tokens!494 separatorToken!241))) lambda!116771) tokens!494)))))

(declare-fun b!3191315 () Bool)

(declare-fun e!1989091 () Bool)

(assert (=> b!3191315 (= e!1989074 e!1989091)))

(declare-fun res!1298100 () Bool)

(assert (=> b!3191315 (=> res!1298100 e!1989091)))

(assert (=> b!3191315 (= res!1298100 (not (= lt!1075042 lt!1075037)))))

(declare-fun ++!8598 (List!36033 List!36033) List!36033)

(assert (=> b!3191315 (= lt!1075037 (++!8598 lt!1075051 lt!1075055))))

(assert (=> b!3191315 (= lt!1075042 (list!12760 lt!1075046))))

(assert (=> b!3191315 (= lt!1075055 (list!12760 (charsOf!3182 separatorToken!241)))))

(declare-fun lt!1075062 () BalanceConc!21006)

(assert (=> b!3191315 (= lt!1075046 (printWithSeparatorToken!58 thiss!18206 lt!1075062 separatorToken!241))))

(declare-fun e!1989094 () Bool)

(assert (=> b!3191316 (= e!1989094 (and tp!1008856 tp!1008857))))

(declare-fun b!3191317 () Bool)

(declare-fun res!1298117 () Bool)

(assert (=> b!3191317 (=> (not res!1298117) (not e!1989102))))

(declare-fun forall!7292 (List!36034 Int) Bool)

(assert (=> b!3191317 (= res!1298117 (forall!7292 tokens!494 lambda!116771))))

(declare-fun b!3191318 () Bool)

(declare-fun e!1989088 () Bool)

(assert (=> b!3191318 (= e!1989088 e!1989090)))

(declare-fun res!1298113 () Bool)

(assert (=> b!3191318 (=> (not res!1298113) (not e!1989090))))

(assert (=> b!3191318 (= res!1298113 (matchR!4577 (regex!5160 lt!1075061) lt!1075055))))

(declare-fun lt!1075048 () Option!7054)

(assert (=> b!3191318 (= lt!1075061 (get!11437 lt!1075048))))

(assert (=> b!3191319 (= e!1989073 (and tp!1008850 tp!1008860))))

(declare-fun b!3191320 () Bool)

(assert (=> b!3191320 (= e!1989087 e!1989102)))

(declare-fun res!1298097 () Bool)

(assert (=> b!3191320 (=> (not res!1298097) (not e!1989102))))

(declare-fun rulesProduceEachTokenIndividually!1200 (LexerInterface!4749 List!36035 BalanceConc!21006) Bool)

(assert (=> b!3191320 (= res!1298097 (rulesProduceEachTokenIndividually!1200 thiss!18206 rules!2135 lt!1075062))))

(declare-fun seqFromList!3400 (List!36034) BalanceConc!21006)

(assert (=> b!3191320 (= lt!1075062 (seqFromList!3400 tokens!494))))

(declare-fun b!3191321 () Bool)

(assert (=> b!3191321 (= e!1989091 e!1989100)))

(declare-fun res!1298111 () Bool)

(assert (=> b!3191321 (=> res!1298111 e!1989100)))

(declare-fun lt!1075036 () Bool)

(assert (=> b!3191321 (= res!1298111 lt!1075036)))

(declare-fun lt!1075056 () Unit!50350)

(assert (=> b!3191321 (= lt!1075056 e!1989083)))

(declare-fun c!535850 () Bool)

(assert (=> b!3191321 (= c!535850 lt!1075036)))

(assert (=> b!3191321 (= lt!1075036 (not (contains!6385 (usedCharacters!504 (regex!5160 (rule!7592 separatorToken!241))) lt!1075063)))))

(declare-fun head!6995 (List!36033) C!20024)

(assert (=> b!3191321 (= lt!1075063 (head!6995 lt!1075055))))

(declare-fun maxPrefixOneRule!1554 (LexerInterface!4749 Rule!10120 List!36033) Option!7053)

(declare-fun apply!8098 (TokenValueInjection!10208 BalanceConc!21004) TokenValue!5390)

(declare-fun size!27077 (List!36033) Int)

(assert (=> b!3191321 (= (maxPrefixOneRule!1554 thiss!18206 (rule!7592 (h!41330 tokens!494)) lt!1075051) (Some!7052 (tuple2!35321 (Token!9687 (apply!8098 (transformation!5160 (rule!7592 (h!41330 tokens!494))) lt!1075040) (rule!7592 (h!41330 tokens!494)) (size!27077 lt!1075051) lt!1075051) Nil!35909)))))

(declare-fun lt!1075064 () Unit!50350)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!667 (LexerInterface!4749 List!36035 List!36033 List!36033 List!36033 Rule!10120) Unit!50350)

(assert (=> b!3191321 (= lt!1075064 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!667 thiss!18206 rules!2135 lt!1075051 lt!1075051 Nil!35909 (rule!7592 (h!41330 tokens!494))))))

(assert (=> b!3191321 e!1989088))

(declare-fun res!1298094 () Bool)

(assert (=> b!3191321 (=> (not res!1298094) (not e!1989088))))

(declare-fun isDefined!5512 (Option!7054) Bool)

(assert (=> b!3191321 (= res!1298094 (isDefined!5512 lt!1075048))))

(declare-fun getRuleFromTag!889 (LexerInterface!4749 List!36035 String!40284) Option!7054)

(assert (=> b!3191321 (= lt!1075048 (getRuleFromTag!889 thiss!18206 rules!2135 (tag!5678 (rule!7592 separatorToken!241))))))

(declare-fun lt!1075059 () Unit!50350)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!889 (LexerInterface!4749 List!36035 List!36033 Token!9686) Unit!50350)

(assert (=> b!3191321 (= lt!1075059 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!889 thiss!18206 rules!2135 lt!1075055 separatorToken!241))))

(assert (=> b!3191321 e!1989080))

(declare-fun res!1298108 () Bool)

(assert (=> b!3191321 (=> (not res!1298108) (not e!1989080))))

(assert (=> b!3191321 (= res!1298108 (isDefined!5512 lt!1075054))))

(assert (=> b!3191321 (= lt!1075054 (getRuleFromTag!889 thiss!18206 rules!2135 (tag!5678 (rule!7592 (h!41330 tokens!494)))))))

(declare-fun lt!1075044 () Unit!50350)

(assert (=> b!3191321 (= lt!1075044 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!889 thiss!18206 rules!2135 lt!1075051 (h!41330 tokens!494)))))

(declare-fun lt!1075053 () Unit!50350)

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!810 (LexerInterface!4749 List!36035 List!36034 Token!9686) Unit!50350)

(assert (=> b!3191321 (= lt!1075053 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!810 thiss!18206 rules!2135 tokens!494 (h!41330 tokens!494)))))

(declare-fun isEmpty!20043 (List!36033) Bool)

(declare-fun getSuffix!1376 (List!36033 List!36033) List!36033)

(assert (=> b!3191321 (isEmpty!20043 (getSuffix!1376 lt!1075051 lt!1075051))))

(declare-fun lt!1075052 () Unit!50350)

(declare-fun lemmaGetSuffixOnListWithItSelfIsEmpty!54 (List!36033) Unit!50350)

(assert (=> b!3191321 (= lt!1075052 (lemmaGetSuffixOnListWithItSelfIsEmpty!54 lt!1075051))))

(declare-fun b!3191322 () Bool)

(declare-fun tp!1008848 () Bool)

(assert (=> b!3191322 (= e!1989076 (and tp!1008848 (inv!48754 (tag!5678 (rule!7592 separatorToken!241))) (inv!48757 (transformation!5160 (rule!7592 separatorToken!241))) e!1989094))))

(assert (= (and start!299274 res!1298096) b!3191303))

(assert (= (and b!3191303 res!1298115) b!3191293))

(assert (= (and b!3191293 res!1298112) b!3191320))

(assert (= (and b!3191320 res!1298097) b!3191291))

(assert (= (and b!3191291 res!1298103) b!3191296))

(assert (= (and b!3191296 res!1298099) b!3191317))

(assert (= (and b!3191317 res!1298117) b!3191290))

(assert (= (and b!3191290 res!1298105) b!3191297))

(assert (= (and b!3191297 res!1298107) b!3191286))

(assert (= (and b!3191286 (not res!1298095)) b!3191309))

(assert (= (and b!3191309 (not res!1298109)) b!3191310))

(assert (= (and b!3191310 (not res!1298110)) b!3191305))

(assert (= (and b!3191305 (not res!1298098)) b!3191285))

(assert (= (and b!3191285 (not res!1298093)) b!3191315))

(assert (= (and b!3191315 (not res!1298100)) b!3191321))

(assert (= (and b!3191321 res!1298108) b!3191298))

(assert (= (and b!3191298 res!1298104) b!3191300))

(assert (= (and b!3191321 res!1298094) b!3191318))

(assert (= (and b!3191318 res!1298113) b!3191311))

(assert (= (and b!3191321 c!535850) b!3191295))

(assert (= (and b!3191321 (not c!535850)) b!3191288))

(assert (= (and b!3191295 res!1298102) b!3191312))

(assert (= (and b!3191321 (not res!1298111)) b!3191313))

(assert (= (and b!3191313 c!535851) b!3191294))

(assert (= (and b!3191313 (not c!535851)) b!3191304))

(assert (= (and b!3191313 (not res!1298116)) b!3191307))

(assert (= (and b!3191307 (not res!1298114)) b!3191292))

(assert (= (and b!3191292 (not res!1298106)) b!3191314))

(assert (= (and b!3191314 (not res!1298101)) b!3191287))

(assert (= b!3191302 b!3191319))

(assert (= b!3191299 b!3191302))

(assert (= (and start!299274 ((_ is Cons!35911) rules!2135)) b!3191299))

(assert (= b!3191322 b!3191316))

(assert (= b!3191301 b!3191322))

(assert (= start!299274 b!3191301))

(assert (= b!3191284 b!3191289))

(assert (= b!3191308 b!3191284))

(assert (= b!3191306 b!3191308))

(assert (= (and start!299274 ((_ is Cons!35910) tokens!494)) b!3191306))

(declare-fun m!3450579 () Bool)

(assert (=> b!3191284 m!3450579))

(declare-fun m!3450581 () Bool)

(assert (=> b!3191284 m!3450581))

(declare-fun m!3450583 () Bool)

(assert (=> b!3191320 m!3450583))

(declare-fun m!3450585 () Bool)

(assert (=> b!3191320 m!3450585))

(declare-fun m!3450587 () Bool)

(assert (=> b!3191291 m!3450587))

(declare-fun m!3450589 () Bool)

(assert (=> b!3191294 m!3450589))

(declare-fun m!3450591 () Bool)

(assert (=> b!3191290 m!3450591))

(declare-fun m!3450593 () Bool)

(assert (=> b!3191287 m!3450593))

(declare-fun m!3450595 () Bool)

(assert (=> b!3191287 m!3450595))

(assert (=> b!3191287 m!3450595))

(declare-fun m!3450597 () Bool)

(assert (=> b!3191287 m!3450597))

(declare-fun m!3450599 () Bool)

(assert (=> b!3191286 m!3450599))

(declare-fun m!3450601 () Bool)

(assert (=> b!3191286 m!3450601))

(declare-fun m!3450603 () Bool)

(assert (=> b!3191286 m!3450603))

(declare-fun m!3450605 () Bool)

(assert (=> b!3191286 m!3450605))

(declare-fun m!3450607 () Bool)

(assert (=> b!3191286 m!3450607))

(declare-fun m!3450609 () Bool)

(assert (=> b!3191322 m!3450609))

(declare-fun m!3450611 () Bool)

(assert (=> b!3191322 m!3450611))

(declare-fun m!3450613 () Bool)

(assert (=> b!3191317 m!3450613))

(declare-fun m!3450615 () Bool)

(assert (=> b!3191314 m!3450615))

(assert (=> b!3191314 m!3450615))

(declare-fun m!3450617 () Bool)

(assert (=> b!3191314 m!3450617))

(declare-fun m!3450619 () Bool)

(assert (=> b!3191314 m!3450619))

(declare-fun m!3450621 () Bool)

(assert (=> b!3191309 m!3450621))

(assert (=> b!3191309 m!3450621))

(declare-fun m!3450623 () Bool)

(assert (=> b!3191309 m!3450623))

(declare-fun m!3450625 () Bool)

(assert (=> b!3191307 m!3450625))

(declare-fun m!3450627 () Bool)

(assert (=> b!3191307 m!3450627))

(assert (=> b!3191307 m!3450625))

(declare-fun m!3450629 () Bool)

(assert (=> b!3191307 m!3450629))

(assert (=> b!3191307 m!3450627))

(declare-fun m!3450631 () Bool)

(assert (=> b!3191307 m!3450631))

(assert (=> b!3191307 m!3450631))

(declare-fun m!3450633 () Bool)

(assert (=> b!3191307 m!3450633))

(declare-fun m!3450635 () Bool)

(assert (=> b!3191306 m!3450635))

(declare-fun m!3450637 () Bool)

(assert (=> b!3191315 m!3450637))

(declare-fun m!3450639 () Bool)

(assert (=> b!3191315 m!3450639))

(declare-fun m!3450641 () Bool)

(assert (=> b!3191315 m!3450641))

(assert (=> b!3191315 m!3450637))

(declare-fun m!3450643 () Bool)

(assert (=> b!3191315 m!3450643))

(declare-fun m!3450645 () Bool)

(assert (=> b!3191315 m!3450645))

(declare-fun m!3450647 () Bool)

(assert (=> b!3191318 m!3450647))

(declare-fun m!3450649 () Bool)

(assert (=> b!3191318 m!3450649))

(declare-fun m!3450651 () Bool)

(assert (=> b!3191285 m!3450651))

(declare-fun m!3450653 () Bool)

(assert (=> b!3191321 m!3450653))

(declare-fun m!3450655 () Bool)

(assert (=> b!3191321 m!3450655))

(declare-fun m!3450657 () Bool)

(assert (=> b!3191321 m!3450657))

(declare-fun m!3450659 () Bool)

(assert (=> b!3191321 m!3450659))

(declare-fun m!3450661 () Bool)

(assert (=> b!3191321 m!3450661))

(declare-fun m!3450663 () Bool)

(assert (=> b!3191321 m!3450663))

(declare-fun m!3450665 () Bool)

(assert (=> b!3191321 m!3450665))

(declare-fun m!3450667 () Bool)

(assert (=> b!3191321 m!3450667))

(declare-fun m!3450669 () Bool)

(assert (=> b!3191321 m!3450669))

(declare-fun m!3450671 () Bool)

(assert (=> b!3191321 m!3450671))

(declare-fun m!3450673 () Bool)

(assert (=> b!3191321 m!3450673))

(assert (=> b!3191321 m!3450655))

(declare-fun m!3450675 () Bool)

(assert (=> b!3191321 m!3450675))

(declare-fun m!3450677 () Bool)

(assert (=> b!3191321 m!3450677))

(declare-fun m!3450679 () Bool)

(assert (=> b!3191321 m!3450679))

(declare-fun m!3450681 () Bool)

(assert (=> b!3191321 m!3450681))

(declare-fun m!3450683 () Bool)

(assert (=> b!3191321 m!3450683))

(declare-fun m!3450685 () Bool)

(assert (=> b!3191321 m!3450685))

(assert (=> b!3191321 m!3450667))

(declare-fun m!3450687 () Bool)

(assert (=> b!3191292 m!3450687))

(assert (=> b!3191292 m!3450687))

(declare-fun m!3450689 () Bool)

(assert (=> b!3191292 m!3450689))

(declare-fun m!3450691 () Bool)

(assert (=> b!3191292 m!3450691))

(assert (=> b!3191292 m!3450691))

(declare-fun m!3450693 () Bool)

(assert (=> b!3191292 m!3450693))

(declare-fun m!3450695 () Bool)

(assert (=> b!3191303 m!3450695))

(declare-fun m!3450697 () Bool)

(assert (=> b!3191313 m!3450697))

(declare-fun m!3450699 () Bool)

(assert (=> b!3191313 m!3450699))

(declare-fun m!3450701 () Bool)

(assert (=> b!3191313 m!3450701))

(declare-fun m!3450703 () Bool)

(assert (=> b!3191313 m!3450703))

(declare-fun m!3450705 () Bool)

(assert (=> b!3191313 m!3450705))

(assert (=> b!3191313 m!3450697))

(declare-fun m!3450707 () Bool)

(assert (=> b!3191313 m!3450707))

(declare-fun m!3450709 () Bool)

(assert (=> b!3191313 m!3450709))

(declare-fun m!3450711 () Bool)

(assert (=> b!3191298 m!3450711))

(declare-fun m!3450713 () Bool)

(assert (=> b!3191298 m!3450713))

(declare-fun m!3450715 () Bool)

(assert (=> start!299274 m!3450715))

(declare-fun m!3450717 () Bool)

(assert (=> b!3191295 m!3450717))

(declare-fun m!3450719 () Bool)

(assert (=> b!3191295 m!3450719))

(declare-fun m!3450721 () Bool)

(assert (=> b!3191293 m!3450721))

(declare-fun m!3450723 () Bool)

(assert (=> b!3191305 m!3450723))

(declare-fun m!3450725 () Bool)

(assert (=> b!3191305 m!3450725))

(declare-fun m!3450727 () Bool)

(assert (=> b!3191305 m!3450727))

(declare-fun m!3450729 () Bool)

(assert (=> b!3191302 m!3450729))

(declare-fun m!3450731 () Bool)

(assert (=> b!3191302 m!3450731))

(declare-fun m!3450733 () Bool)

(assert (=> b!3191308 m!3450733))

(declare-fun m!3450735 () Bool)

(assert (=> b!3191310 m!3450735))

(declare-fun m!3450737 () Bool)

(assert (=> b!3191301 m!3450737))

(check-sat (not b!3191303) (not b!3191293) (not b!3191318) b_and!211471 (not b!3191290) (not b!3191322) b_and!211477 (not b_next!85163) b_and!211475 (not b!3191314) (not b!3191291) (not b!3191292) (not b!3191294) (not b!3191306) (not b!3191298) (not b!3191301) (not b!3191299) (not b!3191302) (not b_next!85165) (not b!3191286) (not b_next!85167) (not b!3191315) b_and!211473 (not b!3191308) (not b!3191309) (not b!3191305) (not b!3191321) b_and!211467 (not b!3191285) (not b!3191310) (not b_next!85171) (not b!3191295) (not b!3191317) (not b!3191287) (not b_next!85161) (not start!299274) (not b!3191313) (not b!3191307) (not b!3191284) b_and!211469 (not b_next!85169) (not b!3191320))
(check-sat (not b_next!85165) (not b_next!85167) b_and!211471 b_and!211473 b_and!211467 b_and!211477 (not b_next!85163) (not b_next!85171) b_and!211475 (not b_next!85161) b_and!211469 (not b_next!85169))
