; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!101102 () Bool)

(assert start!101102)

(declare-fun b!1157246 () Bool)

(declare-fun e!740321 () Bool)

(assert (=> b!1157246 (= e!740321 true)))

(declare-fun b!1157245 () Bool)

(declare-fun e!740320 () Bool)

(assert (=> b!1157245 (= e!740320 e!740321)))

(declare-fun b!1157230 () Bool)

(assert (=> b!1157230 e!740320))

(assert (= b!1157245 b!1157246))

(assert (= b!1157230 b!1157245))

(declare-fun e!740310 () Bool)

(declare-fun b!1157227 () Bool)

(declare-datatypes ((List!11301 0))(
  ( (Nil!11277) (Cons!11277 (h!16678 (_ BitVec 16)) (t!109145 List!11301)) )
))
(declare-datatypes ((TokenValue!2019 0))(
  ( (FloatLiteralValue!4038 (text!14578 List!11301)) (TokenValueExt!2018 (__x!7749 Int)) (Broken!10095 (value!63631 List!11301)) (Object!2042) (End!2019) (Def!2019) (Underscore!2019) (Match!2019) (Else!2019) (Error!2019) (Case!2019) (If!2019) (Extends!2019) (Abstract!2019) (Class!2019) (Val!2019) (DelimiterValue!4038 (del!2079 List!11301)) (KeywordValue!2025 (value!63632 List!11301)) (CommentValue!4038 (value!63633 List!11301)) (WhitespaceValue!4038 (value!63634 List!11301)) (IndentationValue!2019 (value!63635 List!11301)) (String!13682) (Int32!2019) (Broken!10096 (value!63636 List!11301)) (Boolean!2020) (Unit!17298) (OperatorValue!2022 (op!2079 List!11301)) (IdentifierValue!4038 (value!63637 List!11301)) (IdentifierValue!4039 (value!63638 List!11301)) (WhitespaceValue!4039 (value!63639 List!11301)) (True!4038) (False!4038) (Broken!10097 (value!63640 List!11301)) (Broken!10098 (value!63641 List!11301)) (True!4039) (RightBrace!2019) (RightBracket!2019) (Colon!2019) (Null!2019) (Comma!2019) (LeftBracket!2019) (False!4039) (LeftBrace!2019) (ImaginaryLiteralValue!2019 (text!14579 List!11301)) (StringLiteralValue!6057 (value!63642 List!11301)) (EOFValue!2019 (value!63643 List!11301)) (IdentValue!2019 (value!63644 List!11301)) (DelimiterValue!4039 (value!63645 List!11301)) (DedentValue!2019 (value!63646 List!11301)) (NewLineValue!2019 (value!63647 List!11301)) (IntegerValue!6057 (value!63648 (_ BitVec 32)) (text!14580 List!11301)) (IntegerValue!6058 (value!63649 Int) (text!14581 List!11301)) (Times!2019) (Or!2019) (Equal!2019) (Minus!2019) (Broken!10099 (value!63650 List!11301)) (And!2019) (Div!2019) (LessEqual!2019) (Mod!2019) (Concat!5242) (Not!2019) (Plus!2019) (SpaceValue!2019 (value!63651 List!11301)) (IntegerValue!6059 (value!63652 Int) (text!14582 List!11301)) (StringLiteralValue!6058 (text!14583 List!11301)) (FloatLiteralValue!4039 (text!14584 List!11301)) (BytesLiteralValue!2019 (value!63653 List!11301)) (CommentValue!4039 (value!63654 List!11301)) (StringLiteralValue!6059 (value!63655 List!11301)) (ErrorTokenValue!2019 (msg!2080 List!11301)) )
))
(declare-datatypes ((C!6764 0))(
  ( (C!6765 (val!3638 Int)) )
))
(declare-datatypes ((Regex!3223 0))(
  ( (ElementMatch!3223 (c!194090 C!6764)) (Concat!5243 (regOne!6958 Regex!3223) (regTwo!6958 Regex!3223)) (EmptyExpr!3223) (Star!3223 (reg!3552 Regex!3223)) (EmptyLang!3223) (Union!3223 (regOne!6959 Regex!3223) (regTwo!6959 Regex!3223)) )
))
(declare-datatypes ((String!13683 0))(
  ( (String!13684 (value!63656 String)) )
))
(declare-datatypes ((List!11302 0))(
  ( (Nil!11278) (Cons!11278 (h!16679 C!6764) (t!109146 List!11302)) )
))
(declare-datatypes ((IArray!7341 0))(
  ( (IArray!7342 (innerList!3728 List!11302)) )
))
(declare-datatypes ((Conc!3668 0))(
  ( (Node!3668 (left!9834 Conc!3668) (right!10164 Conc!3668) (csize!7566 Int) (cheight!3879 Int)) (Leaf!5655 (xs!6373 IArray!7341) (csize!7567 Int)) (Empty!3668) )
))
(declare-datatypes ((BalanceConc!7358 0))(
  ( (BalanceConc!7359 (c!194091 Conc!3668)) )
))
(declare-datatypes ((TokenValueInjection!3738 0))(
  ( (TokenValueInjection!3739 (toValue!3054 Int) (toChars!2913 Int)) )
))
(declare-datatypes ((Rule!3706 0))(
  ( (Rule!3707 (regex!1953 Regex!3223) (tag!2215 String!13683) (isSeparator!1953 Bool) (transformation!1953 TokenValueInjection!3738)) )
))
(declare-datatypes ((Token!3568 0))(
  ( (Token!3569 (value!63657 TokenValue!2019) (rule!3374 Rule!3706) (size!8872 Int) (originalCharacters!2507 List!11302)) )
))
(declare-datatypes ((List!11303 0))(
  ( (Nil!11279) (Cons!11279 (h!16680 Token!3568) (t!109147 List!11303)) )
))
(declare-datatypes ((List!11304 0))(
  ( (Nil!11280) (Cons!11280 (h!16681 Rule!3706) (t!109148 List!11304)) )
))
(declare-datatypes ((IArray!7343 0))(
  ( (IArray!7344 (innerList!3729 List!11303)) )
))
(declare-datatypes ((Conc!3669 0))(
  ( (Node!3669 (left!9835 Conc!3669) (right!10165 Conc!3669) (csize!7568 Int) (cheight!3880 Int)) (Leaf!5656 (xs!6374 IArray!7343) (csize!7569 Int)) (Empty!3669) )
))
(declare-datatypes ((BalanceConc!7360 0))(
  ( (BalanceConc!7361 (c!194092 Conc!3669)) )
))
(declare-datatypes ((PrintableTokens!592 0))(
  ( (PrintableTokens!593 (rules!9434 List!11304) (tokens!1552 BalanceConc!7360)) )
))
(declare-fun thiss!10527 () PrintableTokens!592)

