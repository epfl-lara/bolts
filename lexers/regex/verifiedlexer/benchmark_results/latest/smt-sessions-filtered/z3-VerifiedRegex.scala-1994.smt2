; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!101494 () Bool)

(assert start!101494)

(declare-fun b!1159566 () Bool)

(declare-fun e!742127 () Bool)

(assert (=> b!1159566 (= e!742127 true)))

(declare-fun b!1159565 () Bool)

(declare-fun e!742126 () Bool)

(assert (=> b!1159565 (= e!742126 e!742127)))

(declare-fun b!1159551 () Bool)

(assert (=> b!1159551 e!742126))

(assert (= b!1159565 b!1159566))

(assert (= b!1159551 b!1159565))

(declare-fun b!1159545 () Bool)

(declare-fun res!522307 () Bool)

(declare-fun e!742121 () Bool)

(assert (=> b!1159545 (=> res!522307 e!742121)))

(declare-datatypes ((List!11375 0))(
  ( (Nil!11351) (Cons!11351 (h!16752 (_ BitVec 16)) (t!109475 List!11375)) )
))
(declare-datatypes ((TokenValue!2035 0))(
  ( (FloatLiteralValue!4070 (text!14690 List!11375)) (TokenValueExt!2034 (__x!7781 Int)) (Broken!10175 (value!64087 List!11375)) (Object!2058) (End!2035) (Def!2035) (Underscore!2035) (Match!2035) (Else!2035) (Error!2035) (Case!2035) (If!2035) (Extends!2035) (Abstract!2035) (Class!2035) (Val!2035) (DelimiterValue!4070 (del!2095 List!11375)) (KeywordValue!2041 (value!64088 List!11375)) (CommentValue!4070 (value!64089 List!11375)) (WhitespaceValue!4070 (value!64090 List!11375)) (IndentationValue!2035 (value!64091 List!11375)) (String!13762) (Int32!2035) (Broken!10176 (value!64092 List!11375)) (Boolean!2036) (Unit!17356) (OperatorValue!2038 (op!2095 List!11375)) (IdentifierValue!4070 (value!64093 List!11375)) (IdentifierValue!4071 (value!64094 List!11375)) (WhitespaceValue!4071 (value!64095 List!11375)) (True!4070) (False!4070) (Broken!10177 (value!64096 List!11375)) (Broken!10178 (value!64097 List!11375)) (True!4071) (RightBrace!2035) (RightBracket!2035) (Colon!2035) (Null!2035) (Comma!2035) (LeftBracket!2035) (False!4071) (LeftBrace!2035) (ImaginaryLiteralValue!2035 (text!14691 List!11375)) (StringLiteralValue!6105 (value!64098 List!11375)) (EOFValue!2035 (value!64099 List!11375)) (IdentValue!2035 (value!64100 List!11375)) (DelimiterValue!4071 (value!64101 List!11375)) (DedentValue!2035 (value!64102 List!11375)) (NewLineValue!2035 (value!64103 List!11375)) (IntegerValue!6105 (value!64104 (_ BitVec 32)) (text!14692 List!11375)) (IntegerValue!6106 (value!64105 Int) (text!14693 List!11375)) (Times!2035) (Or!2035) (Equal!2035) (Minus!2035) (Broken!10179 (value!64106 List!11375)) (And!2035) (Div!2035) (LessEqual!2035) (Mod!2035) (Concat!5274) (Not!2035) (Plus!2035) (SpaceValue!2035 (value!64107 List!11375)) (IntegerValue!6107 (value!64108 Int) (text!14694 List!11375)) (StringLiteralValue!6106 (text!14695 List!11375)) (FloatLiteralValue!4071 (text!14696 List!11375)) (BytesLiteralValue!2035 (value!64109 List!11375)) (CommentValue!4071 (value!64110 List!11375)) (StringLiteralValue!6107 (value!64111 List!11375)) (ErrorTokenValue!2035 (msg!2096 List!11375)) )
))
(declare-datatypes ((C!6796 0))(
  ( (C!6797 (val!3654 Int)) )
))
(declare-datatypes ((Regex!3239 0))(
  ( (ElementMatch!3239 (c!194178 C!6796)) (Concat!5275 (regOne!6990 Regex!3239) (regTwo!6990 Regex!3239)) (EmptyExpr!3239) (Star!3239 (reg!3568 Regex!3239)) (EmptyLang!3239) (Union!3239 (regOne!6991 Regex!3239) (regTwo!6991 Regex!3239)) )
))
(declare-datatypes ((String!13763 0))(
  ( (String!13764 (value!64112 String)) )
))
(declare-datatypes ((List!11376 0))(
  ( (Nil!11352) (Cons!11352 (h!16753 C!6796) (t!109476 List!11376)) )
))
(declare-datatypes ((IArray!7405 0))(
  ( (IArray!7406 (innerList!3760 List!11376)) )
))
(declare-datatypes ((Conc!3700 0))(
  ( (Node!3700 (left!9906 Conc!3700) (right!10236 Conc!3700) (csize!7630 Int) (cheight!3911 Int)) (Leaf!5695 (xs!6405 IArray!7405) (csize!7631 Int)) (Empty!3700) )
))
(declare-datatypes ((BalanceConc!7422 0))(
  ( (BalanceConc!7423 (c!194179 Conc!3700)) )
))
(declare-datatypes ((TokenValueInjection!3770 0))(
  ( (TokenValueInjection!3771 (toValue!3070 Int) (toChars!2929 Int)) )
))
(declare-datatypes ((Rule!3738 0))(
  ( (Rule!3739 (regex!1969 Regex!3239) (tag!2231 String!13763) (isSeparator!1969 Bool) (transformation!1969 TokenValueInjection!3770)) )
))
(declare-datatypes ((Token!3600 0))(
  ( (Token!3601 (value!64113 TokenValue!2035) (rule!3390 Rule!3738) (size!8924 Int) (originalCharacters!2523 List!11376)) )
))
(declare-datatypes ((List!11377 0))(
  ( (Nil!11353) (Cons!11353 (h!16754 Token!3600) (t!109477 List!11377)) )
))
(declare-datatypes ((IArray!7407 0))(
  ( (IArray!7408 (innerList!3761 List!11377)) )
))
(declare-datatypes ((Conc!3701 0))(
  ( (Node!3701 (left!9907 Conc!3701) (right!10237 Conc!3701) (csize!7632 Int) (cheight!3912 Int)) (Leaf!5696 (xs!6406 IArray!7407) (csize!7633 Int)) (Empty!3701) )
))
(declare-datatypes ((BalanceConc!7424 0))(
  ( (BalanceConc!7425 (c!194180 Conc!3701)) )
))
(declare-fun lt!393990 () BalanceConc!7424)

