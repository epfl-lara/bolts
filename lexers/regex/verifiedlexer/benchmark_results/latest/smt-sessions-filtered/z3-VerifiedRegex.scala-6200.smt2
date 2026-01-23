; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!299646 () Bool)

(assert start!299646)

(declare-fun b!3194063 () Bool)

(declare-fun b_free!84745 () Bool)

(declare-fun b_next!85449 () Bool)

(assert (=> b!3194063 (= b_free!84745 (not b_next!85449))))

(declare-fun tp!1010092 () Bool)

(declare-fun b_and!211887 () Bool)

(assert (=> b!3194063 (= tp!1010092 b_and!211887)))

(declare-fun b_free!84747 () Bool)

(declare-fun b_next!85451 () Bool)

(assert (=> b!3194063 (= b_free!84747 (not b_next!85451))))

(declare-fun tp!1010102 () Bool)

(declare-fun b_and!211889 () Bool)

(assert (=> b!3194063 (= tp!1010102 b_and!211889)))

(declare-fun b!3194064 () Bool)

(declare-fun b_free!84749 () Bool)

(declare-fun b_next!85453 () Bool)

(assert (=> b!3194064 (= b_free!84749 (not b_next!85453))))

(declare-fun tp!1010094 () Bool)

(declare-fun b_and!211891 () Bool)

(assert (=> b!3194064 (= tp!1010094 b_and!211891)))

(declare-fun b_free!84751 () Bool)

(declare-fun b_next!85455 () Bool)

(assert (=> b!3194064 (= b_free!84751 (not b_next!85455))))

(declare-fun tp!1010100 () Bool)

(declare-fun b_and!211893 () Bool)

(assert (=> b!3194064 (= tp!1010100 b_and!211893)))

(declare-fun b!3194069 () Bool)

(declare-fun b_free!84753 () Bool)

(declare-fun b_next!85457 () Bool)

(assert (=> b!3194069 (= b_free!84753 (not b_next!85457))))

(declare-fun tp!1010104 () Bool)

(declare-fun b_and!211895 () Bool)

(assert (=> b!3194069 (= tp!1010104 b_and!211895)))

(declare-fun b_free!84755 () Bool)

(declare-fun b_next!85459 () Bool)

(assert (=> b!3194069 (= b_free!84755 (not b_next!85459))))

(declare-fun tp!1010099 () Bool)

(declare-fun b_and!211897 () Bool)

(assert (=> b!3194069 (= tp!1010099 b_and!211897)))

(declare-fun b!3194053 () Bool)

(declare-fun e!1991093 () Bool)

(assert (=> b!3194053 (= e!1991093 true)))

(declare-datatypes ((C!20064 0))(
  ( (C!20065 (val!12080 Int)) )
))
(declare-datatypes ((List!36116 0))(
  ( (Nil!35992) (Cons!35992 (h!41412 C!20064) (t!236531 List!36116)) )
))
(declare-fun lt!1075995 () List!36116)