(declare-fun tp!333330 () Bool)

(declare-fun e!740313 () Bool)

(declare-fun inv!14814 (BalanceConc!7360) Bool)

(assert (=> b!1157227 (= e!740313 (and tp!333330 (inv!14814 (tokens!1552 thiss!10527)) e!740310))))

(declare-fun b!1157228 () Bool)

(declare-fun e!740306 () Bool)

(declare-fun lt!393346 () List!11303)

(declare-datatypes ((LexerInterface!1648 0))(
  ( (LexerInterfaceExt!1645 (__x!7750 Int)) (Lexer!1646) )
))
(declare-fun rulesProduceEachTokenIndividuallyList!516 (LexerInterface!1648 List!11304 List!11303) Bool)

(assert (=> b!1157228 (= e!740306 (rulesProduceEachTokenIndividuallyList!516 Lexer!1646 (rules!9434 thiss!10527) (t!109147 lt!393346)))))

(declare-fun b!1157229 () Bool)

(declare-fun e!740309 () Bool)

(assert (=> b!1157229 (= e!740309 true)))

(declare-fun e!740314 () Bool)

(assert (=> b!1157229 e!740314))

(declare-fun res!520913 () Bool)

(assert (=> b!1157229 (=> (not res!520913) (not e!740314))))

(declare-fun lambda!46783 () Int)

(declare-fun forall!2898 (List!11303 Int) Bool)

(assert (=> b!1157229 (= res!520913 (forall!2898 lt!393346 lambda!46783))))

(declare-fun lt!393347 () List!11303)

(declare-datatypes ((Unit!17299 0))(
  ( (Unit!17300) )
))
(declare-fun lt!393350 () Unit!17299)

(declare-fun lemmaForallSubseq!101 (List!11303 List!11303 Int) Unit!17299)

(assert (=> b!1157229 (= lt!393350 (lemmaForallSubseq!101 lt!393346 lt!393347 lambda!46783))))

(declare-fun lt!393345 () BalanceConc!7360)

(declare-fun list!4156 (BalanceConc!7360) List!11303)

(assert (=> b!1157229 (= lt!393346 (list!4156 lt!393345))))

(declare-fun to!267 () Int)

(declare-fun from!787 () Int)

(declare-fun slice!191 (BalanceConc!7360 Int Int) BalanceConc!7360)

(assert (=> b!1157229 (= lt!393345 (slice!191 (tokens!1552 thiss!10527) from!787 to!267))))

