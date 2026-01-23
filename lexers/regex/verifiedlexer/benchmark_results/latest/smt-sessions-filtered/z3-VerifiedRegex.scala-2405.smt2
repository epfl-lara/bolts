; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!124630 () Bool)

(assert start!124630)

(declare-fun b!1377953 () Bool)

(declare-fun b_free!33419 () Bool)

(declare-fun b_next!34123 () Bool)

(assert (=> b!1377953 (= b_free!33419 (not b_next!34123))))

(declare-fun tp!394922 () Bool)

(declare-fun b_and!92299 () Bool)

(assert (=> b!1377953 (= tp!394922 b_and!92299)))

(declare-fun b_free!33421 () Bool)

(declare-fun b_next!34125 () Bool)

(assert (=> b!1377953 (= b_free!33421 (not b_next!34125))))

(declare-fun tp!394913 () Bool)

(declare-fun b_and!92301 () Bool)

(assert (=> b!1377953 (= tp!394913 b_and!92301)))

(declare-fun b!1377963 () Bool)

(declare-fun b_free!33423 () Bool)

(declare-fun b_next!34127 () Bool)

(assert (=> b!1377963 (= b_free!33423 (not b_next!34127))))

(declare-fun tp!394916 () Bool)

(declare-fun b_and!92303 () Bool)

(assert (=> b!1377963 (= tp!394916 b_and!92303)))

(declare-fun b_free!33425 () Bool)

(declare-fun b_next!34129 () Bool)

(assert (=> b!1377963 (= b_free!33425 (not b_next!34129))))

(declare-fun tp!394918 () Bool)

(declare-fun b_and!92305 () Bool)

(assert (=> b!1377963 (= tp!394918 b_and!92305)))

(declare-fun b!1377982 () Bool)

(declare-fun b_free!33427 () Bool)

(declare-fun b_next!34131 () Bool)

(assert (=> b!1377982 (= b_free!33427 (not b_next!34131))))

(declare-fun tp!394920 () Bool)

(declare-fun b_and!92307 () Bool)

(assert (=> b!1377982 (= tp!394920 b_and!92307)))

(declare-fun b_free!33429 () Bool)

(declare-fun b_next!34133 () Bool)

(assert (=> b!1377982 (= b_free!33429 (not b_next!34133))))

(declare-fun tp!394924 () Bool)

(declare-fun b_and!92309 () Bool)

(assert (=> b!1377982 (= tp!394924 b_and!92309)))

(declare-fun b!1377995 () Bool)

(assert (=> b!1377995 true))

(assert (=> b!1377995 true))

(declare-fun b!1377966 () Bool)

(assert (=> b!1377966 true))

(declare-fun b!1377957 () Bool)

(assert (=> b!1377957 true))

(declare-fun bs!336340 () Bool)

(declare-fun b!1377981 () Bool)

(assert (= bs!336340 (and b!1377981 b!1377957)))

(declare-fun lambda!58965 () Int)

(declare-fun lambda!58964 () Int)

(assert (=> bs!336340 (not (= lambda!58965 lambda!58964))))

(assert (=> b!1377981 true))

(declare-fun b!1377947 () Bool)

(declare-fun e!880548 () Bool)

(declare-fun e!880531 () Bool)

(assert (=> b!1377947 (= e!880548 e!880531)))

(declare-fun res!621357 () Bool)

(assert (=> b!1377947 (=> res!621357 e!880531)))

(declare-fun lt!458253 () Bool)

(assert (=> b!1377947 (= res!621357 lt!458253)))

(declare-datatypes ((Unit!20228 0))(
  ( (Unit!20229) )
))
(declare-fun lt!458233 () Unit!20228)

(declare-fun e!880530 () Unit!20228)

(assert (=> b!1377947 (= lt!458233 e!880530)))

(declare-fun c!226741 () Bool)

(assert (=> b!1377947 (= c!226741 lt!458253)))