(declare-datatypes ((Regex!9939 0))(
  ( (ElementMatch!9939 (c!536156 C!20064)) (Concat!15349 (regOne!20390 Regex!9939) (regTwo!20390 Regex!9939)) (EmptyExpr!9939) (Star!9939 (reg!10268 Regex!9939)) (EmptyLang!9939) (Union!9939 (regOne!20391 Regex!9939) (regTwo!20391 Regex!9939)) )
))
(declare-datatypes ((List!36117 0))(
  ( (Nil!35993) (Cons!35993 (h!41413 (_ BitVec 16)) (t!236532 List!36117)) )
))
(declare-datatypes ((TokenValue!5410 0))(
  ( (FloatLiteralValue!10820 (text!38315 List!36117)) (TokenValueExt!5409 (__x!23037 Int)) (Broken!27050 (value!168064 List!36117)) (Object!5533) (End!5410) (Def!5410) (Underscore!5410) (Match!5410) (Else!5410) (Error!5410) (Case!5410) (If!5410) (Extends!5410) (Abstract!5410) (Class!5410) (Val!5410) (DelimiterValue!10820 (del!5470 List!36117)) (KeywordValue!5416 (value!168065 List!36117)) (CommentValue!10820 (value!168066 List!36117)) (WhitespaceValue!10820 (value!168067 List!36117)) (IndentationValue!5410 (value!168068 List!36117)) (String!40383) (Int32!5410) (Broken!27051 (value!168069 List!36117)) (Boolean!5411) (Unit!50395) (OperatorValue!5413 (op!5470 List!36117)) (IdentifierValue!10820 (value!168070 List!36117)) (IdentifierValue!10821 (value!168071 List!36117)) (WhitespaceValue!10821 (value!168072 List!36117)) (True!10820) (False!10820) (Broken!27052 (value!168073 List!36117)) (Broken!27053 (value!168074 List!36117)) (True!10821) (RightBrace!5410) (RightBracket!5410) (Colon!5410) (Null!5410) (Comma!5410) (LeftBracket!5410) (False!10821) (LeftBrace!5410) (ImaginaryLiteralValue!5410 (text!38316 List!36117)) (StringLiteralValue!16230 (value!168075 List!36117)) (EOFValue!5410 (value!168076 List!36117)) (IdentValue!5410 (value!168077 List!36117)) (DelimiterValue!10821 (value!168078 List!36117)) (DedentValue!5410 (value!168079 List!36117)) (NewLineValue!5410 (value!168080 List!36117)) (IntegerValue!16230 (value!168081 (_ BitVec 32)) (text!38317 List!36117)) (IntegerValue!16231 (value!168082 Int) (text!38318 List!36117)) (Times!5410) (Or!5410) (Equal!5410) (Minus!5410) (Broken!27054 (value!168083 List!36117)) (And!5410) (Div!5410) (LessEqual!5410) (Mod!5410) (Concat!15350) (Not!5410) (Plus!5410) (SpaceValue!5410 (value!168084 List!36117)) (IntegerValue!16232 (value!168085 Int) (text!38319 List!36117)) (StringLiteralValue!16231 (text!38320 List!36117)) (FloatLiteralValue!10821 (text!38321 List!36117)) (BytesLiteralValue!5410 (value!168086 List!36117)) (CommentValue!10821 (value!168087 List!36117)) (StringLiteralValue!16232 (value!168088 List!36117)) (ErrorTokenValue!5410 (msg!5471 List!36117)) )
))
(declare-datatypes ((IArray!21475 0))(
  ( (IArray!21476 (innerList!10795 List!36116)) )
))
(declare-datatypes ((Conc!10735 0))(
  ( (Node!10735 (left!27975 Conc!10735) (right!28305 Conc!10735) (csize!21700 Int) (cheight!10946 Int)) (Leaf!16936 (xs!13853 IArray!21475) (csize!21701 Int)) (Empty!10735) )
))
(declare-datatypes ((BalanceConc!21084 0))(
  ( (BalanceConc!21085 (c!536157 Conc!10735)) )
))
(declare-datatypes ((String!40384 0))(
  ( (String!40385 (value!168089 String)) )
))
(declare-datatypes ((TokenValueInjection!10248 0))(
  ( (TokenValueInjection!10249 (toValue!7248 Int) (toChars!7107 Int)) )
))
(declare-datatypes ((Rule!10160 0))(
  ( (Rule!10161 (regex!5180 Regex!9939) (tag!5698 String!40384) (isSeparator!5180 Bool) (transformation!5180 TokenValueInjection!10248)) )
))
(declare-datatypes ((Token!9726 0))(
  ( (Token!9727 (value!168090 TokenValue!5410) (rule!7612 Rule!10160) (size!27115 Int) (originalCharacters!5894 List!36116)) )
))
(declare-datatypes ((List!36118 0))(
  ( (Nil!35994) (Cons!35994 (h!41414 Token!9726) (t!236533 List!36118)) )
))
(declare-fun tokens!494 () List!36118)

