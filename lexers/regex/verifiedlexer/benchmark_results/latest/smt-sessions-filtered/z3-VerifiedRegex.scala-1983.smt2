; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!100946 () Bool)

(assert start!100946)

(declare-fun b!1156394 () Bool)

(declare-fun e!739661 () Bool)

(assert (=> b!1156394 (= e!739661 true)))

(declare-fun b!1156393 () Bool)

(declare-fun e!739660 () Bool)

(assert (=> b!1156393 (= e!739660 e!739661)))

(declare-fun b!1156382 () Bool)

(assert (=> b!1156382 e!739660))

(assert (= b!1156393 b!1156394))

(assert (= b!1156382 b!1156393))

(declare-fun b!1156378 () Bool)

(declare-fun res!520414 () Bool)

(declare-fun e!739649 () Bool)

(assert (=> b!1156378 (=> (not res!520414) (not e!739649))))

(declare-fun to!267 () Int)

(declare-datatypes ((List!11274 0))(
  ( (Nil!11250) (Cons!11250 (h!16651 (_ BitVec 16)) (t!109034 List!11274)) )
))
(declare-datatypes ((TokenValue!2013 0))(
  ( (FloatLiteralValue!4026 (text!14536 List!11274)) (TokenValueExt!2012 (__x!7737 Int)) (Broken!10065 (value!63460 List!11274)) (Object!2036) (End!2013) (Def!2013) (Underscore!2013) (Match!2013) (Else!2013) (Error!2013) (Case!2013) (If!2013) (Extends!2013) (Abstract!2013) (Class!2013) (Val!2013) (DelimiterValue!4026 (del!2073 List!11274)) (KeywordValue!2019 (value!63461 List!11274)) (CommentValue!4026 (value!63462 List!11274)) (WhitespaceValue!4026 (value!63463 List!11274)) (IndentationValue!2013 (value!63464 List!11274)) (String!13652) (Int32!2013) (Broken!10066 (value!63465 List!11274)) (Boolean!2014) (Unit!17277) (OperatorValue!2016 (op!2073 List!11274)) (IdentifierValue!4026 (value!63466 List!11274)) (IdentifierValue!4027 (value!63467 List!11274)) (WhitespaceValue!4027 (value!63468 List!11274)) (True!4026) (False!4026) (Broken!10067 (value!63469 List!11274)) (Broken!10068 (value!63470 List!11274)) (True!4027) (RightBrace!2013) (RightBracket!2013) (Colon!2013) (Null!2013) (Comma!2013) (LeftBracket!2013) (False!4027) (LeftBrace!2013) (ImaginaryLiteralValue!2013 (text!14537 List!11274)) (StringLiteralValue!6039 (value!63471 List!11274)) (EOFValue!2013 (value!63472 List!11274)) (IdentValue!2013 (value!63473 List!11274)) (DelimiterValue!4027 (value!63474 List!11274)) (DedentValue!2013 (value!63475 List!11274)) (NewLineValue!2013 (value!63476 List!11274)) (IntegerValue!6039 (value!63477 (_ BitVec 32)) (text!14538 List!11274)) (IntegerValue!6040 (value!63478 Int) (text!14539 List!11274)) (Times!2013) (Or!2013) (Equal!2013) (Minus!2013) (Broken!10069 (value!63479 List!11274)) (And!2013) (Div!2013) (LessEqual!2013) (Mod!2013) (Concat!5230) (Not!2013) (Plus!2013) (SpaceValue!2013 (value!63480 List!11274)) (IntegerValue!6041 (value!63481 Int) (text!14540 List!11274)) (StringLiteralValue!6040 (text!14541 List!11274)) (FloatLiteralValue!4027 (text!14542 List!11274)) (BytesLiteralValue!2013 (value!63482 List!11274)) (CommentValue!4027 (value!63483 List!11274)) (StringLiteralValue!6041 (value!63484 List!11274)) (ErrorTokenValue!2013 (msg!2074 List!11274)) )
))
(declare-datatypes ((C!6752 0))(
  ( (C!6753 (val!3632 Int)) )
))
(declare-datatypes ((Regex!3217 0))(
  ( (ElementMatch!3217 (c!194056 C!6752)) (Concat!5231 (regOne!6946 Regex!3217) (regTwo!6946 Regex!3217)) (EmptyExpr!3217) (Star!3217 (reg!3546 Regex!3217)) (EmptyLang!3217) (Union!3217 (regOne!6947 Regex!3217) (regTwo!6947 Regex!3217)) )
))
(declare-datatypes ((String!13653 0))(
  ( (String!13654 (value!63485 String)) )
))
(declare-datatypes ((List!11275 0))(
  ( (Nil!11251) (Cons!11251 (h!16652 C!6752) (t!109035 List!11275)) )
))
(declare-datatypes ((IArray!7317 0))(
  ( (IArray!7318 (innerList!3716 List!11275)) )
))
(declare-datatypes ((Conc!3656 0))(
  ( (Node!3656 (left!9807 Conc!3656) (right!10137 Conc!3656) (csize!7542 Int) (cheight!3867 Int)) (Leaf!5640 (xs!6361 IArray!7317) (csize!7543 Int)) (Empty!3656) )
))
(declare-datatypes ((BalanceConc!7334 0))(
  ( (BalanceConc!7335 (c!194057 Conc!3656)) )
))
(declare-datatypes ((TokenValueInjection!3726 0))(
  ( (TokenValueInjection!3727 (toValue!3048 Int) (toChars!2907 Int)) )
))
(declare-datatypes ((Rule!3694 0))(
  ( (Rule!3695 (regex!1947 Regex!3217) (tag!2209 String!13653) (isSeparator!1947 Bool) (transformation!1947 TokenValueInjection!3726)) )
))
(declare-datatypes ((Token!3556 0))(
  ( (Token!3557 (value!63486 TokenValue!2013) (rule!3368 Rule!3694) (size!8852 Int) (originalCharacters!2501 List!11275)) )
))
(declare-datatypes ((List!11276 0))(
  ( (Nil!11252) (Cons!11252 (h!16653 Token!3556) (t!109036 List!11276)) )
))
(declare-datatypes ((List!11277 0))(
  ( (Nil!11253) (Cons!11253 (h!16654 Rule!3694) (t!109037 List!11277)) )
))
(declare-datatypes ((IArray!7319 0))(
  ( (IArray!7320 (innerList!3717 List!11276)) )
))
(declare-datatypes ((Conc!3657 0))(
  ( (Node!3657 (left!9808 Conc!3657) (right!10138 Conc!3657) (csize!7544 Int) (cheight!3868 Int)) (Leaf!5641 (xs!6362 IArray!7319) (csize!7545 Int)) (Empty!3657) )
))
(declare-datatypes ((BalanceConc!7336 0))(
  ( (BalanceConc!7337 (c!194058 Conc!3657)) )
))
(declare-datatypes ((PrintableTokens!580 0))(
  ( (PrintableTokens!581 (rules!9424 List!11277) (tokens!1546 BalanceConc!7336)) )
))
(declare-fun thiss!10527 () PrintableTokens!580)