(declare-datatypes ((List!14032 0))(
  ( (Nil!13966) (Cons!13966 (h!19367 (_ BitVec 16)) (t!121845 List!14032)) )
))
(declare-datatypes ((TokenValue!2509 0))(
  ( (FloatLiteralValue!5018 (text!18008 List!14032)) (TokenValueExt!2508 (__x!8847 Int)) (Broken!12545 (value!78548 List!14032)) (Object!2574) (End!2509) (Def!2509) (Underscore!2509) (Match!2509) (Else!2509) (Error!2509) (Case!2509) (If!2509) (Extends!2509) (Abstract!2509) (Class!2509) (Val!2509) (DelimiterValue!5018 (del!2569 List!14032)) (KeywordValue!2515 (value!78549 List!14032)) (CommentValue!5018 (value!78550 List!14032)) (WhitespaceValue!5018 (value!78551 List!14032)) (IndentationValue!2509 (value!78552 List!14032)) (String!16780) (Int32!2509) (Broken!12546 (value!78553 List!14032)) (Boolean!2510) (Unit!20230) (OperatorValue!2512 (op!2569 List!14032)) (IdentifierValue!5018 (value!78554 List!14032)) (IdentifierValue!5019 (value!78555 List!14032)) (WhitespaceValue!5019 (value!78556 List!14032)) (True!5018) (False!5018) (Broken!12547 (value!78557 List!14032)) (Broken!12548 (value!78558 List!14032)) (True!5019) (RightBrace!2509) (RightBracket!2509) (Colon!2509) (Null!2509) (Comma!2509) (LeftBracket!2509) (False!5019) (LeftBrace!2509) (ImaginaryLiteralValue!2509 (text!18009 List!14032)) (StringLiteralValue!7527 (value!78559 List!14032)) (EOFValue!2509 (value!78560 List!14032)) (IdentValue!2509 (value!78561 List!14032)) (DelimiterValue!5019 (value!78562 List!14032)) (DedentValue!2509 (value!78563 List!14032)) (NewLineValue!2509 (value!78564 List!14032)) (IntegerValue!7527 (value!78565 (_ BitVec 32)) (text!18010 List!14032)) (IntegerValue!7528 (value!78566 Int) (text!18011 List!14032)) (Times!2509) (Or!2509) (Equal!2509) (Minus!2509) (Broken!12549 (value!78567 List!14032)) (And!2509) (Div!2509) (LessEqual!2509) (Mod!2509) (Concat!6242) (Not!2509) (Plus!2509) (SpaceValue!2509 (value!78568 List!14032)) (IntegerValue!7529 (value!78569 Int) (text!18012 List!14032)) (StringLiteralValue!7528 (text!18013 List!14032)) (FloatLiteralValue!5019 (text!18014 List!14032)) (BytesLiteralValue!2509 (value!78570 List!14032)) (CommentValue!5019 (value!78571 List!14032)) (StringLiteralValue!7529 (value!78572 List!14032)) (ErrorTokenValue!2509 (msg!2570 List!14032)) )
))
(declare-datatypes ((C!7756 0))(
  ( (C!7757 (val!4438 Int)) )
))
(declare-datatypes ((List!14033 0))(
  ( (Nil!13967) (Cons!13967 (h!19368 C!7756) (t!121846 List!14033)) )
))
(declare-datatypes ((IArray!9205 0))(
  ( (IArray!9206 (innerList!4660 List!14033)) )
))
(declare-datatypes ((Conc!4600 0))(
  ( (Node!4600 (left!11947 Conc!4600) (right!12277 Conc!4600) (csize!9430 Int) (cheight!4811 Int)) (Leaf!7006 (xs!7327 IArray!9205) (csize!9431 Int)) (Empty!4600) )
))
(declare-datatypes ((BalanceConc!9140 0))(
  ( (BalanceConc!9141 (c!226742 Conc!4600)) )
))
(declare-datatypes ((Regex!3733 0))(
  ( (ElementMatch!3733 (c!226743 C!7756)) (Concat!6243 (regOne!7978 Regex!3733) (regTwo!7978 Regex!3733)) (EmptyExpr!3733) (Star!3733 (reg!4062 Regex!3733)) (EmptyLang!3733) (Union!3733 (regOne!7979 Regex!3733) (regTwo!7979 Regex!3733)) )
))
(declare-datatypes ((String!16781 0))(
  ( (String!16782 (value!78573 String)) )
))
(declare-datatypes ((TokenValueInjection!4678 0))(
  ( (TokenValueInjection!4679 (toValue!3694 Int) (toChars!3553 Int)) )
))
(declare-datatypes ((Rule!4638 0))(
  ( (Rule!4639 (regex!2419 Regex!3733) (tag!2681 String!16781) (isSeparator!2419 Bool) (transformation!2419 TokenValueInjection!4678)) )
))
(declare-datatypes ((Token!4500 0))(
  ( (Token!4501 (value!78574 TokenValue!2509) (rule!4178 Rule!4638) (size!11447 Int) (originalCharacters!3281 List!14033)) )
))
(declare-fun t1!34 () Token!4500)

(declare-fun lt!458256 () C!7756)

(declare-fun contains!2645 (List!14033 C!7756) Bool)

(declare-fun usedCharacters!238 (Regex!3733) List!14033)

(assert (=> b!1377947 (= lt!458253 (not (contains!2645 (usedCharacters!238 (regex!2419 (rule!4178 t1!34))) lt!458256)))))

(declare-fun b!1377948 () Bool)

(declare-fun e!880549 () Bool)

(declare-fun e!880545 () Bool)

(assert (=> b!1377948 (= e!880549 e!880545)))

(declare-fun res!621345 () Bool)

(assert (=> b!1377948 (=> res!621345 e!880545)))

(declare-datatypes ((LexerInterface!2114 0))(
  ( (LexerInterfaceExt!2111 (__x!8848 Int)) (Lexer!2112) )
))
(declare-fun thiss!19762 () LexerInterface!2114)

(declare-datatypes ((List!14034 0))(
  ( (Nil!13968) (Cons!13968 (h!19369 Rule!4638) (t!121847 List!14034)) )
))
(declare-fun rules!2550 () List!14034)

(declare-fun lt!458243 () List!14033)

(declare-fun t2!34 () Token!4500)

(declare-datatypes ((tuple2!13586 0))(
  ( (tuple2!13587 (_1!7679 Token!4500) (_2!7679 List!14033)) )
))
(declare-datatypes ((Option!2686 0))(
  ( (None!2685) (Some!2685 (v!21515 tuple2!13586)) )
))
(declare-fun maxPrefix!1096 (LexerInterface!2114 List!14034 List!14033) Option!2686)

(assert (=> b!1377948 (= res!621345 (not (= (maxPrefix!1096 thiss!19762 rules!2550 lt!458243) (Some!2685 (tuple2!13587 t2!34 Nil!13967)))))))

(declare-fun lt!458244 () BalanceConc!9140)

(declare-fun list!5394 (BalanceConc!9140) List!14033)

(assert (=> b!1377948 (= lt!458243 (list!5394 lt!458244))))

(declare-fun b!1377949 () Bool)

(declare-fun e!880525 () Bool)

(declare-fun e!880540 () Bool)

(assert (=> b!1377949 (= e!880525 e!880540)))

(declare-fun res!621348 () Bool)

(assert (=> b!1377949 (=> res!621348 e!880540)))

(declare-fun lt!458242 () List!14033)

(declare-fun lt!458227 () List!14033)

(declare-fun ++!3616 (List!14033 List!14033) List!14033)

(declare-fun getSuffix!581 (List!14033 List!14033) List!14033)

(assert (=> b!1377949 (= res!621348 (not (= lt!458242 (++!3616 lt!458227 (getSuffix!581 lt!458242 lt!458227)))))))

(declare-fun lambda!58961 () Int)

(declare-fun pickWitness!188 (Int) List!14033)

(assert (=> b!1377949 (= lt!458242 (pickWitness!188 lambda!58961))))

(declare-fun e!880539 () Bool)

(declare-fun b!1377950 () Bool)

(declare-fun e!880552 () Bool)

(declare-fun tp!394914 () Bool)