(declare-fun lt!1075996 () List!36116)

(declare-fun ++!8612 (List!36116 List!36116) List!36116)

(declare-fun list!12789 (BalanceConc!21084) List!36116)

(declare-fun charsOf!3196 (Token!9726) BalanceConc!21084)

(assert (=> b!3194053 (= lt!1075995 (++!8612 (list!12789 (charsOf!3196 (h!41414 (t!236533 tokens!494)))) lt!1075996))))

(declare-fun lt!1075999 () List!36116)

(declare-fun lt!1075998 () List!36116)

(assert (=> b!3194053 (= lt!1075999 (++!8612 lt!1075996 lt!1075998))))

(declare-fun separatorToken!241 () Token!9726)

(assert (=> b!3194053 (= lt!1075996 (list!12789 (charsOf!3196 separatorToken!241)))))

(declare-datatypes ((LexerInterface!4769 0))(
  ( (LexerInterfaceExt!4766 (__x!23038 Int)) (Lexer!4767) )
))
(declare-fun thiss!18206 () LexerInterface!4769)

(declare-fun printWithSeparatorTokenList!114 (LexerInterface!4769 List!36118 Token!9726) List!36116)

(assert (=> b!3194053 (= lt!1075998 (printWithSeparatorTokenList!114 thiss!18206 (t!236533 tokens!494) separatorToken!241))))

(declare-fun lt!1076000 () List!36116)

(assert (=> b!3194053 (= lt!1076000 (printWithSeparatorTokenList!114 thiss!18206 tokens!494 separatorToken!241))))

(declare-fun e!1991076 () Bool)

(declare-fun tp!1010095 () Bool)

(declare-fun b!3194054 () Bool)

(declare-fun e!1991082 () Bool)

(declare-fun inv!21 (TokenValue!5410) Bool)

(assert (=> b!3194054 (= e!1991082 (and (inv!21 (value!168090 (h!41414 tokens!494))) e!1991076 tp!1010095))))

(declare-fun b!3194055 () Bool)

(declare-fun res!1299362 () Bool)

(declare-fun e!1991088 () Bool)

(assert (=> b!3194055 (=> res!1299362 e!1991088)))

(declare-fun lt!1076006 () List!36116)

(declare-datatypes ((List!36119 0))(
  ( (Nil!35995) (Cons!35995 (h!41415 Rule!10160) (t!236534 List!36119)) )
))
(declare-fun rules!2135 () List!36119)

(declare-datatypes ((IArray!21477 0))(
  ( (IArray!21478 (innerList!10796 List!36118)) )
))
(declare-datatypes ((Conc!10736 0))(
  ( (Node!10736 (left!27976 Conc!10736) (right!28306 Conc!10736) (csize!21702 Int) (cheight!10947 Int)) (Leaf!16937 (xs!13854 IArray!21477) (csize!21703 Int)) (Empty!10736) )
))
(declare-datatypes ((BalanceConc!21086 0))(
  ( (BalanceConc!21087 (c!536158 Conc!10736)) )
))
(declare-fun isEmpty!20090 (BalanceConc!21086) Bool)

(declare-datatypes ((tuple2!35356 0))(
  ( (tuple2!35357 (_1!20812 BalanceConc!21086) (_2!20812 BalanceConc!21084)) )
))
(declare-fun lex!2099 (LexerInterface!4769 List!36119 BalanceConc!21084) tuple2!35356)

(declare-fun seqFromList!3431 (List!36116) BalanceConc!21084)

(assert (=> b!3194055 (= res!1299362 (isEmpty!20090 (_1!20812 (lex!2099 thiss!18206 rules!2135 (seqFromList!3431 lt!1076006)))))))

(declare-fun b!3194056 () Bool)

(declare-fun e!1991086 () Bool)

(declare-fun tp!1010103 () Bool)

(declare-fun e!1991080 () Bool)

(declare-fun inv!48838 (String!40384) Bool)

