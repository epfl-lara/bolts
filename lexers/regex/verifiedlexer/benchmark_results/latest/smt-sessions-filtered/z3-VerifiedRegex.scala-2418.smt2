; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!126778 () Bool)

(assert start!126778)

(declare-fun b!1393158 () Bool)

(declare-fun b_free!33835 () Bool)

(declare-fun b_next!34539 () Bool)

(assert (=> b!1393158 (= b_free!33835 (not b_next!34539))))

(declare-fun tp!397470 () Bool)

(declare-fun b_and!93275 () Bool)

(assert (=> b!1393158 (= tp!397470 b_and!93275)))

(declare-fun b_free!33837 () Bool)

(declare-fun b_next!34541 () Bool)

(assert (=> b!1393158 (= b_free!33837 (not b_next!34541))))

(declare-fun tp!397469 () Bool)

(declare-fun b_and!93277 () Bool)

(assert (=> b!1393158 (= tp!397469 b_and!93277)))

(declare-fun b!1393154 () Bool)

(declare-fun b_free!33839 () Bool)

(declare-fun b_next!34543 () Bool)

(assert (=> b!1393154 (= b_free!33839 (not b_next!34543))))

(declare-fun tp!397474 () Bool)

(declare-fun b_and!93279 () Bool)

(assert (=> b!1393154 (= tp!397474 b_and!93279)))

(declare-fun b_free!33841 () Bool)

(declare-fun b_next!34545 () Bool)

(assert (=> b!1393154 (= b_free!33841 (not b_next!34545))))

(declare-fun tp!397478 () Bool)

(declare-fun b_and!93281 () Bool)

(assert (=> b!1393154 (= tp!397478 b_and!93281)))

(declare-fun b!1393127 () Bool)

(declare-fun b_free!33843 () Bool)

(declare-fun b_next!34547 () Bool)

(assert (=> b!1393127 (= b_free!33843 (not b_next!34547))))

(declare-fun tp!397479 () Bool)

(declare-fun b_and!93283 () Bool)

(assert (=> b!1393127 (= tp!397479 b_and!93283)))

(declare-fun b_free!33845 () Bool)

(declare-fun b_next!34549 () Bool)

(assert (=> b!1393127 (= b_free!33845 (not b_next!34549))))

(declare-fun tp!397480 () Bool)

(declare-fun b_and!93285 () Bool)

(assert (=> b!1393127 (= tp!397480 b_and!93285)))

(declare-fun b!1393148 () Bool)

(assert (=> b!1393148 true))

(assert (=> b!1393148 true))

(declare-fun b!1393116 () Bool)

(assert (=> b!1393116 true))

(declare-fun b!1393117 () Bool)

(assert (=> b!1393117 true))

(declare-fun bs!337722 () Bool)

(declare-fun b!1393133 () Bool)

(assert (= bs!337722 (and b!1393133 b!1393117)))

(declare-fun lambda!60307 () Int)

(declare-fun lambda!60306 () Int)

(assert (=> bs!337722 (not (= lambda!60307 lambda!60306))))

(assert (=> b!1393133 true))

(declare-fun b!1393114 () Bool)

(declare-fun res!628941 () Bool)

(declare-fun e!889670 () Bool)

(assert (=> b!1393114 (=> (not res!628941) (not e!889670))))