(declare-fun inv!18310 (String!16781) Bool)

(declare-fun inv!18313 (TokenValueInjection!4678) Bool)

(assert (=> b!1377950 (= e!880539 (and tp!394914 (inv!18310 (tag!2681 (rule!4178 t1!34))) (inv!18313 (transformation!2419 (rule!4178 t1!34))) e!880552))))

(declare-fun b!1377952 () Bool)

(declare-fun Unit!20231 () Unit!20228)

(assert (=> b!1377952 (= e!880530 Unit!20231)))

(declare-fun lt!458238 () Unit!20228)

(declare-fun lt!458235 () List!14033)

(declare-fun lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!178 (Regex!3733 List!14033 C!7756) Unit!20228)

(declare-fun head!2493 (List!14033) C!7756)

(assert (=> b!1377952 (= lt!458238 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!178 (regex!2419 (rule!4178 t1!34)) lt!458235 (head!2493 lt!458235)))))

(assert (=> b!1377952 false))

(declare-fun e!880556 () Bool)

(assert (=> b!1377953 (= e!880556 (and tp!394922 tp!394913))))

(declare-fun b!1377954 () Bool)

(declare-fun Unit!20232 () Unit!20228)

(assert (=> b!1377954 (= e!880530 Unit!20232)))

(declare-fun b!1377955 () Bool)

(declare-fun res!621337 () Bool)

(declare-fun e!880528 () Bool)

(assert (=> b!1377955 (=> (not res!621337) (not e!880528))))

(assert (=> b!1377955 (= res!621337 (not (= (isSeparator!2419 (rule!4178 t1!34)) (isSeparator!2419 (rule!4178 t2!34)))))))

(declare-fun b!1377956 () Bool)

(declare-fun e!880538 () Unit!20228)

(declare-fun Unit!20233 () Unit!20228)

(assert (=> b!1377956 (= e!880538 Unit!20233)))

(declare-fun e!880533 () Bool)

(declare-fun e!880551 () Bool)

(assert (=> b!1377957 (= e!880533 e!880551)))

(declare-fun res!621323 () Bool)

(assert (=> b!1377957 (=> res!621323 e!880551)))

(declare-fun exists!496 (List!14034 Int) Bool)

(assert (=> b!1377957 (= res!621323 (not (exists!496 rules!2550 lambda!58964)))))

(assert (=> b!1377957 (exists!496 rules!2550 lambda!58964)))

(declare-fun lambda!58962 () Int)

(declare-fun lt!458245 () Unit!20228)

(declare-fun lt!458240 () Regex!3733)

(declare-fun lemmaMapContains!138 (List!14034 Int Regex!3733) Unit!20228)

(assert (=> b!1377957 (= lt!458245 (lemmaMapContains!138 rules!2550 lambda!58962 lt!458240))))

(declare-fun b!1377958 () Bool)

(declare-fun e!880534 () Bool)

(assert (=> b!1377958 (= e!880551 e!880534)))

(declare-fun res!621353 () Bool)

(assert (=> b!1377958 (=> res!621353 e!880534)))

(declare-datatypes ((List!14035 0))(
  ( (Nil!13969) (Cons!13969 (h!19370 Token!4500) (t!121848 List!14035)) )
))
(declare-datatypes ((IArray!9207 0))(
  ( (IArray!9208 (innerList!4661 List!14035)) )
))
(declare-datatypes ((Conc!4601 0))(
  ( (Node!4601 (left!11948 Conc!4601) (right!12278 Conc!4601) (csize!9432 Int) (cheight!4812 Int)) (Leaf!7007 (xs!7328 IArray!9207) (csize!9433 Int)) (Empty!4601) )
))
(declare-datatypes ((BalanceConc!9142 0))(
  ( (BalanceConc!9143 (c!226744 Conc!4601)) )
))
(declare-datatypes ((tuple2!13588 0))(
  ( (tuple2!13589 (_1!7680 BalanceConc!9142) (_2!7680 BalanceConc!9140)) )
))
(declare-fun lt!458237 () tuple2!13588)

(declare-fun lt!458228 () List!14035)

(declare-fun list!5395 (BalanceConc!9142) List!14035)

(assert (=> b!1377958 (= res!621353 (not (= (list!5395 (_1!7680 lt!458237)) lt!458228)))))

(assert (=> b!1377958 (= lt!458228 (Cons!13969 t1!34 Nil!13969))))

(declare-fun lt!458249 () BalanceConc!9140)

(declare-fun lex!941 (LexerInterface!2114 List!14034 BalanceConc!9140) tuple2!13588)

(assert (=> b!1377958 (= lt!458237 (lex!941 thiss!19762 rules!2550 lt!458249))))

(declare-fun print!880 (LexerInterface!2114 BalanceConc!9142) BalanceConc!9140)

(declare-fun singletonSeq!1054 (Token!4500) BalanceConc!9142)

(assert (=> b!1377958 (= lt!458249 (print!880 thiss!19762 (singletonSeq!1054 t1!34)))))

(declare-fun lt!458229 () Rule!4638)

(declare-fun getWitness!384 (List!14034 Int) Rule!4638)

(assert (=> b!1377958 (= lt!458229 (getWitness!384 rules!2550 lambda!58964))))

(declare-fun e!880546 () Bool)

(declare-fun tp!394921 () Bool)

(declare-fun b!1377959 () Bool)

(declare-fun inv!21 (TokenValue!2509) Bool)

(assert (=> b!1377959 (= e!880546 (and (inv!21 (value!78574 t1!34)) e!880539 tp!394921))))

(declare-fun b!1377960 () Bool)

(declare-fun res!621330 () Bool)

(declare-fun e!880555 () Bool)

(assert (=> b!1377960 (=> (not res!621330) (not e!880555))))

(declare-fun sepAndNonSepRulesDisjointChars!792 (List!14034 List!14034) Bool)

(assert (=> b!1377960 (= res!621330 (sepAndNonSepRulesDisjointChars!792 rules!2550 rules!2550))))

(declare-fun b!1377961 () Bool)