(declare-fun lambda!47087 () Int)

(declare-fun forall!2940 (BalanceConc!7424 Int) Bool)

(assert (=> b!1159545 (= res!522307 (not (forall!2940 lt!393990 lambda!47087)))))

(declare-fun b!1159546 () Bool)

(declare-fun e!742117 () Bool)

(declare-fun e!742113 () Bool)

(assert (=> b!1159546 (= e!742117 e!742113)))

(declare-fun res!522313 () Bool)

(assert (=> b!1159546 (=> (not res!522313) (not e!742113))))

(declare-datatypes ((List!11378 0))(
  ( (Nil!11354) (Cons!11354 (h!16755 Rule!3738) (t!109478 List!11378)) )
))
(declare-datatypes ((PrintableTokens!624 0))(
  ( (PrintableTokens!625 (rules!9460 List!11378) (tokens!1568 BalanceConc!7424)) )
))
(declare-fun thiss!10527 () PrintableTokens!624)

(declare-fun lt!393984 () List!11377)

(declare-datatypes ((LexerInterface!1664 0))(
  ( (LexerInterfaceExt!1661 (__x!7782 Int)) (Lexer!1662) )
))
(declare-fun rulesProduceIndividualToken!701 (LexerInterface!1664 List!11378 Token!3600) Bool)