(declare-datatypes ((List!14186 0))(
  ( (Nil!14120) (Cons!14120 (h!19521 (_ BitVec 16)) (t!122567 List!14186)) )
))
(declare-datatypes ((TokenValue!2535 0))(
  ( (FloatLiteralValue!5070 (text!18190 List!14186)) (TokenValueExt!2534 (__x!8899 Int)) (Broken!12675 (value!79289 List!14186)) (Object!2600) (End!2535) (Def!2535) (Underscore!2535) (Match!2535) (Else!2535) (Error!2535) (Case!2535) (If!2535) (Extends!2535) (Abstract!2535) (Class!2535) (Val!2535) (DelimiterValue!5070 (del!2595 List!14186)) (KeywordValue!2541 (value!79290 List!14186)) (CommentValue!5070 (value!79291 List!14186)) (WhitespaceValue!5070 (value!79292 List!14186)) (IndentationValue!2535 (value!79293 List!14186)) (String!16910) (Int32!2535) (Broken!12676 (value!79294 List!14186)) (Boolean!2536) (Unit!20396) (OperatorValue!2538 (op!2595 List!14186)) (IdentifierValue!5070 (value!79295 List!14186)) (IdentifierValue!5071 (value!79296 List!14186)) (WhitespaceValue!5071 (value!79297 List!14186)) (True!5070) (False!5070) (Broken!12677 (value!79298 List!14186)) (Broken!12678 (value!79299 List!14186)) (True!5071) (RightBrace!2535) (RightBracket!2535) (Colon!2535) (Null!2535) (Comma!2535) (LeftBracket!2535) (False!5071) (LeftBrace!2535) (ImaginaryLiteralValue!2535 (text!18191 List!14186)) (StringLiteralValue!7605 (value!79300 List!14186)) (EOFValue!2535 (value!79301 List!14186)) (IdentValue!2535 (value!79302 List!14186)) (DelimiterValue!5071 (value!79303 List!14186)) (DedentValue!2535 (value!79304 List!14186)) (NewLineValue!2535 (value!79305 List!14186)) (IntegerValue!7605 (value!79306 (_ BitVec 32)) (text!18192 List!14186)) (IntegerValue!7606 (value!79307 Int) (text!18193 List!14186)) (Times!2535) (Or!2535) (Equal!2535) (Minus!2535) (Broken!12679 (value!79308 List!14186)) (And!2535) (Div!2535) (LessEqual!2535) (Mod!2535) (Concat!6294) (Not!2535) (Plus!2535) (SpaceValue!2535 (value!79309 List!14186)) (IntegerValue!7607 (value!79310 Int) (text!18194 List!14186)) (StringLiteralValue!7606 (text!18195 List!14186)) (FloatLiteralValue!5071 (text!18196 List!14186)) (BytesLiteralValue!2535 (value!79311 List!14186)) (CommentValue!5071 (value!79312 List!14186)) (StringLiteralValue!7607 (value!79313 List!14186)) (ErrorTokenValue!2535 (msg!2596 List!14186)) )
))
(declare-datatypes ((C!7808 0))(
  ( (C!7809 (val!4464 Int)) )
))
(declare-datatypes ((List!14187 0))(
  ( (Nil!14121) (Cons!14121 (h!19522 C!7808) (t!122568 List!14187)) )
))
(declare-datatypes ((IArray!9305 0))(
  ( (IArray!9306 (innerList!4710 List!14187)) )
))
(declare-datatypes ((Conc!4650 0))(
  ( (Node!4650 (left!12062 Conc!4650) (right!12392 Conc!4650) (csize!9530 Int) (cheight!4861 Int)) (Leaf!7069 (xs!7377 IArray!9305) (csize!9531 Int)) (Empty!4650) )
))
(declare-datatypes ((BalanceConc!9240 0))(
  ( (BalanceConc!9241 (c!229416 Conc!4650)) )
))
(declare-datatypes ((Regex!3759 0))(
  ( (ElementMatch!3759 (c!229417 C!7808)) (Concat!6295 (regOne!8030 Regex!3759) (regTwo!8030 Regex!3759)) (EmptyExpr!3759) (Star!3759 (reg!4088 Regex!3759)) (EmptyLang!3759) (Union!3759 (regOne!8031 Regex!3759) (regTwo!8031 Regex!3759)) )
))
(declare-datatypes ((String!16911 0))(
  ( (String!16912 (value!79314 String)) )
))
(declare-datatypes ((TokenValueInjection!4730 0))(
  ( (TokenValueInjection!4731 (toValue!3736 Int) (toChars!3595 Int)) )
))
(declare-datatypes ((Rule!4690 0))(
  ( (Rule!4691 (regex!2445 Regex!3759) (tag!2707 String!16911) (isSeparator!2445 Bool) (transformation!2445 TokenValueInjection!4730)) )
))
(declare-datatypes ((Token!4552 0))(
  ( (Token!4553 (value!79315 TokenValue!2535) (rule!4208 Rule!4690) (size!11613 Int) (originalCharacters!3307 List!14187)) )
))
(declare-fun t1!34 () Token!4552)

(declare-fun t2!34 () Token!4552)

(assert (=> b!1393114 (= res!628941 (not (= (isSeparator!2445 (rule!4208 t1!34)) (isSeparator!2445 (rule!4208 t2!34)))))))

(declare-fun b!1393115 () Bool)

(declare-fun e!889679 () Bool)

(declare-fun e!889660 () Bool)

(assert (=> b!1393115 (= e!889679 e!889660)))

(declare-fun res!628935 () Bool)

(assert (=> b!1393115 (=> res!628935 e!889660)))

(declare-datatypes ((List!14188 0))(
  ( (Nil!14122) (Cons!14122 (h!19523 Rule!4690) (t!122569 List!14188)) )
))
(declare-fun rules!2550 () List!14188)

(declare-fun lt!463755 () List!14187)

(declare-datatypes ((LexerInterface!2140 0))(
  ( (LexerInterfaceExt!2137 (__x!8900 Int)) (Lexer!2138) )
))
(declare-fun thiss!19762 () LexerInterface!2140)

(declare-datatypes ((tuple2!13730 0))(
  ( (tuple2!13731 (_1!7751 Token!4552) (_2!7751 List!14187)) )
))
(declare-datatypes ((Option!2708 0))(
  ( (None!2707) (Some!2707 (v!21603 tuple2!13730)) )
))
(declare-fun maxPrefix!1114 (LexerInterface!2140 List!14188 List!14187) Option!2708)

(assert (=> b!1393115 (= res!628935 (not (= (maxPrefix!1114 thiss!19762 rules!2550 lt!463755) (Some!2707 (tuple2!13731 t2!34 Nil!14121)))))))

(declare-fun lt!463743 () BalanceConc!9240)

(declare-fun list!5489 (BalanceConc!9240) List!14187)

(assert (=> b!1393115 (= lt!463755 (list!5489 lt!463743))))

(declare-fun e!889683 () Bool)

(declare-fun e!889675 () Bool)

(assert (=> b!1393116 (= e!889683 e!889675)))

(declare-fun res!628946 () Bool)

(assert (=> b!1393116 (=> res!628946 e!889675)))

(declare-fun lambda!60304 () Int)

(declare-fun lambda!60305 () Int)

(declare-datatypes ((List!14189 0))(
  ( (Nil!14123) (Cons!14123 (h!19524 Regex!3759) (t!122570 List!14189)) )
))
(declare-fun exists!534 (List!14189 Int) Bool)

(declare-fun map!3128 (List!14188 Int) List!14189)

(assert (=> b!1393116 (= res!628946 (not (exists!534 (map!3128 rules!2550 lambda!60304) lambda!60305)))))

(declare-fun lt!463747 () List!14189)

(assert (=> b!1393116 (exists!534 lt!463747 lambda!60305)))

(declare-datatypes ((Unit!20397 0))(
  ( (Unit!20398) )
))
(declare-fun lt!463757 () Unit!20397)

(declare-fun lt!463756 () Regex!3759)

(declare-fun lt!463742 () List!14187)