(declare-fun res!621352 () Bool)

(assert (=> b!1377961 (=> res!621352 e!880549)))

(declare-fun lt!458231 () List!14035)

(declare-fun lt!458236 () BalanceConc!9140)

(declare-datatypes ((tuple2!13590 0))(
  ( (tuple2!13591 (_1!7681 List!14035) (_2!7681 List!14033)) )
))
(declare-fun lexList!632 (LexerInterface!2114 List!14034 List!14033) tuple2!13590)

(assert (=> b!1377961 (= res!621352 (not (= (lexList!632 thiss!19762 rules!2550 (list!5394 lt!458236)) (tuple2!13591 lt!458231 Nil!13967))))))

(declare-fun b!1377962 () Bool)

(declare-fun res!621349 () Bool)

(assert (=> b!1377962 (=> res!621349 e!880548)))

(declare-fun matchR!1726 (Regex!3733 List!14033) Bool)

(assert (=> b!1377962 (= res!621349 (not (matchR!1726 (regex!2419 (rule!4178 t2!34)) lt!458243)))))

(declare-fun e!880547 () Bool)

(assert (=> b!1377963 (= e!880547 (and tp!394916 tp!394918))))

(declare-fun b!1377964 () Bool)

(declare-fun res!621343 () Bool)

(assert (=> b!1377964 (=> res!621343 e!880534)))

(declare-fun contains!2646 (List!14034 Rule!4638) Bool)

(assert (=> b!1377964 (= res!621343 (not (contains!2646 rules!2550 (rule!4178 t1!34))))))

(declare-fun b!1377965 () Bool)

(declare-fun e!880553 () Bool)

(assert (=> b!1377965 (= e!880540 e!880553)))

(declare-fun res!621332 () Bool)

(assert (=> b!1377965 (=> res!621332 e!880553)))

(assert (=> b!1377965 (= res!621332 (not (contains!2645 lt!458227 lt!458256)))))

(declare-fun lt!458247 () BalanceConc!9140)

(declare-fun apply!3449 (BalanceConc!9140 Int) C!7756)

(assert (=> b!1377965 (= lt!458256 (apply!3449 lt!458247 0))))

(declare-fun e!880535 () Bool)

(assert (=> b!1377966 (= e!880553 e!880535)))

(declare-fun res!621351 () Bool)

(assert (=> b!1377966 (=> res!621351 e!880535)))

(declare-fun lambda!58963 () Int)

(declare-datatypes ((List!14036 0))(
  ( (Nil!13970) (Cons!13970 (h!19371 Regex!3733) (t!121849 List!14036)) )
))
(declare-fun exists!497 (List!14036 Int) Bool)

(declare-fun map!3089 (List!14034 Int) List!14036)

(assert (=> b!1377966 (= res!621351 (not (exists!497 (map!3089 rules!2550 lambda!58962) lambda!58963)))))

(declare-fun lt!458251 () List!14036)

(assert (=> b!1377966 (exists!497 lt!458251 lambda!58963)))

(declare-fun lt!458230 () Unit!20228)

(declare-fun lt!458241 () Regex!3733)

(declare-fun matchRGenUnionSpec!150 (Regex!3733 List!14036 List!14033) Unit!20228)

(assert (=> b!1377966 (= lt!458230 (matchRGenUnionSpec!150 lt!458241 lt!458251 lt!458242))))

(assert (=> b!1377966 (= lt!458251 (map!3089 rules!2550 lambda!58962))))

(declare-fun b!1377967 () Bool)

(declare-fun res!621356 () Bool)

(assert (=> b!1377967 (=> res!621356 e!880553)))

(assert (=> b!1377967 (= res!621356 (not (contains!2645 lt!458242 lt!458256)))))

(declare-fun b!1377968 () Bool)

(declare-fun res!621344 () Bool)

(assert (=> b!1377968 (=> res!621344 e!880534)))

(assert (=> b!1377968 (= res!621344 (not (= (lexList!632 thiss!19762 rules!2550 (list!5394 lt!458249)) (tuple2!13591 lt!458228 Nil!13967))))))

(declare-fun b!1377969 () Bool)

(declare-fun res!621341 () Bool)

(assert (=> b!1377969 (=> (not res!621341) (not e!880528))))

(declare-fun rulesProduceIndividualToken!1083 (LexerInterface!2114 List!14034 Token!4500) Bool)

(assert (=> b!1377969 (= res!621341 (rulesProduceIndividualToken!1083 thiss!19762 rules!2550 t2!34))))

(declare-fun b!1377970 () Bool)

(declare-fun res!621355 () Bool)

(assert (=> b!1377970 (=> (not res!621355) (not e!880528))))

(declare-fun isEmpty!8426 (List!14034) Bool)

(assert (=> b!1377970 (= res!621355 (not (isEmpty!8426 rules!2550)))))

(declare-fun b!1377971 () Bool)

(declare-fun Unit!20234 () Unit!20228)

(assert (=> b!1377971 (= e!880538 Unit!20234)))

(declare-fun lt!458239 () Unit!20228)

(assert (=> b!1377971 (= lt!458239 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!178 (regex!2419 (rule!4178 t2!34)) lt!458243 (head!2493 lt!458243)))))

(assert (=> b!1377971 false))

(declare-fun b!1377972 () Bool)

(declare-fun res!621339 () Bool)

(assert (=> b!1377972 (=> res!621339 e!880545)))

(assert (=> b!1377972 (= res!621339 (not (contains!2646 rules!2550 lt!458229)))))

(declare-fun e!880537 () Bool)

(declare-fun tp!394923 () Bool)

(declare-fun b!1377973 () Bool)

(declare-fun e!880543 () Bool)

(assert (=> b!1377973 (= e!880543 (and (inv!21 (value!78574 t2!34)) e!880537 tp!394923))))

(declare-fun b!1377974 () Bool)

(declare-fun e!880526 () Bool)

(declare-fun e!880527 () Bool)

(assert (=> b!1377974 (= e!880526 e!880527)))

(declare-fun res!621350 () Bool)