(declare-fun inv!48841 (TokenValueInjection!10248) Bool)

(assert (=> b!3194056 (= e!1991080 (and tp!1010103 (inv!48838 (tag!5698 (h!41415 rules!2135))) (inv!48841 (transformation!5180 (h!41415 rules!2135))) e!1991086))))

(declare-fun b!3194057 () Bool)

(declare-fun res!1299351 () Bool)

(assert (=> b!3194057 (=> res!1299351 e!1991088)))

(declare-fun rulesProduceIndividualToken!2261 (LexerInterface!4769 List!36119 Token!9726) Bool)

(assert (=> b!3194057 (= res!1299351 (not (rulesProduceIndividualToken!2261 thiss!18206 rules!2135 (h!41414 tokens!494))))))

(declare-fun b!3194058 () Bool)

(declare-fun e!1991087 () Bool)

(declare-fun tp!1010098 () Bool)

(declare-fun e!1991078 () Bool)

(assert (=> b!3194058 (= e!1991078 (and tp!1010098 (inv!48838 (tag!5698 (rule!7612 separatorToken!241))) (inv!48841 (transformation!5180 (rule!7612 separatorToken!241))) e!1991087))))

(declare-fun b!3194059 () Bool)

(declare-fun res!1299357 () Bool)

(declare-fun e!1991089 () Bool)

(assert (=> b!3194059 (=> (not res!1299357) (not e!1991089))))

(declare-fun lambda!116919 () Int)

(declare-fun forall!7320 (List!36118 Int) Bool)

(assert (=> b!3194059 (= res!1299357 (forall!7320 tokens!494 lambda!116919))))

(declare-fun b!3194060 () Bool)

(declare-fun e!1991083 () Bool)

(assert (=> b!3194060 (= e!1991089 (not e!1991083))))

(declare-fun res!1299358 () Bool)

(assert (=> b!3194060 (=> res!1299358 e!1991083)))

(declare-fun lt!1075997 () List!36116)

(declare-fun lt!1076005 () List!36116)

(assert (=> b!3194060 (= res!1299358 (not (= lt!1075997 lt!1076005)))))

(declare-fun printList!1319 (LexerInterface!4769 List!36118) List!36116)

(assert (=> b!3194060 (= lt!1076005 (printList!1319 thiss!18206 (Cons!35994 (h!41414 tokens!494) Nil!35994)))))

(declare-fun lt!1076003 () BalanceConc!21084)

(assert (=> b!3194060 (= lt!1075997 (list!12789 lt!1076003))))

(declare-fun lt!1076004 () BalanceConc!21086)

(declare-fun printTailRec!1266 (LexerInterface!4769 BalanceConc!21086 Int BalanceConc!21084) BalanceConc!21084)

(assert (=> b!3194060 (= lt!1076003 (printTailRec!1266 thiss!18206 lt!1076004 0 (BalanceConc!21085 Empty!10735)))))

(declare-fun print!1834 (LexerInterface!4769 BalanceConc!21086) BalanceConc!21084)

(assert (=> b!3194060 (= lt!1076003 (print!1834 thiss!18206 lt!1076004))))

(declare-fun singletonSeq!2276 (Token!9726) BalanceConc!21086)

(assert (=> b!3194060 (= lt!1076004 (singletonSeq!2276 (h!41414 tokens!494)))))

(declare-fun b!3194062 () Bool)

(declare-fun res!1299364 () Bool)

(assert (=> b!3194062 (=> (not res!1299364) (not e!1991089))))

(declare-fun sepAndNonSepRulesDisjointChars!1374 (List!36119 List!36119) Bool)

(assert (=> b!3194062 (= res!1299364 (sepAndNonSepRulesDisjointChars!1374 rules!2135 rules!2135))))

(assert (=> b!3194063 (= e!1991086 (and tp!1010092 tp!1010102))))

(declare-fun e!1991084 () Bool)

(assert (=> b!3194064 (= e!1991084 (and tp!1010094 tp!1010100))))