(declare-fun matchRGenUnionSpec!170 (Regex!3759 List!14189 List!14187) Unit!20397)

(assert (=> b!1393116 (= lt!463757 (matchRGenUnionSpec!170 lt!463756 lt!463747 lt!463742))))

(assert (=> b!1393116 (= lt!463747 (map!3128 rules!2550 lambda!60304))))

(declare-fun e!889687 () Bool)

(declare-fun e!889674 () Bool)

(assert (=> b!1393117 (= e!889687 e!889674)))

(declare-fun res!628934 () Bool)

(assert (=> b!1393117 (=> res!628934 e!889674)))

(declare-fun exists!535 (List!14188 Int) Bool)

(assert (=> b!1393117 (= res!628934 (not (exists!535 rules!2550 lambda!60306)))))

(assert (=> b!1393117 (exists!535 rules!2550 lambda!60306)))

(declare-fun lt!463740 () Regex!3759)

(declare-fun lt!463750 () Unit!20397)

(declare-fun lemmaMapContains!156 (List!14188 Int Regex!3759) Unit!20397)

(assert (=> b!1393117 (= lt!463750 (lemmaMapContains!156 rules!2550 lambda!60304 lt!463740))))

(declare-fun b!1393118 () Bool)

(declare-fun e!889682 () Unit!20397)

(declare-fun Unit!20399 () Unit!20397)

(assert (=> b!1393118 (= e!889682 Unit!20399)))

(declare-fun b!1393119 () Bool)

(assert (=> b!1393119 (= e!889675 e!889687)))

(declare-fun res!628927 () Bool)

(assert (=> b!1393119 (=> res!628927 e!889687)))

(declare-fun contains!2717 (List!14189 Regex!3759) Bool)

(assert (=> b!1393119 (= res!628927 (not (contains!2717 (map!3128 rules!2550 lambda!60304) lt!463740)))))

(declare-fun getWitness!422 (List!14189 Int) Regex!3759)

(assert (=> b!1393119 (= lt!463740 (getWitness!422 (map!3128 rules!2550 lambda!60304) lambda!60305))))

(declare-fun b!1393120 () Bool)

(declare-fun res!628949 () Bool)

(declare-fun e!889666 () Bool)

(assert (=> b!1393120 (=> (not res!628949) (not e!889666))))

(declare-fun separableTokensPredicate!423 (LexerInterface!2140 Token!4552 Token!4552 List!14188) Bool)

(assert (=> b!1393120 (= res!628949 (not (separableTokensPredicate!423 thiss!19762 t1!34 t2!34 rules!2550)))))

(declare-fun b!1393121 () Bool)

(declare-fun res!628939 () Bool)

(declare-fun e!889685 () Bool)

(assert (=> b!1393121 (=> res!628939 e!889685)))

(declare-datatypes ((List!14190 0))(
  ( (Nil!14124) (Cons!14124 (h!19525 Token!4552) (t!122571 List!14190)) )
))
(declare-fun lt!463762 () List!14190)

(declare-fun lt!463761 () BalanceConc!9240)

(declare-datatypes ((tuple2!13732 0))(
  ( (tuple2!13733 (_1!7752 List!14190) (_2!7752 List!14187)) )
))
(declare-fun lexList!654 (LexerInterface!2140 List!14188 List!14187) tuple2!13732)

(assert (=> b!1393121 (= res!628939 (not (= (lexList!654 thiss!19762 rules!2550 (list!5489 lt!463761)) (tuple2!13733 lt!463762 Nil!14121))))))

(declare-fun e!889671 () Bool)

(declare-fun tp!397475 () Bool)

(declare-fun b!1393122 () Bool)

(declare-fun e!889665 () Bool)

(declare-fun inv!18457 (String!16911) Bool)

(declare-fun inv!18460 (TokenValueInjection!4730) Bool)

(assert (=> b!1393122 (= e!889671 (and tp!397475 (inv!18457 (tag!2707 (h!19523 rules!2550))) (inv!18460 (transformation!2445 (h!19523 rules!2550))) e!889665))))

(declare-fun e!889667 () Bool)

(declare-fun e!889673 () Bool)

(declare-fun tp!397473 () Bool)

(declare-fun b!1393123 () Bool)

(assert (=> b!1393123 (= e!889667 (and tp!397473 (inv!18457 (tag!2707 (rule!4208 t1!34))) (inv!18460 (transformation!2445 (rule!4208 t1!34))) e!889673))))

(declare-fun b!1393124 () Bool)

(declare-fun res!628960 () Bool)

(assert (=> b!1393124 (=> res!628960 e!889660)))

(declare-fun lt!463754 () Rule!4690)

(declare-fun contains!2718 (List!14188 Rule!4690) Bool)

(assert (=> b!1393124 (= res!628960 (not (contains!2718 rules!2550 lt!463754)))))

(declare-fun b!1393125 () Bool)

(declare-fun res!628942 () Bool)

(assert (=> b!1393125 (=> (not res!628942) (not e!889670))))

(declare-fun rulesProduceIndividualToken!1109 (LexerInterface!2140 List!14188 Token!4552) Bool)

(assert (=> b!1393125 (= res!628942 (rulesProduceIndividualToken!1109 thiss!19762 rules!2550 t2!34))))

(declare-fun b!1393126 () Bool)

(declare-fun res!628928 () Bool)

(declare-fun e!889680 () Bool)

(assert (=> b!1393126 (=> res!628928 e!889680)))

(declare-fun matchR!1750 (Regex!3759 List!14187) Bool)

(assert (=> b!1393126 (= res!628928 (not (matchR!1750 (regex!2445 (rule!4208 t2!34)) lt!463755)))))

(assert (=> b!1393127 (= e!889673 (and tp!397479 tp!397480))))