(assert (=> b!1377974 (=> res!621350 e!880527)))

(assert (=> b!1377974 (= res!621350 (or (isSeparator!2419 lt!458229) (not (isSeparator!2419 (rule!4178 t1!34))) (isSeparator!2419 (rule!4178 t2!34))))))

(assert (=> b!1377974 (= (regex!2419 lt!458229) lt!458240)))

(declare-fun b!1377975 () Bool)

(assert (=> b!1377975 (= e!880535 e!880533)))

(declare-fun res!621324 () Bool)

(assert (=> b!1377975 (=> res!621324 e!880533)))

(declare-fun contains!2647 (List!14036 Regex!3733) Bool)

(assert (=> b!1377975 (= res!621324 (not (contains!2647 (map!3089 rules!2550 lambda!58962) lt!458240)))))

(declare-fun getWitness!385 (List!14036 Int) Regex!3733)

(assert (=> b!1377975 (= lt!458240 (getWitness!385 (map!3089 rules!2550 lambda!58962) lambda!58963))))

(declare-fun b!1377976 () Bool)

(assert (=> b!1377976 (= e!880534 e!880549)))

(declare-fun res!621331 () Bool)

(assert (=> b!1377976 (=> res!621331 e!880549)))

(declare-fun lt!458232 () tuple2!13588)

(assert (=> b!1377976 (= res!621331 (not (= (list!5395 (_1!7680 lt!458232)) lt!458231)))))

(assert (=> b!1377976 (= lt!458231 (Cons!13969 t2!34 Nil!13969))))

(assert (=> b!1377976 (= lt!458232 (lex!941 thiss!19762 rules!2550 lt!458236))))

(assert (=> b!1377976 (= lt!458236 (print!880 thiss!19762 (singletonSeq!1054 t2!34)))))

(declare-fun res!621326 () Bool)

(assert (=> start!124630 (=> (not res!621326) (not e!880528))))

(get-info :version)

(assert (=> start!124630 (= res!621326 ((_ is Lexer!2112) thiss!19762))))

(assert (=> start!124630 e!880528))

(assert (=> start!124630 true))

(declare-fun e!880536 () Bool)

(assert (=> start!124630 e!880536))

(declare-fun inv!18314 (Token!4500) Bool)

(assert (=> start!124630 (and (inv!18314 t1!34) e!880546)))

(assert (=> start!124630 (and (inv!18314 t2!34) e!880543)))

(declare-fun b!1377951 () Bool)

(assert (=> b!1377951 (= e!880528 e!880555)))

(declare-fun res!621334 () Bool)

(assert (=> b!1377951 (=> (not res!621334) (not e!880555))))

(declare-fun size!11448 (BalanceConc!9140) Int)

(assert (=> b!1377951 (= res!621334 (> (size!11448 lt!458244) 0))))

(declare-fun charsOf!1391 (Token!4500) BalanceConc!9140)

(assert (=> b!1377951 (= lt!458244 (charsOf!1391 t2!34))))

(declare-fun b!1377977 () Bool)

(declare-fun e!880550 () Bool)

(assert (=> b!1377977 (= e!880555 e!880550)))

(declare-fun res!621336 () Bool)

(assert (=> b!1377977 (=> (not res!621336) (not e!880550))))

(declare-fun prefixMatch!242 (Regex!3733 List!14033) Bool)

(assert (=> b!1377977 (= res!621336 (prefixMatch!242 lt!458241 lt!458227))))

(declare-fun rulesRegex!302 (LexerInterface!2114 List!14034) Regex!3733)

(assert (=> b!1377977 (= lt!458241 (rulesRegex!302 thiss!19762 rules!2550))))

(declare-fun lt!458226 () C!7756)

(assert (=> b!1377977 (= lt!458227 (++!3616 lt!458235 (Cons!13967 lt!458226 Nil!13967)))))

(assert (=> b!1377977 (= lt!458226 (apply!3449 lt!458244 0))))

(assert (=> b!1377977 (= lt!458235 (list!5394 lt!458247))))

(assert (=> b!1377977 (= lt!458247 (charsOf!1391 t1!34))))

(declare-fun b!1377978 () Bool)

(declare-fun res!621347 () Bool)

(assert (=> b!1377978 (=> (not res!621347) (not e!880528))))

(assert (=> b!1377978 (= res!621347 (rulesProduceIndividualToken!1083 thiss!19762 rules!2550 t1!34))))

(declare-fun b!1377979 () Bool)

(declare-fun tp!394919 () Bool)

(declare-fun e!880544 () Bool)

(assert (=> b!1377979 (= e!880544 (and tp!394919 (inv!18310 (tag!2681 (h!19369 rules!2550))) (inv!18313 (transformation!2419 (h!19369 rules!2550))) e!880556))))

(declare-fun b!1377980 () Bool)

(declare-fun res!621328 () Bool)

(assert (=> b!1377980 (=> res!621328 e!880545)))

(assert (=> b!1377980 (= res!621328 (not (contains!2646 rules!2550 (rule!4178 t2!34))))))

(assert (=> b!1377981 (= e!880545 e!880548)))

(declare-fun res!621342 () Bool)

(assert (=> b!1377981 (=> res!621342 e!880548)))

(assert (=> b!1377981 (= res!621342 (not (matchR!1726 (regex!2419 (rule!4178 t1!34)) lt!458235)))))

(declare-fun lt!458255 () Unit!20228)

(declare-fun forallContained!622 (List!14034 Int Rule!4638) Unit!20228)

(assert (=> b!1377981 (= lt!458255 (forallContained!622 rules!2550 lambda!58965 (rule!4178 t2!34)))))

(declare-fun lt!458234 () Unit!20228)

(assert (=> b!1377981 (= lt!458234 (forallContained!622 rules!2550 lambda!58965 (rule!4178 t1!34)))))

(declare-fun lt!458246 () Unit!20228)

(assert (=> b!1377981 (= lt!458246 (forallContained!622 rules!2550 lambda!58965 lt!458229))))