(declare-fun b!3194065 () Bool)

(declare-fun res!1299361 () Bool)

(assert (=> b!3194065 (=> (not res!1299361) (not e!1991089))))

(declare-fun rulesProduceEachTokenIndividually!1220 (LexerInterface!4769 List!36119 BalanceConc!21086) Bool)

(declare-fun seqFromList!3432 (List!36118) BalanceConc!21086)

(assert (=> b!3194065 (= res!1299361 (rulesProduceEachTokenIndividually!1220 thiss!18206 rules!2135 (seqFromList!3432 tokens!494)))))

(declare-fun b!3194066 () Bool)

(declare-fun res!1299355 () Bool)

(assert (=> b!3194066 (=> (not res!1299355) (not e!1991089))))

(assert (=> b!3194066 (= res!1299355 (isSeparator!5180 (rule!7612 separatorToken!241)))))

(declare-fun b!3194067 () Bool)

(assert (=> b!3194067 (= e!1991083 e!1991088)))

(declare-fun res!1299356 () Bool)

(assert (=> b!3194067 (=> res!1299356 e!1991088)))

(assert (=> b!3194067 (= res!1299356 (or (not (= lt!1076005 lt!1076006)) (not (= lt!1075997 lt!1076006))))))

(assert (=> b!3194067 (= lt!1076006 (list!12789 (charsOf!3196 (h!41414 tokens!494))))))

(declare-fun b!3194068 () Bool)

(declare-fun res!1299354 () Bool)

(assert (=> b!3194068 (=> (not res!1299354) (not e!1991089))))

(assert (=> b!3194068 (= res!1299354 (rulesProduceIndividualToken!2261 thiss!18206 rules!2135 separatorToken!241))))

(assert (=> b!3194069 (= e!1991087 (and tp!1010104 tp!1010099))))

(declare-fun b!3194070 () Bool)

(declare-fun tp!1010096 () Bool)

(assert (=> b!3194070 (= e!1991076 (and tp!1010096 (inv!48838 (tag!5698 (rule!7612 (h!41414 tokens!494)))) (inv!48841 (transformation!5180 (rule!7612 (h!41414 tokens!494)))) e!1991084))))

(declare-fun b!3194071 () Bool)

(declare-fun res!1299353 () Bool)

(assert (=> b!3194071 (=> (not res!1299353) (not e!1991089))))

(get-info :version)

(assert (=> b!3194071 (= res!1299353 (and (not ((_ is Nil!35994) tokens!494)) (not ((_ is Nil!35994) (t!236533 tokens!494)))))))

(declare-fun b!3194072 () Bool)

(assert (=> b!3194072 (= e!1991088 e!1991093)))

(declare-fun res!1299359 () Bool)

(assert (=> b!3194072 (=> res!1299359 e!1991093)))

(assert (=> b!3194072 (= res!1299359 (or (isSeparator!5180 (rule!7612 (h!41414 tokens!494))) (isSeparator!5180 (rule!7612 (h!41414 (t!236533 tokens!494))))))))

(declare-datatypes ((Unit!50396 0))(
  ( (Unit!50397) )
))
(declare-fun lt!1076001 () Unit!50396)

(declare-fun forallContained!1151 (List!36118 Int Token!9726) Unit!50396)

(assert (=> b!3194072 (= lt!1076001 (forallContained!1151 tokens!494 lambda!116919 (h!41414 (t!236533 tokens!494))))))

(declare-fun lt!1076002 () Unit!50396)

(assert (=> b!3194072 (= lt!1076002 (forallContained!1151 tokens!494 lambda!116919 (h!41414 tokens!494)))))

(declare-fun e!1991079 () Bool)

(declare-fun tp!1010101 () Bool)

(declare-fun b!3194073 () Bool)

(declare-fun inv!48842 (Token!9726) Bool)

(assert (=> b!3194073 (= e!1991079 (and (inv!48842 (h!41414 tokens!494)) e!1991082 tp!1010101))))

(declare-fun b!3194074 () Bool)