(declare-fun b!1393128 () Bool)

(declare-fun res!628950 () Bool)

(declare-fun e!889668 () Bool)

(assert (=> b!1393128 (=> res!628950 e!889668)))

(declare-fun lt!463738 () C!7808)

(declare-fun contains!2719 (List!14187 C!7808) Bool)

(declare-fun usedCharacters!256 (Regex!3759) List!14187)

(assert (=> b!1393128 (= res!628950 (contains!2719 (usedCharacters!256 (regex!2445 (rule!4208 t2!34))) lt!463738))))

(declare-fun b!1393129 () Bool)

(assert (=> b!1393129 (= e!889685 e!889679)))

(declare-fun res!628945 () Bool)

(assert (=> b!1393129 (=> res!628945 e!889679)))

(declare-datatypes ((IArray!9307 0))(
  ( (IArray!9308 (innerList!4711 List!14190)) )
))
(declare-datatypes ((Conc!4651 0))(
  ( (Node!4651 (left!12063 Conc!4651) (right!12393 Conc!4651) (csize!9532 Int) (cheight!4862 Int)) (Leaf!7070 (xs!7378 IArray!9307) (csize!9533 Int)) (Empty!4651) )
))
(declare-datatypes ((BalanceConc!9242 0))(
  ( (BalanceConc!9243 (c!229418 Conc!4651)) )
))
(declare-datatypes ((tuple2!13734 0))(
  ( (tuple2!13735 (_1!7753 BalanceConc!9242) (_2!7753 BalanceConc!9240)) )
))
(declare-fun lt!463758 () tuple2!13734)

(declare-fun lt!463748 () List!14190)

(declare-fun list!5490 (BalanceConc!9242) List!14190)

(assert (=> b!1393129 (= res!628945 (not (= (list!5490 (_1!7753 lt!463758)) lt!463748)))))

(assert (=> b!1393129 (= lt!463748 (Cons!14124 t2!34 Nil!14124))))

(declare-fun lt!463737 () BalanceConc!9240)

(declare-fun lex!965 (LexerInterface!2140 List!14188 BalanceConc!9240) tuple2!13734)

(assert (=> b!1393129 (= lt!463758 (lex!965 thiss!19762 rules!2550 lt!463737))))

(declare-fun print!904 (LexerInterface!2140 BalanceConc!9242) BalanceConc!9240)

(declare-fun singletonSeq!1096 (Token!4552) BalanceConc!9242)

(assert (=> b!1393129 (= lt!463737 (print!904 thiss!19762 (singletonSeq!1096 t2!34)))))

(declare-fun b!1393130 () Bool)

(declare-fun e!889676 () Bool)

(assert (=> b!1393130 (= e!889676 e!889683)))

(declare-fun res!628936 () Bool)

(assert (=> b!1393130 (=> res!628936 e!889683)))

(declare-fun lt!463753 () List!14187)

(declare-fun lt!463741 () C!7808)

(assert (=> b!1393130 (= res!628936 (not (contains!2719 lt!463753 lt!463741)))))

(declare-fun lt!463746 () BalanceConc!9240)

(declare-fun apply!3565 (BalanceConc!9240 Int) C!7808)

(assert (=> b!1393130 (= lt!463741 (apply!3565 lt!463746 0))))

(declare-fun b!1393131 () Bool)

(declare-fun res!628954 () Bool)

(assert (=> b!1393131 (=> res!628954 e!889683)))

(assert (=> b!1393131 (= res!628954 (not (contains!2719 lt!463742 lt!463741)))))

(declare-fun b!1393132 () Bool)

(declare-fun res!628947 () Bool)

(assert (=> b!1393132 (=> (not res!628947) (not e!889670))))

(declare-fun isEmpty!8564 (List!14188) Bool)

(assert (=> b!1393132 (= res!628947 (not (isEmpty!8564 rules!2550)))))

(assert (=> b!1393133 (= e!889660 e!889680)))

(declare-fun res!628951 () Bool)

(assert (=> b!1393133 (=> res!628951 e!889680)))

(declare-fun lt!463739 () List!14187)

(assert (=> b!1393133 (= res!628951 (not (matchR!1750 (regex!2445 (rule!4208 t1!34)) lt!463739)))))

(declare-fun lt!463752 () Unit!20397)

(declare-fun forallContained!640 (List!14188 Int Rule!4690) Unit!20397)

(assert (=> b!1393133 (= lt!463752 (forallContained!640 rules!2550 lambda!60307 (rule!4208 t2!34)))))

(declare-fun lt!463749 () Unit!20397)

(assert (=> b!1393133 (= lt!463749 (forallContained!640 rules!2550 lambda!60307 (rule!4208 t1!34)))))

(declare-fun lt!463751 () Unit!20397)

(assert (=> b!1393133 (= lt!463751 (forallContained!640 rules!2550 lambda!60307 lt!463754))))

(declare-fun res!628956 () Bool)

(assert (=> start!126778 (=> (not res!628956) (not e!889670))))

(get-info :version)

(assert (=> start!126778 (= res!628956 ((_ is Lexer!2138) thiss!19762))))

(assert (=> start!126778 e!889670))

(assert (=> start!126778 true))

(declare-fun e!889663 () Bool)

(assert (=> start!126778 e!889663))

(declare-fun e!889688 () Bool)

(declare-fun inv!18461 (Token!4552) Bool)

(assert (=> start!126778 (and (inv!18461 t1!34) e!889688)))

(declare-fun e!889661 () Bool)

(assert (=> start!126778 (and (inv!18461 t2!34) e!889661)))

(declare-fun b!1393134 () Bool)

(assert (=> b!1393134 (= e!889680 e!889668)))

(declare-fun res!628948 () Bool)