(assert (=> b!1159546 (= res!522313 (rulesProduceIndividualToken!701 Lexer!1662 (rules!9460 thiss!10527) (h!16754 lt!393984)))))

(declare-fun b!1159547 () Bool)

(declare-fun e!742115 () Bool)

(declare-fun lt!393989 () List!11377)

(declare-fun rulesProduceEachTokenIndividuallyList!532 (LexerInterface!1664 List!11378 List!11377) Bool)

(assert (=> b!1159547 (= e!742115 (rulesProduceEachTokenIndividuallyList!532 Lexer!1662 (rules!9460 thiss!10527) (t!109477 lt!393989)))))

(declare-fun res!522317 () Bool)

(declare-fun e!742111 () Bool)

(assert (=> start!101494 (=> (not res!522317) (not e!742111))))

(declare-fun from!787 () Int)

(declare-fun to!267 () Int)

(assert (=> start!101494 (= res!522317 (and (<= 0 from!787) (<= from!787 to!267)))))

(assert (=> start!101494 e!742111))

(assert (=> start!101494 true))

(declare-fun e!742112 () Bool)

(declare-fun inv!14924 (PrintableTokens!624) Bool)

(assert (=> start!101494 (and (inv!14924 thiss!10527) e!742112)))

(declare-fun b!1159548 () Bool)

(declare-fun res!522306 () Bool)

(assert (=> b!1159548 (=> res!522306 e!742121)))

(declare-fun isEmpty!6965 (List!11378) Bool)

(assert (=> b!1159548 (= res!522306 (isEmpty!6965 (rules!9460 thiss!10527)))))

(declare-fun b!1159549 () Bool)

(declare-fun lt!393985 () Bool)

(assert (=> b!1159549 (= e!742121 lt!393985)))

(declare-fun b!1159550 () Bool)

(declare-fun e!742118 () Bool)

(assert (=> b!1159550 (= e!742111 e!742118)))

(declare-fun res!522310 () Bool)

(assert (=> b!1159550 (=> (not res!522310) (not e!742118))))

(declare-fun rulesInvariant!1538 (LexerInterface!1664 List!11378) Bool)

(assert (=> b!1159550 (= res!522310 (rulesInvariant!1538 Lexer!1662 (rules!9460 thiss!10527)))))

(declare-datatypes ((Unit!17357 0))(
  ( (Unit!17358) )
))
(declare-fun lt!393987 () Unit!17357)

(declare-fun lemmaInvariant!156 (PrintableTokens!624) Unit!17357)

(assert (=> b!1159550 (= lt!393987 (lemmaInvariant!156 thiss!10527))))

(declare-fun e!742116 () Bool)

(assert (=> b!1159551 (= e!742118 (not e!742116))))

(declare-fun res!522314 () Bool)

(assert (=> b!1159551 (=> res!522314 e!742116)))

(assert (=> b!1159551 (= res!522314 (not (forall!2940 (tokens!1568 thiss!10527) lambda!47087)))))

(assert (=> b!1159551 (= (rulesProduceEachTokenIndividuallyList!532 Lexer!1662 (rules!9460 thiss!10527) lt!393984) e!742117)))

(declare-fun res!522308 () Bool)

(assert (=> b!1159551 (=> res!522308 e!742117)))

(get-info :version)

(assert (=> b!1159551 (= res!522308 (not ((_ is Cons!11353) lt!393984)))))

(declare-fun list!4182 (BalanceConc!7424) List!11377)

(assert (=> b!1159551 (= lt!393984 (list!4182 (tokens!1568 thiss!10527)))))

(declare-fun rulesProduceEachTokenIndividually!703 (LexerInterface!1664 List!11378 BalanceConc!7424) Bool)

(assert (=> b!1159551 (= (rulesProduceEachTokenIndividually!703 Lexer!1662 (rules!9460 thiss!10527) (tokens!1568 thiss!10527)) (forall!2940 (tokens!1568 thiss!10527) lambda!47087))))