(declare-fun subseq!209 (List!11303 List!11303) Bool)

(declare-fun slice!192 (List!11303 Int Int) List!11303)

(assert (=> b!1157229 (subseq!209 (slice!192 lt!393347 from!787 to!267) lt!393347)))

(declare-fun lt!393349 () Unit!17299)

(declare-fun lemmaSliceSubseq!50 (List!11303 Int Int) Unit!17299)

(assert (=> b!1157229 (= lt!393349 (lemmaSliceSubseq!50 lt!393347 from!787 to!267))))

(declare-fun b!1157231 () Bool)

(declare-fun tp!333329 () Bool)

(declare-fun inv!14815 (Conc!3669) Bool)

(assert (=> b!1157231 (= e!740310 (and (inv!14815 (c!194092 (tokens!1552 thiss!10527))) tp!333329))))

(declare-fun b!1157232 () Bool)

(declare-fun e!740311 () Bool)

(declare-fun e!740307 () Bool)

(assert (=> b!1157232 (= e!740311 e!740307)))

(declare-fun res!520912 () Bool)

(assert (=> b!1157232 (=> (not res!520912) (not e!740307))))

(declare-fun rulesInvariant!1522 (LexerInterface!1648 List!11304) Bool)

(assert (=> b!1157232 (= res!520912 (rulesInvariant!1522 Lexer!1646 (rules!9434 thiss!10527)))))

(declare-fun lt!393348 () Unit!17299)

(declare-fun lemmaInvariant!140 (PrintableTokens!592) Unit!17299)

(assert (=> b!1157232 (= lt!393348 (lemmaInvariant!140 thiss!10527))))

(declare-fun b!1157233 () Bool)

(declare-fun e!740308 () Bool)

(assert (=> b!1157233 (= e!740308 (rulesProduceEachTokenIndividuallyList!516 Lexer!1646 (rules!9434 thiss!10527) (t!109147 lt!393347)))))

(declare-fun b!1157234 () Bool)

(declare-fun res!520917 () Bool)

(assert (=> b!1157234 (=> (not res!520917) (not e!740311))))

(declare-fun size!8873 (BalanceConc!7360) Int)

(assert (=> b!1157234 (= res!520917 (<= to!267 (size!8873 (tokens!1552 thiss!10527))))))

(declare-fun b!1157235 () Bool)

(declare-fun e!740315 () Bool)

(assert (=> b!1157235 (= e!740314 (= (rulesProduceEachTokenIndividuallyList!516 Lexer!1646 (rules!9434 thiss!10527) lt!393346) e!740315))))

(declare-fun res!520921 () Bool)

(assert (=> b!1157235 (=> res!520921 e!740315)))

(get-info :version)

(assert (=> b!1157235 (= res!520921 (not ((_ is Cons!11279) lt!393346)))))

(declare-fun b!1157236 () Bool)

(declare-fun res!520918 () Bool)

(assert (=> b!1157236 (=> (not res!520918) (not e!740314))))

(declare-fun rulesProduceEachTokenIndividually!687 (LexerInterface!1648 List!11304 BalanceConc!7360) Bool)

(declare-fun forall!2899 (BalanceConc!7360 Int) Bool)

(assert (=> b!1157236 (= res!520918 (= (rulesProduceEachTokenIndividually!687 Lexer!1646 (rules!9434 thiss!10527) lt!393345) (forall!2899 lt!393345 lambda!46783)))))

(declare-fun b!1157237 () Bool)

(declare-fun e!740312 () Bool)

(assert (=> b!1157237 (= e!740312 e!740308)))

(declare-fun res!520920 () Bool)

(assert (=> b!1157237 (=> (not res!520920) (not e!740308))))

(declare-fun rulesProduceIndividualToken!685 (LexerInterface!1648 List!11304 Token!3568) Bool)

(assert (=> b!1157237 (= res!520920 (rulesProduceIndividualToken!685 Lexer!1646 (rules!9434 thiss!10527) (h!16680 lt!393347)))))

(declare-fun b!1157238 () Bool)

(assert (=> b!1157238 (= e!740315 e!740306)))

(declare-fun res!520914 () Bool)

(assert (=> b!1157238 (=> (not res!520914) (not e!740306))))

(assert (=> b!1157238 (= res!520914 (rulesProduceIndividualToken!685 Lexer!1646 (rules!9434 thiss!10527) (h!16680 lt!393346)))))

(assert (=> b!1157230 (= e!740307 (not e!740309))))

(declare-fun res!520919 () Bool)

(assert (=> b!1157230 (=> res!520919 e!740309)))

(assert (=> b!1157230 (= res!520919 (not (forall!2899 (tokens!1552 thiss!10527) lambda!46783)))))