(assert (=> b!1393134 (=> res!628948 e!889668)))

(declare-fun lt!463760 () Bool)

(assert (=> b!1393134 (= res!628948 lt!463760)))

(declare-fun lt!463745 () Unit!20397)

(assert (=> b!1393134 (= lt!463745 e!889682)))

(declare-fun c!229415 () Bool)

(assert (=> b!1393134 (= c!229415 lt!463760)))

(assert (=> b!1393134 (= lt!463760 (not (contains!2719 (usedCharacters!256 (regex!2445 (rule!4208 t1!34))) lt!463741)))))

(declare-fun b!1393135 () Bool)

(declare-fun e!889681 () Bool)

(assert (=> b!1393135 (= e!889681 e!889676)))

(declare-fun res!628958 () Bool)

(assert (=> b!1393135 (=> res!628958 e!889676)))

(declare-fun ++!3672 (List!14187 List!14187) List!14187)

(declare-fun getSuffix!605 (List!14187 List!14187) List!14187)

(assert (=> b!1393135 (= res!628958 (not (= lt!463742 (++!3672 lt!463753 (getSuffix!605 lt!463742 lt!463753)))))))

(declare-fun lambda!60303 () Int)

(declare-fun pickWitness!212 (Int) List!14187)

(assert (=> b!1393135 (= lt!463742 (pickWitness!212 lambda!60303))))

(declare-fun b!1393136 () Bool)

(assert (=> b!1393136 (= e!889674 e!889685)))

(declare-fun res!628944 () Bool)

(assert (=> b!1393136 (=> res!628944 e!889685)))

(declare-fun lt!463759 () tuple2!13734)

(assert (=> b!1393136 (= res!628944 (not (= (list!5490 (_1!7753 lt!463759)) lt!463762)))))

(assert (=> b!1393136 (= lt!463762 (Cons!14124 t1!34 Nil!14124))))

(assert (=> b!1393136 (= lt!463759 (lex!965 thiss!19762 rules!2550 lt!463761))))

(assert (=> b!1393136 (= lt!463761 (print!904 thiss!19762 (singletonSeq!1096 t1!34)))))

(declare-fun getWitness!423 (List!14188 Int) Rule!4690)

(assert (=> b!1393136 (= lt!463754 (getWitness!423 rules!2550 lambda!60306))))

(declare-fun b!1393137 () Bool)

(declare-fun res!628943 () Bool)

(assert (=> b!1393137 (=> (not res!628943) (not e!889670))))

(declare-fun rulesInvariant!2010 (LexerInterface!2140 List!14188) Bool)

(assert (=> b!1393137 (= res!628943 (rulesInvariant!2010 thiss!19762 rules!2550))))

(declare-fun b!1393138 () Bool)

(declare-fun res!628926 () Bool)

(assert (=> b!1393138 (=> res!628926 e!889683)))

(assert (=> b!1393138 (= res!628926 (not (contains!2719 lt!463753 lt!463738)))))

(declare-fun b!1393139 () Bool)

(assert (=> b!1393139 (= e!889668 true)))

(assert (=> b!1393139 false))

(declare-fun lt!463744 () Unit!20397)

(declare-fun lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!190 (Regex!3759 List!14187 C!7808) Unit!20397)

(declare-fun head!2551 (List!14187) C!7808)

(assert (=> b!1393139 (= lt!463744 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!190 (regex!2445 (rule!4208 t2!34)) lt!463755 (head!2551 lt!463755)))))

(declare-fun b!1393140 () Bool)

(declare-fun res!628959 () Bool)

(assert (=> b!1393140 (=> res!628959 e!889683)))

(assert (=> b!1393140 (= res!628959 (not (matchR!1750 lt!463756 lt!463742)))))

(declare-fun b!1393141 () Bool)

(declare-fun tp!397471 () Bool)

(assert (=> b!1393141 (= e!889663 (and e!889671 tp!397471))))

(declare-fun b!1393142 () Bool)

(declare-fun res!628940 () Bool)

(assert (=> b!1393142 (=> res!628940 e!889679)))

(declare-fun isEmpty!8565 (BalanceConc!9240) Bool)

(assert (=> b!1393142 (= res!628940 (not (isEmpty!8565 (_2!7753 lt!463758))))))

(declare-fun tp!397476 () Bool)

(declare-fun e!889664 () Bool)

(declare-fun b!1393143 () Bool)

(declare-fun inv!21 (TokenValue!2535) Bool)

(assert (=> b!1393143 (= e!889661 (and (inv!21 (value!79315 t2!34)) e!889664 tp!397476))))

(declare-fun tp!397472 () Bool)

(declare-fun b!1393144 () Bool)

(assert (=> b!1393144 (= e!889688 (and (inv!21 (value!79315 t1!34)) e!889667 tp!397472))))

(declare-fun b!1393145 () Bool)

(declare-fun res!628952 () Bool)

(assert (=> b!1393145 (=> res!628952 e!889685)))

(assert (=> b!1393145 (= res!628952 (not (isEmpty!8565 (_2!7753 lt!463759))))))

(declare-fun b!1393146 () Bool)

(declare-fun res!628929 () Bool)

(assert (=> b!1393146 (=> res!628929 e!889679)))

(assert (=> b!1393146 (= res!628929 (not (= (lexList!654 thiss!19762 rules!2550 (list!5489 lt!463737)) (tuple2!13733 lt!463748 Nil!14121))))))

(declare-fun b!1393147 () Bool)

(declare-fun res!628931 () Bool)

(assert (=> b!1393147 (=> res!628931 e!889660)))

(assert (=> b!1393147 (= res!628931 (not (contains!2718 rules!2550 (rule!4208 t2!34))))))

(declare-fun e!889662 () Bool)