(assert (=> b!1377982 (= e!880552 (and tp!394920 tp!394924))))

(declare-fun b!1377983 () Bool)

(declare-fun tp!394917 () Bool)

(assert (=> b!1377983 (= e!880536 (and e!880544 tp!394917))))

(declare-fun b!1377984 () Bool)

(assert (=> b!1377984 (= e!880527 true)))

(assert (=> b!1377984 (not (contains!2645 (usedCharacters!238 (regex!2419 lt!458229)) lt!458256))))

(declare-fun lt!458254 () Unit!20228)

(declare-fun lemmaNonSepRuleNotContainsCharContainedInASepRule!12 (LexerInterface!2114 List!14034 List!14034 Rule!4638 Rule!4638 C!7756) Unit!20228)

(assert (=> b!1377984 (= lt!458254 (lemmaNonSepRuleNotContainsCharContainedInASepRule!12 thiss!19762 rules!2550 rules!2550 lt!458229 (rule!4178 t1!34) lt!458256))))

(declare-fun b!1377985 () Bool)

(declare-fun res!621335 () Bool)

(assert (=> b!1377985 (=> res!621335 e!880549)))

(declare-fun isEmpty!8427 (BalanceConc!9140) Bool)

(assert (=> b!1377985 (= res!621335 (not (isEmpty!8427 (_2!7680 lt!458232))))))

(declare-fun b!1377986 () Bool)

(declare-fun res!621338 () Bool)

(assert (=> b!1377986 (=> res!621338 e!880553)))

(assert (=> b!1377986 (= res!621338 (not (contains!2645 lt!458227 lt!458226)))))

(declare-fun b!1377987 () Bool)

(declare-fun res!621322 () Bool)

(assert (=> b!1377987 (=> res!621322 e!880553)))

(assert (=> b!1377987 (= res!621322 (not (contains!2645 lt!458242 lt!458226)))))

(declare-fun b!1377988 () Bool)

(declare-fun res!621346 () Bool)

(assert (=> b!1377988 (=> res!621346 e!880534)))

(assert (=> b!1377988 (= res!621346 (not (= (maxPrefix!1096 thiss!19762 rules!2550 lt!458235) (Some!2685 (tuple2!13587 t1!34 Nil!13967)))))))

(declare-fun b!1377989 () Bool)

(assert (=> b!1377989 (= e!880531 e!880526)))

(declare-fun res!621354 () Bool)

(assert (=> b!1377989 (=> res!621354 e!880526)))

(declare-fun lt!458250 () Bool)

(assert (=> b!1377989 (= res!621354 lt!458250)))

(declare-fun lt!458252 () Unit!20228)

(assert (=> b!1377989 (= lt!458252 e!880538)))

(declare-fun c!226740 () Bool)

(assert (=> b!1377989 (= c!226740 lt!458250)))

(assert (=> b!1377989 (= lt!458250 (not (contains!2645 (usedCharacters!238 (regex!2419 (rule!4178 t2!34))) lt!458226)))))

(declare-fun b!1377990 () Bool)

(declare-fun res!621333 () Bool)

(assert (=> b!1377990 (=> res!621333 e!880553)))

(assert (=> b!1377990 (= res!621333 (not (matchR!1726 lt!458241 lt!458242)))))

(declare-fun b!1377991 () Bool)

(declare-fun res!621325 () Bool)

(assert (=> b!1377991 (=> res!621325 e!880534)))

(assert (=> b!1377991 (= res!621325 (not (isEmpty!8427 (_2!7680 lt!458237))))))

(declare-fun b!1377992 () Bool)

(declare-fun res!621329 () Bool)

(assert (=> b!1377992 (=> (not res!621329) (not e!880555))))

(declare-fun separableTokensPredicate!397 (LexerInterface!2114 Token!4500 Token!4500 List!14034) Bool)

(assert (=> b!1377992 (= res!621329 (not (separableTokensPredicate!397 thiss!19762 t1!34 t2!34 rules!2550)))))

(declare-fun b!1377993 () Bool)

(declare-fun res!621340 () Bool)

(assert (=> b!1377993 (=> (not res!621340) (not e!880528))))

(declare-fun rulesInvariant!1984 (LexerInterface!2114 List!14034) Bool)

(assert (=> b!1377993 (= res!621340 (rulesInvariant!1984 thiss!19762 rules!2550))))

(declare-fun b!1377994 () Bool)

(declare-fun tp!394915 () Bool)

(assert (=> b!1377994 (= e!880537 (and tp!394915 (inv!18310 (tag!2681 (rule!4178 t2!34))) (inv!18313 (transformation!2419 (rule!4178 t2!34))) e!880547))))

(assert (=> b!1377995 (= e!880550 (not e!880525))))

(declare-fun res!621327 () Bool)

(assert (=> b!1377995 (=> res!621327 e!880525)))

(declare-fun Exists!885 (Int) Bool)

(assert (=> b!1377995 (= res!621327 (not (Exists!885 lambda!58961)))))

(assert (=> b!1377995 (Exists!885 lambda!58961)))

(declare-fun lt!458248 () Unit!20228)

(declare-fun lemmaPrefixMatchThenExistsStringThatMatches!203 (Regex!3733 List!14033) Unit!20228)

(assert (=> b!1377995 (= lt!458248 (lemmaPrefixMatchThenExistsStringThatMatches!203 lt!458241 lt!458227))))

(assert (= (and start!124630 res!621326) b!1377970))

(assert (= (and b!1377970 res!621355) b!1377993))

(assert (= (and b!1377993 res!621340) b!1377978))

(assert (= (and b!1377978 res!621347) b!1377969))

(assert (= (and b!1377969 res!621341) b!1377955))

(assert (= (and b!1377955 res!621337) b!1377951))

(assert (= (and b!1377951 res!621334) b!1377960))

(assert (= (and b!1377960 res!621330) b!1377992))

(assert (= (and b!1377992 res!621329) b!1377977))

(assert (= (and b!1377977 res!621336) b!1377995))

(assert (= (and b!1377995 (not res!621327)) b!1377949))