(assert (=> b!1157230 (= (rulesProduceEachTokenIndividuallyList!516 Lexer!1646 (rules!9434 thiss!10527) lt!393347) e!740312)))

(declare-fun res!520916 () Bool)

(assert (=> b!1157230 (=> res!520916 e!740312)))

(assert (=> b!1157230 (= res!520916 (not ((_ is Cons!11279) lt!393347)))))

(assert (=> b!1157230 (= lt!393347 (list!4156 (tokens!1552 thiss!10527)))))

(assert (=> b!1157230 (= (rulesProduceEachTokenIndividually!687 Lexer!1646 (rules!9434 thiss!10527) (tokens!1552 thiss!10527)) (forall!2899 (tokens!1552 thiss!10527) lambda!46783))))

(declare-fun res!520915 () Bool)

(assert (=> start!101102 (=> (not res!520915) (not e!740311))))

(assert (=> start!101102 (= res!520915 (and (<= 0 from!787) (<= from!787 to!267)))))

(assert (=> start!101102 e!740311))

(assert (=> start!101102 true))

(declare-fun inv!14816 (PrintableTokens!592) Bool)

(assert (=> start!101102 (and (inv!14816 thiss!10527) e!740313)))

(assert (= (and start!101102 res!520915) b!1157234))

(assert (= (and b!1157234 res!520917) b!1157232))

(assert (= (and b!1157232 res!520912) b!1157230))

(assert (= (and b!1157230 (not res!520916)) b!1157237))

(assert (= (and b!1157237 res!520920) b!1157233))

(assert (= (and b!1157230 (not res!520919)) b!1157229))

(assert (= (and b!1157229 res!520913) b!1157236))

(assert (= (and b!1157236 res!520918) b!1157235))

(assert (= (and b!1157235 (not res!520921)) b!1157238))

(assert (= (and b!1157238 res!520914) b!1157228))

(assert (= b!1157227 b!1157231))

(assert (= start!101102 b!1157227))

(declare-fun m!1323951 () Bool)

(assert (=> b!1157237 m!1323951))

(declare-fun m!1323953 () Bool)

(assert (=> b!1157233 m!1323953))

(declare-fun m!1323955 () Bool)

(assert (=> b!1157234 m!1323955))

(declare-fun m!1323957 () Bool)

(assert (=> b!1157235 m!1323957))

(declare-fun m!1323959 () Bool)

(assert (=> b!1157227 m!1323959))

(declare-fun m!1323961 () Bool)

(assert (=> b!1157236 m!1323961))

(declare-fun m!1323963 () Bool)

(assert (=> b!1157236 m!1323963))

(declare-fun m!1323965 () Bool)

(assert (=> b!1157230 m!1323965))

(assert (=> b!1157230 m!1323965))

(declare-fun m!1323967 () Bool)

(assert (=> b!1157230 m!1323967))

(declare-fun m!1323969 () Bool)

(assert (=> b!1157230 m!1323969))

(declare-fun m!1323971 () Bool)

(assert (=> b!1157230 m!1323971))

(declare-fun m!1323973 () Bool)

(assert (=> b!1157228 m!1323973))

(declare-fun m!1323975 () Bool)

(assert (=> b!1157231 m!1323975))

(declare-fun m!1323977 () Bool)

(assert (=> start!101102 m!1323977))

(declare-fun m!1323979 () Bool)

(assert (=> b!1157232 m!1323979))

(declare-fun m!1323981 () Bool)

(assert (=> b!1157232 m!1323981))

(declare-fun m!1323983 () Bool)

(assert (=> b!1157229 m!1323983))

(assert (=> b!1157229 m!1323983))

(declare-fun m!1323985 () Bool)

(assert (=> b!1157229 m!1323985))

(declare-fun m!1323987 () Bool)

(assert (=> b!1157229 m!1323987))

(declare-fun m!1323989 () Bool)

(assert (=> b!1157229 m!1323989))

(declare-fun m!1323991 () Bool)

(assert (=> b!1157229 m!1323991))

(declare-fun m!1323993 () Bool)

(assert (=> b!1157229 m!1323993))

(declare-fun m!1323995 () Bool)

(assert (=> b!1157229 m!1323995))

(declare-fun m!1323997 () Bool)

(assert (=> b!1157238 m!1323997))

(check-sat (not b!1157238) (not b!1157227) (not b!1157246) (not b!1157229) (not b!1157231) (not start!101102) (not b!1157234) (not b!1157236) (not b!1157235) (not b!1157228) (not b!1157230) (not b!1157233) (not b!1157232) (not b!1157245) (not b!1157237))
(check-sat)