(assert (=> b!1393148 (= e!889662 (not e!889681))))

(declare-fun res!628933 () Bool)

(assert (=> b!1393148 (=> res!628933 e!889681)))

(declare-fun Exists!909 (Int) Bool)

(assert (=> b!1393148 (= res!628933 (not (Exists!909 lambda!60303)))))

(assert (=> b!1393148 (Exists!909 lambda!60303)))

(declare-fun lt!463763 () Unit!20397)

(declare-fun lemmaPrefixMatchThenExistsStringThatMatches!227 (Regex!3759 List!14187) Unit!20397)

(assert (=> b!1393148 (= lt!463763 (lemmaPrefixMatchThenExistsStringThatMatches!227 lt!463756 lt!463753))))

(declare-fun b!1393149 () Bool)

(declare-fun res!628955 () Bool)

(assert (=> b!1393149 (=> res!628955 e!889685)))

(assert (=> b!1393149 (= res!628955 (not (= (maxPrefix!1114 thiss!19762 rules!2550 lt!463739) (Some!2707 (tuple2!13731 t1!34 Nil!14121)))))))

(declare-fun b!1393150 () Bool)

(declare-fun Unit!20400 () Unit!20397)

(assert (=> b!1393150 (= e!889682 Unit!20400)))

(declare-fun lt!463764 () Unit!20397)

(assert (=> b!1393150 (= lt!463764 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!190 (regex!2445 (rule!4208 t1!34)) lt!463739 (head!2551 lt!463739)))))

(assert (=> b!1393150 false))

(declare-fun b!1393151 () Bool)

(declare-fun res!628953 () Bool)

(assert (=> b!1393151 (=> (not res!628953) (not e!889666))))

(declare-fun sepAndNonSepRulesDisjointChars!818 (List!14188 List!14188) Bool)

(assert (=> b!1393151 (= res!628953 (sepAndNonSepRulesDisjointChars!818 rules!2550 rules!2550))))

(declare-fun tp!397477 () Bool)

(declare-fun b!1393152 () Bool)

(declare-fun e!889677 () Bool)

(assert (=> b!1393152 (= e!889664 (and tp!397477 (inv!18457 (tag!2707 (rule!4208 t2!34))) (inv!18460 (transformation!2445 (rule!4208 t2!34))) e!889677))))

(declare-fun b!1393153 () Bool)

(declare-fun res!628930 () Bool)

(assert (=> b!1393153 (=> res!628930 e!889685)))

(assert (=> b!1393153 (= res!628930 (not (contains!2718 rules!2550 (rule!4208 t1!34))))))

(assert (=> b!1393154 (= e!889677 (and tp!397474 tp!397478))))

(declare-fun b!1393155 () Bool)

(declare-fun res!628937 () Bool)

(assert (=> b!1393155 (=> res!628937 e!889683)))

(assert (=> b!1393155 (= res!628937 (not (contains!2719 lt!463742 lt!463738)))))

(declare-fun b!1393156 () Bool)

(assert (=> b!1393156 (= e!889666 e!889662)))

(declare-fun res!628938 () Bool)

(assert (=> b!1393156 (=> (not res!628938) (not e!889662))))

(declare-fun prefixMatch!268 (Regex!3759 List!14187) Bool)

(assert (=> b!1393156 (= res!628938 (prefixMatch!268 lt!463756 lt!463753))))

(declare-fun rulesRegex!328 (LexerInterface!2140 List!14188) Regex!3759)

(assert (=> b!1393156 (= lt!463756 (rulesRegex!328 thiss!19762 rules!2550))))

(assert (=> b!1393156 (= lt!463753 (++!3672 lt!463739 (Cons!14121 lt!463738 Nil!14121)))))

(assert (=> b!1393156 (= lt!463738 (apply!3565 lt!463743 0))))

(assert (=> b!1393156 (= lt!463739 (list!5489 lt!463746))))

(declare-fun charsOf!1417 (Token!4552) BalanceConc!9240)

(assert (=> b!1393156 (= lt!463746 (charsOf!1417 t1!34))))

(declare-fun b!1393157 () Bool)

(assert (=> b!1393157 (= e!889670 e!889666)))

(declare-fun res!628957 () Bool)

(assert (=> b!1393157 (=> (not res!628957) (not e!889666))))

(declare-fun size!11614 (BalanceConc!9240) Int)

(assert (=> b!1393157 (= res!628957 (> (size!11614 lt!463743) 0))))

(assert (=> b!1393157 (= lt!463743 (charsOf!1417 t2!34))))

(assert (=> b!1393158 (= e!889665 (and tp!397470 tp!397469))))

(declare-fun b!1393159 () Bool)

(declare-fun res!628932 () Bool)

(assert (=> b!1393159 (=> (not res!628932) (not e!889670))))

(assert (=> b!1393159 (= res!628932 (rulesProduceIndividualToken!1109 thiss!19762 rules!2550 t1!34))))

(assert (= (and start!126778 res!628956) b!1393132))

(assert (= (and b!1393132 res!628947) b!1393137))

(assert (= (and b!1393137 res!628943) b!1393159))

(assert (= (and b!1393159 res!628932) b!1393125))

(assert (= (and b!1393125 res!628942) b!1393114))

(assert (= (and b!1393114 res!628941) b!1393157))

(assert (= (and b!1393157 res!628957) b!1393151))

(assert (= (and b!1393151 res!628953) b!1393120))

(assert (= (and b!1393120 res!628949) b!1393156))

(assert (= (and b!1393156 res!628938) b!1393148))

(assert (= (and b!1393148 (not res!628933)) b!1393135))

(assert (= (and b!1393135 (not res!628958)) b!1393130))

(assert (= (and b!1393130 (not res!628936)) b!1393131))