(declare-fun size!8853 (BalanceConc!7336) Int)

(assert (=> b!1156378 (= res!520414 (<= to!267 (size!8853 (tokens!1546 thiss!10527))))))

(declare-fun b!1156380 () Bool)

(declare-fun e!739650 () Bool)

(declare-fun e!739654 () Bool)

(assert (=> b!1156380 (= e!739650 e!739654)))

(declare-fun res!520412 () Bool)

(assert (=> b!1156380 (=> (not res!520412) (not e!739654))))

(declare-fun lt!393109 () List!11276)

(declare-datatypes ((LexerInterface!1642 0))(
  ( (LexerInterfaceExt!1639 (__x!7738 Int)) (Lexer!1640) )
))
(declare-fun rulesProduceIndividualToken!679 (LexerInterface!1642 List!11277 Token!3556) Bool)

(assert (=> b!1156380 (= res!520412 (rulesProduceIndividualToken!679 Lexer!1640 (rules!9424 thiss!10527) (h!16653 lt!393109)))))

(declare-fun b!1156381 () Bool)

(declare-fun e!739652 () Bool)

(declare-fun tp!333209 () Bool)

(declare-fun inv!14775 (Conc!3657) Bool)

(assert (=> b!1156381 (= e!739652 (and (inv!14775 (c!194058 (tokens!1546 thiss!10527))) tp!333209))))