(assert (= (and b!1377949 (not res!621348)) b!1377965))

(assert (= (and b!1377965 (not res!621332)) b!1377967))

(assert (= (and b!1377967 (not res!621356)) b!1377986))

(assert (= (and b!1377986 (not res!621338)) b!1377987))

(assert (= (and b!1377987 (not res!621322)) b!1377990))

(assert (= (and b!1377990 (not res!621333)) b!1377966))

(assert (= (and b!1377966 (not res!621351)) b!1377975))

(assert (= (and b!1377975 (not res!621324)) b!1377957))

(assert (= (and b!1377957 (not res!621323)) b!1377958))

(assert (= (and b!1377958 (not res!621353)) b!1377991))

(assert (= (and b!1377991 (not res!621325)) b!1377968))

(assert (= (and b!1377968 (not res!621344)) b!1377988))

(assert (= (and b!1377988 (not res!621346)) b!1377964))

(assert (= (and b!1377964 (not res!621343)) b!1377976))

(assert (= (and b!1377976 (not res!621331)) b!1377985))

(assert (= (and b!1377985 (not res!621335)) b!1377961))

(assert (= (and b!1377961 (not res!621352)) b!1377948))

(assert (= (and b!1377948 (not res!621345)) b!1377980))

(assert (= (and b!1377980 (not res!621328)) b!1377972))

(assert (= (and b!1377972 (not res!621339)) b!1377981))

(assert (= (and b!1377981 (not res!621342)) b!1377962))

(assert (= (and b!1377962 (not res!621349)) b!1377947))

(assert (= (and b!1377947 c!226741) b!1377952))

(assert (= (and b!1377947 (not c!226741)) b!1377954))

(assert (= (and b!1377947 (not res!621357)) b!1377989))

(assert (= (and b!1377989 c!226740) b!1377971))

(assert (= (and b!1377989 (not c!226740)) b!1377956))

(assert (= (and b!1377989 (not res!621354)) b!1377974))

(assert (= (and b!1377974 (not res!621350)) b!1377984))

(assert (= b!1377979 b!1377953))

(assert (= b!1377983 b!1377979))

(assert (= (and start!124630 ((_ is Cons!13968) rules!2550)) b!1377983))

(assert (= b!1377950 b!1377982))

(assert (= b!1377959 b!1377950))

(assert (= start!124630 b!1377959))

(assert (= b!1377994 b!1377963))

(assert (= b!1377973 b!1377994))

(assert (= start!124630 b!1377973))

(declare-fun m!1550455 () Bool)

(assert (=> b!1377960 m!1550455))

(declare-fun m!1550457 () Bool)

(assert (=> b!1377961 m!1550457))

(assert (=> b!1377961 m!1550457))

(declare-fun m!1550459 () Bool)

(assert (=> b!1377961 m!1550459))

(declare-fun m!1550461 () Bool)

(assert (=> b!1377986 m!1550461))

(declare-fun m!1550463 () Bool)

(assert (=> b!1377964 m!1550463))

(declare-fun m!1550465 () Bool)

(assert (=> b!1377995 m!1550465))

(assert (=> b!1377995 m!1550465))

(declare-fun m!1550467 () Bool)

(assert (=> b!1377995 m!1550467))

(declare-fun m!1550469 () Bool)

(assert (=> b!1377984 m!1550469))

(assert (=> b!1377984 m!1550469))

(declare-fun m!1550471 () Bool)

(assert (=> b!1377984 m!1550471))

(declare-fun m!1550473 () Bool)

(assert (=> b!1377984 m!1550473))

(declare-fun m!1550475 () Bool)

(assert (=> b!1377948 m!1550475))

(declare-fun m!1550477 () Bool)

(assert (=> b!1377948 m!1550477))

(declare-fun m!1550479 () Bool)

(assert (=> b!1377991 m!1550479))

(declare-fun m!1550481 () Bool)

(assert (=> b!1377957 m!1550481))

(assert (=> b!1377957 m!1550481))

(declare-fun m!1550483 () Bool)

(assert (=> b!1377957 m!1550483))

(declare-fun m!1550485 () Bool)

(assert (=> b!1377967 m!1550485))

(declare-fun m!1550487 () Bool)

(assert (=> b!1377949 m!1550487))

(assert (=> b!1377949 m!1550487))

(declare-fun m!1550489 () Bool)

(assert (=> b!1377949 m!1550489))

(declare-fun m!1550491 () Bool)

(assert (=> b!1377949 m!1550491))

(declare-fun m!1550493 () Bool)

(assert (=> b!1377952 m!1550493))

(assert (=> b!1377952 m!1550493))

(declare-fun m!1550495 () Bool)

(assert (=> b!1377952 m!1550495))

(declare-fun m!1550497 () Bool)

(assert (=> b!1377987 m!1550497))

(declare-fun m!1550499 () Bool)

(assert (=> b!1377951 m!1550499))

(declare-fun m!1550501 () Bool)

(assert (=> b!1377951 m!1550501))

(declare-fun m!1550503 () Bool)

(assert (=> b!1377981 m!1550503))

(declare-fun m!1550505 () Bool)

(assert (=> b!1377981 m!1550505))

(declare-fun m!1550507 () Bool)

(assert (=> b!1377981 m!1550507))

(declare-fun m!1550509 () Bool)

(assert (=> b!1377981 m!1550509))

(declare-fun m!1550511 () Bool)

(assert (=> b!1377968 m!1550511))

(assert (=> b!1377968 m!1550511))

(declare-fun m!1550513 () Bool)

(assert (=> b!1377968 m!1550513))

(declare-fun m!1550515 () Bool)

(assert (=> b!1377985 m!1550515))

(declare-fun m!1550517 () Bool)

(assert (=> b!1377973 m!1550517))

(declare-fun m!1550519 () Bool)

(assert (=> b!1377976 m!1550519))

(declare-fun m!1550521 () Bool)

(assert (=> b!1377976 m!1550521))

(declare-fun m!1550523 () Bool)

(assert (=> b!1377976 m!1550523))