(assert (= (and b!1393131 (not res!628954)) b!1393138))

(assert (= (and b!1393138 (not res!628926)) b!1393155))

(assert (= (and b!1393155 (not res!628937)) b!1393140))

(assert (= (and b!1393140 (not res!628959)) b!1393116))

(assert (= (and b!1393116 (not res!628946)) b!1393119))

(assert (= (and b!1393119 (not res!628927)) b!1393117))

(assert (= (and b!1393117 (not res!628934)) b!1393136))

(assert (= (and b!1393136 (not res!628944)) b!1393145))

(assert (= (and b!1393145 (not res!628952)) b!1393121))

(assert (= (and b!1393121 (not res!628939)) b!1393149))

(assert (= (and b!1393149 (not res!628955)) b!1393153))

(assert (= (and b!1393153 (not res!628930)) b!1393129))

(assert (= (and b!1393129 (not res!628945)) b!1393142))

(assert (= (and b!1393142 (not res!628940)) b!1393146))

(assert (= (and b!1393146 (not res!628929)) b!1393115))

(assert (= (and b!1393115 (not res!628935)) b!1393147))

(assert (= (and b!1393147 (not res!628931)) b!1393124))

(assert (= (and b!1393124 (not res!628960)) b!1393133))

(assert (= (and b!1393133 (not res!628951)) b!1393126))

(assert (= (and b!1393126 (not res!628928)) b!1393134))

(assert (= (and b!1393134 c!229415) b!1393150))

(assert (= (and b!1393134 (not c!229415)) b!1393118))

(assert (= (and b!1393134 (not res!628948)) b!1393128))

(assert (= (and b!1393128 (not res!628950)) b!1393139))

(assert (= b!1393122 b!1393158))

(assert (= b!1393141 b!1393122))

(assert (= (and start!126778 ((_ is Cons!14122) rules!2550)) b!1393141))

(assert (= b!1393123 b!1393127))

(assert (= b!1393144 b!1393123))

(assert (= start!126778 b!1393144))

(assert (= b!1393152 b!1393154))

(assert (= b!1393143 b!1393152))

(assert (= start!126778 b!1393143))

(declare-fun m!1569201 () Bool)

(assert (=> b!1393148 m!1569201))

(assert (=> b!1393148 m!1569201))

(declare-fun m!1569203 () Bool)

(assert (=> b!1393148 m!1569203))

(declare-fun m!1569205 () Bool)

(assert (=> b!1393120 m!1569205))

(declare-fun m!1569207 () Bool)

(assert (=> b!1393130 m!1569207))

(declare-fun m!1569209 () Bool)

(assert (=> b!1393130 m!1569209))

(declare-fun m!1569211 () Bool)

(assert (=> b!1393138 m!1569211))

(declare-fun m!1569213 () Bool)

(assert (=> b!1393146 m!1569213))

(assert (=> b!1393146 m!1569213))

(declare-fun m!1569215 () Bool)

(assert (=> b!1393146 m!1569215))

(declare-fun m!1569217 () Bool)

(assert (=> b!1393150 m!1569217))

(assert (=> b!1393150 m!1569217))

(declare-fun m!1569219 () Bool)

(assert (=> b!1393150 m!1569219))

(declare-fun m!1569221 () Bool)

(assert (=> b!1393115 m!1569221))

(declare-fun m!1569223 () Bool)

(assert (=> b!1393115 m!1569223))

(declare-fun m!1569225 () Bool)

(assert (=> b!1393133 m!1569225))

(declare-fun m!1569227 () Bool)

(assert (=> b!1393133 m!1569227))

(declare-fun m!1569229 () Bool)

(assert (=> b!1393133 m!1569229))

(declare-fun m!1569231 () Bool)

(assert (=> b!1393133 m!1569231))

(declare-fun m!1569233 () Bool)

(assert (=> b!1393144 m!1569233))

(declare-fun m!1569235 () Bool)

(assert (=> b!1393156 m!1569235))

(declare-fun m!1569237 () Bool)

(assert (=> b!1393156 m!1569237))

(declare-fun m!1569239 () Bool)

(assert (=> b!1393156 m!1569239))

(declare-fun m!1569241 () Bool)

(assert (=> b!1393156 m!1569241))

(declare-fun m!1569243 () Bool)

(assert (=> b!1393156 m!1569243))

(declare-fun m!1569245 () Bool)

(assert (=> b!1393156 m!1569245))

(declare-fun m!1569247 () Bool)

(assert (=> b!1393151 m!1569247))

(declare-fun m!1569249 () Bool)

(assert (=> b!1393124 m!1569249))

(declare-fun m!1569251 () Bool)

(assert (=> b!1393137 m!1569251))

(declare-fun m!1569253 () Bool)

(assert (=> b!1393159 m!1569253))

(declare-fun m!1569255 () Bool)

(assert (=> b!1393135 m!1569255))

(assert (=> b!1393135 m!1569255))

(declare-fun m!1569257 () Bool)

(assert (=> b!1393135 m!1569257))

(declare-fun m!1569259 () Bool)

(assert (=> b!1393135 m!1569259))

(declare-fun m!1569261 () Bool)

(assert (=> b!1393123 m!1569261))

(declare-fun m!1569263 () Bool)

(assert (=> b!1393123 m!1569263))

(declare-fun m!1569265 () Bool)

(assert (=> b!1393152 m!1569265))

(declare-fun m!1569267 () Bool)

(assert (=> b!1393152 m!1569267))

(declare-fun m!1569269 () Bool)

(assert (=> b!1393147 m!1569269))

(declare-fun m!1569271 () Bool)

(assert (=> b!1393155 m!1569271))

(declare-fun m!1569273 () Bool)