(declare-fun e!739648 () Bool)

(declare-fun e!739651 () Bool)

(assert (=> b!1156382 (= e!739648 (not e!739651))))

(declare-fun res!520417 () Bool)

(assert (=> b!1156382 (=> res!520417 e!739651)))

(declare-fun lambda!46685 () Int)

(declare-fun forall!2883 (BalanceConc!7336 Int) Bool)

(assert (=> b!1156382 (= res!520417 (not (forall!2883 (tokens!1546 thiss!10527) lambda!46685)))))

(declare-fun rulesProduceEachTokenIndividuallyList!510 (LexerInterface!1642 List!11277 List!11276) Bool)

(assert (=> b!1156382 (= (rulesProduceEachTokenIndividuallyList!510 Lexer!1640 (rules!9424 thiss!10527) lt!393109) e!739650)))

(declare-fun res!520413 () Bool)

(assert (=> b!1156382 (=> res!520413 e!739650)))

(get-info :version)

(assert (=> b!1156382 (= res!520413 (not ((_ is Cons!11252) lt!393109)))))

(declare-fun list!4147 (BalanceConc!7336) List!11276)

(assert (=> b!1156382 (= lt!393109 (list!4147 (tokens!1546 thiss!10527)))))

(declare-fun rulesProduceEachTokenIndividually!681 (LexerInterface!1642 List!11277 BalanceConc!7336) Bool)

(assert (=> b!1156382 (= (rulesProduceEachTokenIndividually!681 Lexer!1640 (rules!9424 thiss!10527) (tokens!1546 thiss!10527)) (forall!2883 (tokens!1546 thiss!10527) lambda!46685))))

(declare-fun b!1156383 () Bool)

(assert (=> b!1156383 (= e!739651 true)))

(declare-fun e!739655 () Bool)

(assert (=> b!1156383 e!739655))

(declare-fun res!520415 () Bool)

(assert (=> b!1156383 (=> (not res!520415) (not e!739655))))

(declare-fun lt!393110 () List!11276)

(declare-fun forall!2884 (List!11276 Int) Bool)

(assert (=> b!1156383 (= res!520415 (forall!2884 lt!393110 lambda!46685))))

(declare-datatypes ((Unit!17278 0))(
  ( (Unit!17279) )
))
(declare-fun lt!393112 () Unit!17278)

(declare-fun lemmaForallSubseq!95 (List!11276 List!11276 Int) Unit!17278)

(assert (=> b!1156383 (= lt!393112 (lemmaForallSubseq!95 lt!393110 lt!393109 lambda!46685))))

(declare-fun lt!393111 () BalanceConc!7336)

(assert (=> b!1156383 (= lt!393110 (list!4147 lt!393111))))

(declare-fun from!787 () Int)

(declare-fun slice!176 (BalanceConc!7336 Int Int) BalanceConc!7336)

(assert (=> b!1156383 (= lt!393111 (slice!176 (tokens!1546 thiss!10527) from!787 to!267))))

(declare-fun subseq!203 (List!11276 List!11276) Bool)

(declare-fun slice!177 (List!11276 Int Int) List!11276)

(assert (=> b!1156383 (subseq!203 (slice!177 lt!393109 from!787 to!267) lt!393109)))

(declare-fun lt!393114 () Unit!17278)

(declare-fun lemmaSliceSubseq!44 (List!11276 Int Int) Unit!17278)

(assert (=> b!1156383 (= lt!393114 (lemmaSliceSubseq!44 lt!393109 from!787 to!267))))

(declare-fun b!1156384 () Bool)

(assert (=> b!1156384 (= e!739654 (rulesProduceEachTokenIndividuallyList!510 Lexer!1640 (rules!9424 thiss!10527) (t!109036 lt!393109)))))

(declare-fun tp!333210 () Bool)

(declare-fun e!739653 () Bool)

(declare-fun b!1156385 () Bool)

(declare-fun inv!14776 (BalanceConc!7336) Bool)

(assert (=> b!1156385 (= e!739653 (and tp!333210 (inv!14776 (tokens!1546 thiss!10527)) e!739652))))

(declare-fun b!1156386 () Bool)