(declare-fun res!1299363 () Bool)

(assert (=> b!3194074 (=> (not res!1299363) (not e!1991089))))

(declare-fun rulesInvariant!4166 (LexerInterface!4769 List!36119) Bool)

(assert (=> b!3194074 (= res!1299363 (rulesInvariant!4166 thiss!18206 rules!2135))))

(declare-fun res!1299352 () Bool)

(assert (=> start!299646 (=> (not res!1299352) (not e!1991089))))

(assert (=> start!299646 (= res!1299352 ((_ is Lexer!4767) thiss!18206))))

(assert (=> start!299646 e!1991089))

(assert (=> start!299646 true))

(declare-fun e!1991091 () Bool)

(assert (=> start!299646 e!1991091))

(assert (=> start!299646 e!1991079))

(declare-fun e!1991081 () Bool)

(assert (=> start!299646 (and (inv!48842 separatorToken!241) e!1991081)))

(declare-fun b!3194061 () Bool)

(declare-fun tp!1010097 () Bool)

(assert (=> b!3194061 (= e!1991091 (and e!1991080 tp!1010097))))

(declare-fun b!3194075 () Bool)

(declare-fun res!1299360 () Bool)

(assert (=> b!3194075 (=> (not res!1299360) (not e!1991089))))

(declare-fun isEmpty!20091 (List!36119) Bool)

(assert (=> b!3194075 (= res!1299360 (not (isEmpty!20091 rules!2135)))))

(declare-fun b!3194076 () Bool)

(declare-fun tp!1010093 () Bool)

(assert (=> b!3194076 (= e!1991081 (and (inv!21 (value!168090 separatorToken!241)) e!1991078 tp!1010093))))

(assert (= (and start!299646 res!1299352) b!3194075))

(assert (= (and b!3194075 res!1299360) b!3194074))

(assert (= (and b!3194074 res!1299363) b!3194065))

(assert (= (and b!3194065 res!1299361) b!3194068))

(assert (= (and b!3194068 res!1299354) b!3194066))

(assert (= (and b!3194066 res!1299355) b!3194059))

(assert (= (and b!3194059 res!1299357) b!3194062))

(assert (= (and b!3194062 res!1299364) b!3194071))

(assert (= (and b!3194071 res!1299353) b!3194060))

(assert (= (and b!3194060 (not res!1299358)) b!3194067))

(assert (= (and b!3194067 (not res!1299356)) b!3194057))

(assert (= (and b!3194057 (not res!1299351)) b!3194055))

(assert (= (and b!3194055 (not res!1299362)) b!3194072))

(assert (= (and b!3194072 (not res!1299359)) b!3194053))

(assert (= b!3194056 b!3194063))

(assert (= b!3194061 b!3194056))

(assert (= (and start!299646 ((_ is Cons!35995) rules!2135)) b!3194061))

(assert (= b!3194070 b!3194064))

(assert (= b!3194054 b!3194070))

(assert (= b!3194073 b!3194054))

(assert (= (and start!299646 ((_ is Cons!35994) tokens!494)) b!3194073))

(assert (= b!3194058 b!3194069))

(assert (= b!3194076 b!3194058))

(assert (= start!299646 b!3194076))

(declare-fun m!3453779 () Bool)

(assert (=> b!3194058 m!3453779))

(declare-fun m!3453781 () Bool)

(assert (=> b!3194058 m!3453781))

(declare-fun m!3453783 () Bool)

(assert (=> b!3194076 m!3453783))

(declare-fun m!3453785 () Bool)

(assert (=> b!3194065 m!3453785))

(assert (=> b!3194065 m!3453785))

(declare-fun m!3453787 () Bool)

(assert (=> b!3194065 m!3453787))

(declare-fun m!3453789 () Bool)

(assert (=> b!3194055 m!3453789))

(assert (=> b!3194055 m!3453789))

(declare-fun m!3453791 () Bool)

(assert (=> b!3194055 m!3453791))