(assert (=> start!126778 m!1569273))

(declare-fun m!1569275 () Bool)

(assert (=> start!126778 m!1569275))

(declare-fun m!1569277 () Bool)

(assert (=> b!1393121 m!1569277))

(assert (=> b!1393121 m!1569277))

(declare-fun m!1569279 () Bool)

(assert (=> b!1393121 m!1569279))

(declare-fun m!1569281 () Bool)

(assert (=> b!1393149 m!1569281))

(declare-fun m!1569283 () Bool)

(assert (=> b!1393128 m!1569283))

(assert (=> b!1393128 m!1569283))

(declare-fun m!1569285 () Bool)

(assert (=> b!1393128 m!1569285))

(declare-fun m!1569287 () Bool)

(assert (=> b!1393129 m!1569287))

(declare-fun m!1569289 () Bool)

(assert (=> b!1393129 m!1569289))

(declare-fun m!1569291 () Bool)

(assert (=> b!1393129 m!1569291))

(assert (=> b!1393129 m!1569291))

(declare-fun m!1569293 () Bool)

(assert (=> b!1393129 m!1569293))

(declare-fun m!1569295 () Bool)

(assert (=> b!1393143 m!1569295))

(declare-fun m!1569297 () Bool)

(assert (=> b!1393116 m!1569297))

(declare-fun m!1569299 () Bool)

(assert (=> b!1393116 m!1569299))

(declare-fun m!1569301 () Bool)

(assert (=> b!1393116 m!1569301))

(declare-fun m!1569303 () Bool)

(assert (=> b!1393116 m!1569303))

(assert (=> b!1393116 m!1569299))

(assert (=> b!1393116 m!1569299))

(declare-fun m!1569305 () Bool)

(assert (=> b!1393125 m!1569305))

(declare-fun m!1569307 () Bool)

(assert (=> b!1393126 m!1569307))

(declare-fun m!1569309 () Bool)

(assert (=> b!1393153 m!1569309))

(declare-fun m!1569311 () Bool)

(assert (=> b!1393142 m!1569311))

(declare-fun m!1569313 () Bool)

(assert (=> b!1393157 m!1569313))

(declare-fun m!1569315 () Bool)

(assert (=> b!1393157 m!1569315))

(declare-fun m!1569317 () Bool)

(assert (=> b!1393139 m!1569317))

(assert (=> b!1393139 m!1569317))

(declare-fun m!1569319 () Bool)

(assert (=> b!1393139 m!1569319))

(declare-fun m!1569321 () Bool)

(assert (=> b!1393140 m!1569321))

(declare-fun m!1569323 () Bool)

(assert (=> b!1393136 m!1569323))

(declare-fun m!1569325 () Bool)

(assert (=> b!1393136 m!1569325))

(declare-fun m!1569327 () Bool)

(assert (=> b!1393136 m!1569327))

(assert (=> b!1393136 m!1569325))

(declare-fun m!1569329 () Bool)

(assert (=> b!1393136 m!1569329))

(declare-fun m!1569331 () Bool)

(assert (=> b!1393136 m!1569331))

(declare-fun m!1569333 () Bool)

(assert (=> b!1393131 m!1569333))

(declare-fun m!1569335 () Bool)

(assert (=> b!1393122 m!1569335))

(declare-fun m!1569337 () Bool)

(assert (=> b!1393122 m!1569337))

(declare-fun m!1569339 () Bool)

(assert (=> b!1393117 m!1569339))

(assert (=> b!1393117 m!1569339))

(declare-fun m!1569341 () Bool)

(assert (=> b!1393117 m!1569341))

(assert (=> b!1393119 m!1569299))

(assert (=> b!1393119 m!1569299))

(declare-fun m!1569343 () Bool)

(assert (=> b!1393119 m!1569343))

(assert (=> b!1393119 m!1569299))

(assert (=> b!1393119 m!1569299))

(declare-fun m!1569345 () Bool)

(assert (=> b!1393119 m!1569345))

(declare-fun m!1569347 () Bool)

(assert (=> b!1393145 m!1569347))

(declare-fun m!1569349 () Bool)

(assert (=> b!1393132 m!1569349))

(declare-fun m!1569351 () Bool)

(assert (=> b!1393134 m!1569351))

(assert (=> b!1393134 m!1569351))

(declare-fun m!1569353 () Bool)

(assert (=> b!1393134 m!1569353))

(check-sat (not b!1393130) (not b!1393137) (not b!1393121) b_and!93275 (not b!1393139) (not b!1393132) b_and!93277 (not b!1393128) (not b!1393159) (not b!1393115) (not b!1393138) (not b!1393125) (not b!1393144) (not b!1393156) b_and!93281 (not b!1393117) (not b!1393150) (not b!1393129) (not b!1393124) (not b!1393141) (not b!1393120) (not b!1393143) (not b!1393142) b_and!93283 (not start!126778) (not b!1393152) (not b!1393116) (not b!1393157) b_and!93285 (not b_next!34539) (not b_next!34541) (not b_next!34543) (not b!1393123) (not b!1393135) (not b!1393155) (not b!1393119) (not b!1393147) (not b!1393122) (not b!1393148) (not b!1393136) (not b!1393131) (not b!1393145) (not b!1393151) (not b!1393146) b_and!93279 (not b!1393149) (not b!1393126) (not b!1393134) (not b!1393140) (not b!1393133) (not b_next!34549) (not b!1393153) (not b_next!34547) (not b_next!34545))
(check-sat b_and!93281 b_and!93283 b_and!93275 b_and!93277 b_and!93279 (not b_next!34549) b_and!93285 (not b_next!34539) (not b_next!34541) (not b_next!34543) (not b_next!34547) (not b_next!34545))