(assert (=> b!1377976 m!1550523))

(declare-fun m!1550525 () Bool)

(assert (=> b!1377976 m!1550525))

(declare-fun m!1550527 () Bool)

(assert (=> start!124630 m!1550527))

(declare-fun m!1550529 () Bool)

(assert (=> start!124630 m!1550529))

(declare-fun m!1550531 () Bool)

(assert (=> b!1377988 m!1550531))

(declare-fun m!1550533 () Bool)

(assert (=> b!1377992 m!1550533))

(declare-fun m!1550535 () Bool)

(assert (=> b!1377966 m!1550535))

(declare-fun m!1550537 () Bool)

(assert (=> b!1377966 m!1550537))

(declare-fun m!1550539 () Bool)

(assert (=> b!1377966 m!1550539))

(assert (=> b!1377966 m!1550539))

(declare-fun m!1550541 () Bool)

(assert (=> b!1377966 m!1550541))

(assert (=> b!1377966 m!1550539))

(declare-fun m!1550543 () Bool)

(assert (=> b!1377979 m!1550543))

(declare-fun m!1550545 () Bool)

(assert (=> b!1377979 m!1550545))

(declare-fun m!1550547 () Bool)

(assert (=> b!1377962 m!1550547))

(assert (=> b!1377975 m!1550539))

(assert (=> b!1377975 m!1550539))

(declare-fun m!1550549 () Bool)

(assert (=> b!1377975 m!1550549))

(assert (=> b!1377975 m!1550539))

(assert (=> b!1377975 m!1550539))

(declare-fun m!1550551 () Bool)

(assert (=> b!1377975 m!1550551))

(declare-fun m!1550553 () Bool)

(assert (=> b!1377971 m!1550553))

(assert (=> b!1377971 m!1550553))

(declare-fun m!1550555 () Bool)

(assert (=> b!1377971 m!1550555))

(declare-fun m!1550557 () Bool)

(assert (=> b!1377969 m!1550557))

(declare-fun m!1550559 () Bool)

(assert (=> b!1377947 m!1550559))

(assert (=> b!1377947 m!1550559))

(declare-fun m!1550561 () Bool)

(assert (=> b!1377947 m!1550561))

(declare-fun m!1550563 () Bool)

(assert (=> b!1377959 m!1550563))

(declare-fun m!1550565 () Bool)

(assert (=> b!1377965 m!1550565))

(declare-fun m!1550567 () Bool)

(assert (=> b!1377965 m!1550567))

(declare-fun m!1550569 () Bool)

(assert (=> b!1377980 m!1550569))

(declare-fun m!1550571 () Bool)

(assert (=> b!1377994 m!1550571))

(declare-fun m!1550573 () Bool)

(assert (=> b!1377994 m!1550573))

(declare-fun m!1550575 () Bool)

(assert (=> b!1377970 m!1550575))

(declare-fun m!1550577 () Bool)

(assert (=> b!1377977 m!1550577))

(declare-fun m!1550579 () Bool)

(assert (=> b!1377977 m!1550579))

(declare-fun m!1550581 () Bool)

(assert (=> b!1377977 m!1550581))

(declare-fun m!1550583 () Bool)

(assert (=> b!1377977 m!1550583))

(declare-fun m!1550585 () Bool)

(assert (=> b!1377977 m!1550585))

(declare-fun m!1550587 () Bool)

(assert (=> b!1377977 m!1550587))

(declare-fun m!1550589 () Bool)

(assert (=> b!1377993 m!1550589))

(declare-fun m!1550591 () Bool)

(assert (=> b!1377978 m!1550591))

(declare-fun m!1550593 () Bool)

(assert (=> b!1377950 m!1550593))

(declare-fun m!1550595 () Bool)

(assert (=> b!1377950 m!1550595))

(declare-fun m!1550597 () Bool)

(assert (=> b!1377989 m!1550597))

(assert (=> b!1377989 m!1550597))

(declare-fun m!1550599 () Bool)

(assert (=> b!1377989 m!1550599))

(declare-fun m!1550601 () Bool)

(assert (=> b!1377958 m!1550601))

(declare-fun m!1550603 () Bool)

(assert (=> b!1377958 m!1550603))

(declare-fun m!1550605 () Bool)

(assert (=> b!1377958 m!1550605))

(declare-fun m!1550607 () Bool)

(assert (=> b!1377958 m!1550607))

(declare-fun m!1550609 () Bool)

(assert (=> b!1377958 m!1550609))

(assert (=> b!1377958 m!1550601))

(declare-fun m!1550611 () Bool)

(assert (=> b!1377990 m!1550611))

(declare-fun m!1550613 () Bool)

(assert (=> b!1377972 m!1550613))

(check-sat (not b!1377994) (not b!1377973) (not b!1377981) (not b!1377970) (not b!1377966) b_and!92301 (not b!1377989) (not b!1377964) (not b!1377972) b_and!92305 (not b!1377984) (not b!1377990) (not b!1377947) (not b_next!34127) (not b!1377975) (not b_next!34123) (not b_next!34131) (not b!1377950) (not b!1377987) (not b!1377968) (not b!1377988) (not start!124630) (not b!1377960) (not b_next!34125) (not b_next!34133) (not b!1377993) (not b!1377991) (not b!1377957) b_and!92307 (not b!1377976) (not b!1377971) (not b!1377985) (not b!1377949) (not b!1377958) (not b!1377980) (not b!1377961) (not b!1377962) (not b!1377978) b_and!92303 (not b!1377969) (not b!1377959) (not b!1377995) (not b!1377992) (not b!1377952) (not b!1377965) (not b!1377951) (not b!1377983) (not b!1377977) (not b_next!34129) b_and!92299 (not b!1377986) (not b!1377967) b_and!92309 (not b!1377979) (not b!1377948))
(check-sat b_and!92301 b_and!92307 b_and!92303 b_and!92305 b_and!92309 (not b_next!34127) (not b_next!34123) (not b_next!34131) (not b_next!34125) (not b_next!34133) (not b_next!34129) b_and!92299)