(assert (=> b!1156386 (= e!739649 e!739648)))

(declare-fun res!520416 () Bool)

(assert (=> b!1156386 (=> (not res!520416) (not e!739648))))

(declare-fun rulesInvariant!1516 (LexerInterface!1642 List!11277) Bool)

(assert (=> b!1156386 (= res!520416 (rulesInvariant!1516 Lexer!1640 (rules!9424 thiss!10527)))))

(declare-fun lt!393113 () Unit!17278)

(declare-fun lemmaInvariant!134 (PrintableTokens!580) Unit!17278)

(assert (=> b!1156386 (= lt!393113 (lemmaInvariant!134 thiss!10527))))

(declare-fun b!1156379 () Bool)

(assert (=> b!1156379 (= e!739655 (= (rulesProduceEachTokenIndividually!681 Lexer!1640 (rules!9424 thiss!10527) lt!393111) (forall!2883 lt!393111 lambda!46685)))))

(declare-fun res!520411 () Bool)

(assert (=> start!100946 (=> (not res!520411) (not e!739649))))

(assert (=> start!100946 (= res!520411 (and (<= 0 from!787) (<= from!787 to!267)))))

(assert (=> start!100946 e!739649))

(assert (=> start!100946 true))

(declare-fun inv!14777 (PrintableTokens!580) Bool)

(assert (=> start!100946 (and (inv!14777 thiss!10527) e!739653)))

(assert (= (and start!100946 res!520411) b!1156378))

(assert (= (and b!1156378 res!520414) b!1156386))

(assert (= (and b!1156386 res!520416) b!1156382))

(assert (= (and b!1156382 (not res!520413)) b!1156380))

(assert (= (and b!1156380 res!520412) b!1156384))

(assert (= (and b!1156382 (not res!520417)) b!1156383))

(assert (= (and b!1156383 res!520415) b!1156379))

(assert (= b!1156385 b!1156381))

(assert (= start!100946 b!1156385))

(declare-fun m!1323177 () Bool)

(assert (=> b!1156386 m!1323177))

(declare-fun m!1323179 () Bool)

(assert (=> b!1156386 m!1323179))

(declare-fun m!1323181 () Bool)

(assert (=> start!100946 m!1323181))

(declare-fun m!1323183 () Bool)

(assert (=> b!1156383 m!1323183))

(declare-fun m!1323185 () Bool)

(assert (=> b!1156383 m!1323185))

(declare-fun m!1323187 () Bool)

(assert (=> b!1156383 m!1323187))

(assert (=> b!1156383 m!1323187))

(declare-fun m!1323189 () Bool)

(assert (=> b!1156383 m!1323189))

(declare-fun m!1323191 () Bool)

(assert (=> b!1156383 m!1323191))

(declare-fun m!1323193 () Bool)

(assert (=> b!1156383 m!1323193))

(declare-fun m!1323195 () Bool)

(assert (=> b!1156383 m!1323195))

(declare-fun m!1323197 () Bool)

(assert (=> b!1156382 m!1323197))

(assert (=> b!1156382 m!1323197))

(declare-fun m!1323199 () Bool)

(assert (=> b!1156382 m!1323199))

(declare-fun m!1323201 () Bool)

(assert (=> b!1156382 m!1323201))

(declare-fun m!1323203 () Bool)

(assert (=> b!1156382 m!1323203))

(declare-fun m!1323205 () Bool)

(assert (=> b!1156385 m!1323205))

(declare-fun m!1323207 () Bool)

(assert (=> b!1156384 m!1323207))

(declare-fun m!1323209 () Bool)

(assert (=> b!1156378 m!1323209))

(declare-fun m!1323211 () Bool)

(assert (=> b!1156379 m!1323211))

(declare-fun m!1323213 () Bool)

(assert (=> b!1156379 m!1323213))

(declare-fun m!1323215 () Bool)

(assert (=> b!1156381 m!1323215))

(declare-fun m!1323217 () Bool)

(assert (=> b!1156380 m!1323217))

(check-sat (not b!1156381) (not b!1156380) (not b!1156394) (not b!1156379) (not b!1156378) (not b!1156384) (not b!1156393) (not b!1156386) (not b!1156383) (not start!100946) (not b!1156385) (not b!1156382))
(check-sat)