(declare-fun e!742120 () Bool)

(declare-fun b!1159552 () Bool)

(declare-fun e!742119 () Bool)

(assert (=> b!1159552 (= e!742119 (= (rulesProduceEachTokenIndividuallyList!532 Lexer!1662 (rules!9460 thiss!10527) lt!393989) e!742120))))

(declare-fun res!522311 () Bool)

(assert (=> b!1159552 (=> res!522311 e!742120)))

(assert (=> b!1159552 (= res!522311 (not ((_ is Cons!11353) lt!393989)))))

(declare-fun b!1159553 () Bool)

(declare-fun tp!333636 () Bool)

(declare-fun e!742114 () Bool)

(declare-fun inv!14925 (BalanceConc!7424) Bool)

(assert (=> b!1159553 (= e!742112 (and tp!333636 (inv!14925 (tokens!1568 thiss!10527)) e!742114))))

(declare-fun b!1159554 () Bool)

(assert (=> b!1159554 (= e!742113 (rulesProduceEachTokenIndividuallyList!532 Lexer!1662 (rules!9460 thiss!10527) (t!109477 lt!393984)))))

(declare-fun b!1159555 () Bool)

(declare-fun res!522312 () Bool)

(assert (=> b!1159555 (=> (not res!522312) (not e!742111))))

(declare-fun size!8925 (BalanceConc!7424) Int)

(assert (=> b!1159555 (= res!522312 (<= to!267 (size!8925 (tokens!1568 thiss!10527))))))

(declare-fun b!1159556 () Bool)

(declare-fun tp!333635 () Bool)

(declare-fun inv!14926 (Conc!3701) Bool)

(assert (=> b!1159556 (= e!742114 (and (inv!14926 (c!194180 (tokens!1568 thiss!10527))) tp!333635))))

(declare-fun b!1159557 () Bool)

(assert (=> b!1159557 (= e!742116 e!742121)))

(declare-fun res!522316 () Bool)

(assert (=> b!1159557 (=> res!522316 e!742121)))

(declare-fun forall!2941 (List!11377 Int) Bool)

(assert (=> b!1159557 (= res!522316 (not (forall!2941 lt!393989 lambda!47087)))))

(assert (=> b!1159557 e!742119))

(declare-fun res!522309 () Bool)

(assert (=> b!1159557 (=> (not res!522309) (not e!742119))))

(assert (=> b!1159557 (= res!522309 (= lt!393985 (forall!2940 lt!393990 lambda!47087)))))

(assert (=> b!1159557 (= lt!393985 (rulesProduceEachTokenIndividually!703 Lexer!1662 (rules!9460 thiss!10527) lt!393990))))

(assert (=> b!1159557 (forall!2941 lt!393989 lambda!47087)))

(declare-fun lt!393986 () Unit!17357)

(declare-fun lemmaForallSubseq!117 (List!11377 List!11377 Int) Unit!17357)

(assert (=> b!1159557 (= lt!393986 (lemmaForallSubseq!117 lt!393989 lt!393984 lambda!47087))))

(assert (=> b!1159557 (= lt!393989 (list!4182 lt!393990))))

(declare-fun slice!233 (BalanceConc!7424 Int Int) BalanceConc!7424)

(assert (=> b!1159557 (= lt!393990 (slice!233 (tokens!1568 thiss!10527) from!787 to!267))))

(declare-fun subseq!225 (List!11377 List!11377) Bool)

(declare-fun slice!234 (List!11377 Int Int) List!11377)

(assert (=> b!1159557 (subseq!225 (slice!234 lt!393984 from!787 to!267) lt!393984)))

(declare-fun lt!393988 () Unit!17357)

(declare-fun lemmaSliceSubseq!66 (List!11377 Int Int) Unit!17357)

(assert (=> b!1159557 (= lt!393988 (lemmaSliceSubseq!66 lt!393984 from!787 to!267))))

(declare-fun b!1159558 () Bool)

(assert (=> b!1159558 (= e!742120 e!742115)))

(declare-fun res!522315 () Bool)