(declare-fun m!3453793 () Bool)

(assert (=> b!3194055 m!3453793))

(declare-fun m!3453795 () Bool)

(assert (=> b!3194067 m!3453795))

(assert (=> b!3194067 m!3453795))

(declare-fun m!3453797 () Bool)

(assert (=> b!3194067 m!3453797))

(declare-fun m!3453799 () Bool)

(assert (=> b!3194070 m!3453799))

(declare-fun m!3453801 () Bool)

(assert (=> b!3194070 m!3453801))

(declare-fun m!3453803 () Bool)

(assert (=> b!3194059 m!3453803))

(declare-fun m!3453805 () Bool)

(assert (=> b!3194062 m!3453805))

(declare-fun m!3453807 () Bool)

(assert (=> b!3194054 m!3453807))

(declare-fun m!3453809 () Bool)

(assert (=> start!299646 m!3453809))

(declare-fun m!3453811 () Bool)

(assert (=> b!3194068 m!3453811))

(declare-fun m!3453813 () Bool)

(assert (=> b!3194075 m!3453813))

(declare-fun m!3453815 () Bool)

(assert (=> b!3194053 m!3453815))

(declare-fun m!3453817 () Bool)

(assert (=> b!3194053 m!3453817))

(declare-fun m!3453819 () Bool)

(assert (=> b!3194053 m!3453819))

(assert (=> b!3194053 m!3453815))

(declare-fun m!3453821 () Bool)

(assert (=> b!3194053 m!3453821))

(assert (=> b!3194053 m!3453817))

(declare-fun m!3453823 () Bool)

(assert (=> b!3194053 m!3453823))

(declare-fun m!3453825 () Bool)

(assert (=> b!3194053 m!3453825))

(assert (=> b!3194053 m!3453821))

(declare-fun m!3453827 () Bool)

(assert (=> b!3194053 m!3453827))

(declare-fun m!3453829 () Bool)

(assert (=> b!3194053 m!3453829))

(declare-fun m!3453831 () Bool)

(assert (=> b!3194060 m!3453831))

(declare-fun m!3453833 () Bool)

(assert (=> b!3194060 m!3453833))

(declare-fun m!3453835 () Bool)

(assert (=> b!3194060 m!3453835))

(declare-fun m!3453837 () Bool)

(assert (=> b!3194060 m!3453837))

(declare-fun m!3453839 () Bool)

(assert (=> b!3194060 m!3453839))

(declare-fun m!3453841 () Bool)

(assert (=> b!3194074 m!3453841))

(declare-fun m!3453843 () Bool)

(assert (=> b!3194056 m!3453843))

(declare-fun m!3453845 () Bool)

(assert (=> b!3194056 m!3453845))

(declare-fun m!3453847 () Bool)

(assert (=> b!3194057 m!3453847))

(declare-fun m!3453849 () Bool)

(assert (=> b!3194073 m!3453849))

(declare-fun m!3453851 () Bool)

(assert (=> b!3194072 m!3453851))

(declare-fun m!3453853 () Bool)

(assert (=> b!3194072 m!3453853))

(check-sat (not b!3194056) (not b!3194061) (not b!3194060) b_and!211895 (not b!3194076) (not b_next!85457) (not b_next!85459) (not b!3194055) (not b!3194065) (not b!3194075) (not b_next!85451) (not b!3194057) (not b!3194067) (not b!3194068) (not b!3194072) b_and!211893 (not b!3194058) b_and!211889 b_and!211887 (not b_next!85455) b_and!211897 (not b!3194070) (not b!3194074) (not start!299646) (not b_next!85453) (not b_next!85449) (not b!3194054) (not b!3194053) (not b!3194062) b_and!211891 (not b!3194059) (not b!3194073))
(check-sat (not b_next!85451) b_and!211893 b_and!211895 (not b_next!85457) (not b_next!85459) b_and!211891 b_and!211889 b_and!211887 (not b_next!85455) b_and!211897 (not b_next!85453) (not b_next!85449))