(assert (=> b!1159558 (=> (not res!522315) (not e!742115))))

(assert (=> b!1159558 (= res!522315 (rulesProduceIndividualToken!701 Lexer!1662 (rules!9460 thiss!10527) (h!16754 lt!393989)))))

(assert (= (and start!101494 res!522317) b!1159555))

(assert (= (and b!1159555 res!522312) b!1159550))

(assert (= (and b!1159550 res!522310) b!1159551))

(assert (= (and b!1159551 (not res!522308)) b!1159546))

(assert (= (and b!1159546 res!522313) b!1159554))

(assert (= (and b!1159551 (not res!522314)) b!1159557))

(assert (= (and b!1159557 res!522309) b!1159552))

(assert (= (and b!1159552 (not res!522311)) b!1159558))

(assert (= (and b!1159558 res!522315) b!1159547))

(assert (= (and b!1159557 (not res!522316)) b!1159545))

(assert (= (and b!1159545 (not res!522307)) b!1159548))

(assert (= (and b!1159548 (not res!522306)) b!1159549))

(assert (= b!1159553 b!1159556))

(assert (= start!101494 b!1159553))

(declare-fun m!1326089 () Bool)

(assert (=> b!1159545 m!1326089))

(declare-fun m!1326091 () Bool)

(assert (=> b!1159548 m!1326091))

(declare-fun m!1326093 () Bool)

(assert (=> b!1159552 m!1326093))

(declare-fun m!1326095 () Bool)

(assert (=> b!1159546 m!1326095))

(declare-fun m!1326097 () Bool)

(assert (=> b!1159550 m!1326097))

(declare-fun m!1326099 () Bool)

(assert (=> b!1159550 m!1326099))

(declare-fun m!1326101 () Bool)

(assert (=> b!1159557 m!1326101))

(declare-fun m!1326103 () Bool)

(assert (=> b!1159557 m!1326103))

(declare-fun m!1326105 () Bool)

(assert (=> b!1159557 m!1326105))

(declare-fun m!1326107 () Bool)

(assert (=> b!1159557 m!1326107))

(assert (=> b!1159557 m!1326105))

(declare-fun m!1326109 () Bool)

(assert (=> b!1159557 m!1326109))

(assert (=> b!1159557 m!1326089))

(declare-fun m!1326111 () Bool)

(assert (=> b!1159557 m!1326111))

(assert (=> b!1159557 m!1326109))

(declare-fun m!1326113 () Bool)

(assert (=> b!1159557 m!1326113))

(declare-fun m!1326115 () Bool)

(assert (=> b!1159557 m!1326115))

(declare-fun m!1326117 () Bool)

(assert (=> b!1159554 m!1326117))

(declare-fun m!1326119 () Bool)

(assert (=> b!1159547 m!1326119))

(declare-fun m!1326121 () Bool)

(assert (=> start!101494 m!1326121))

(declare-fun m!1326123 () Bool)

(assert (=> b!1159553 m!1326123))

(declare-fun m!1326125 () Bool)

(assert (=> b!1159551 m!1326125))

(declare-fun m!1326127 () Bool)

(assert (=> b!1159551 m!1326127))

(assert (=> b!1159551 m!1326127))

(declare-fun m!1326129 () Bool)

(assert (=> b!1159551 m!1326129))

(declare-fun m!1326131 () Bool)

(assert (=> b!1159551 m!1326131))

(declare-fun m!1326133 () Bool)

(assert (=> b!1159556 m!1326133))

(declare-fun m!1326135 () Bool)

(assert (=> b!1159558 m!1326135))

(declare-fun m!1326137 () Bool)

(assert (=> b!1159555 m!1326137))

(check-sat (not b!1159550) (not b!1159548) (not b!1159551) (not b!1159553) (not b!1159545) (not b!1159554) (not b!1159566) (not b!1159565) (not b!1159546) (not b!1159556) (not b!1159555) (not b!1159547) (not b!1159558) (not b!1159552) (not start!101494) (not b!1159557))
(check-sat)
