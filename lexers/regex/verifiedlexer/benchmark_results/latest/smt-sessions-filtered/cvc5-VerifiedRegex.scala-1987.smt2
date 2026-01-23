; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!101104 () Bool)

(assert start!101104)

(declare-fun b!1157290 () Bool)

(declare-fun e!740357 () Bool)

(assert (=> b!1157290 (= e!740357 true)))

(declare-fun b!1157289 () Bool)

(declare-fun e!740356 () Bool)

(assert (=> b!1157289 (= e!740356 e!740357)))

(declare-fun b!1157282 () Bool)

(assert (=> b!1157282 e!740356))

(assert (= b!1157289 b!1157290))

(assert (= b!1157282 b!1157289))

(declare-fun b!1157271 () Bool)

(declare-fun res!520947 () Bool)

(declare-fun e!740343 () Bool)

(assert (=> b!1157271 (=> (not res!520947) (not e!740343))))

(declare-datatypes ((List!11305 0))(
  ( (Nil!11281) (Cons!11281 (h!16682 (_ BitVec 16)) (t!109158 List!11305)) )
))
(declare-datatypes ((TokenValue!2020 0))(
  ( (FloatLiteralValue!4040 (text!14585 List!11305)) (TokenValueExt!2019 (__x!7751 Int)) (Broken!10100 (value!63661 List!11305)) (Object!2043) (End!2020) (Def!2020) (Underscore!2020) (Match!2020) (Else!2020) (Error!2020) (Case!2020) (If!2020) (Extends!2020) (Abstract!2020) (Class!2020) (Val!2020) (DelimiterValue!4040 (del!2080 List!11305)) (KeywordValue!2026 (value!63662 List!11305)) (CommentValue!4040 (value!63663 List!11305)) (WhitespaceValue!4040 (value!63664 List!11305)) (IndentationValue!2020 (value!63665 List!11305)) (String!13689) (Int32!2020) (Broken!10101 (value!63666 List!11305)) (Boolean!2021) (Unit!17301) (OperatorValue!2023 (op!2080 List!11305)) (IdentifierValue!4040 (value!63667 List!11305)) (IdentifierValue!4041 (value!63668 List!11305)) (WhitespaceValue!4041 (value!63669 List!11305)) (True!4040) (False!4040) (Broken!10102 (value!63670 List!11305)) (Broken!10103 (value!63671 List!11305)) (True!4041) (RightBrace!2020) (RightBracket!2020) (Colon!2020) (Null!2020) (Comma!2020) (LeftBracket!2020) (False!4041) (LeftBrace!2020) (ImaginaryLiteralValue!2020 (text!14586 List!11305)) (StringLiteralValue!6060 (value!63672 List!11305)) (EOFValue!2020 (value!63673 List!11305)) (IdentValue!2020 (value!63674 List!11305)) (DelimiterValue!4041 (value!63675 List!11305)) (DedentValue!2020 (value!63676 List!11305)) (NewLineValue!2020 (value!63677 List!11305)) (IntegerValue!6060 (value!63678 (_ BitVec 32)) (text!14587 List!11305)) (IntegerValue!6061 (value!63679 Int) (text!14588 List!11305)) (Times!2020) (Or!2020) (Equal!2020) (Minus!2020) (Broken!10104 (value!63680 List!11305)) (And!2020) (Div!2020) (LessEqual!2020) (Mod!2020) (Concat!5244) (Not!2020) (Plus!2020) (SpaceValue!2020 (value!63681 List!11305)) (IntegerValue!6062 (value!63682 Int) (text!14589 List!11305)) (StringLiteralValue!6061 (text!14590 List!11305)) (FloatLiteralValue!4041 (text!14591 List!11305)) (BytesLiteralValue!2020 (value!63683 List!11305)) (CommentValue!4041 (value!63684 List!11305)) (StringLiteralValue!6062 (value!63685 List!11305)) (ErrorTokenValue!2020 (msg!2081 List!11305)) )
))
(declare-datatypes ((C!6766 0))(
  ( (C!6767 (val!3639 Int)) )
))
(declare-datatypes ((Regex!3224 0))(
  ( (ElementMatch!3224 (c!194093 C!6766)) (Concat!5245 (regOne!6960 Regex!3224) (regTwo!6960 Regex!3224)) (EmptyExpr!3224) (Star!3224 (reg!3553 Regex!3224)) (EmptyLang!3224) (Union!3224 (regOne!6961 Regex!3224) (regTwo!6961 Regex!3224)) )
))
(declare-datatypes ((String!13690 0))(
  ( (String!13691 (value!63686 String)) )
))
(declare-datatypes ((List!11306 0))(
  ( (Nil!11282) (Cons!11282 (h!16683 C!6766) (t!109159 List!11306)) )
))
(declare-datatypes ((IArray!7345 0))(
  ( (IArray!7346 (innerList!3730 List!11306)) )
))
(declare-datatypes ((Conc!3670 0))(
  ( (Node!3670 (left!9839 Conc!3670) (right!10169 Conc!3670) (csize!7570 Int) (cheight!3881 Int)) (Leaf!5658 (xs!6375 IArray!7345) (csize!7571 Int)) (Empty!3670) )
))
(declare-datatypes ((BalanceConc!7362 0))(
  ( (BalanceConc!7363 (c!194094 Conc!3670)) )
))
(declare-datatypes ((TokenValueInjection!3740 0))(
  ( (TokenValueInjection!3741 (toValue!3055 Int) (toChars!2914 Int)) )
))
(declare-datatypes ((Rule!3708 0))(
  ( (Rule!3709 (regex!1954 Regex!3224) (tag!2216 String!13690) (isSeparator!1954 Bool) (transformation!1954 TokenValueInjection!3740)) )
))
(declare-datatypes ((Token!3570 0))(
  ( (Token!3571 (value!63687 TokenValue!2020) (rule!3375 Rule!3708) (size!8874 Int) (originalCharacters!2508 List!11306)) )
))
(declare-datatypes ((List!11307 0))(
  ( (Nil!11283) (Cons!11283 (h!16684 Token!3570) (t!109160 List!11307)) )
))
(declare-datatypes ((IArray!7347 0))(
  ( (IArray!7348 (innerList!3731 List!11307)) )
))
(declare-datatypes ((Conc!3671 0))(
  ( (Node!3671 (left!9840 Conc!3671) (right!10170 Conc!3671) (csize!7572 Int) (cheight!3882 Int)) (Leaf!5659 (xs!6376 IArray!7347) (csize!7573 Int)) (Empty!3671) )
))
(declare-datatypes ((BalanceConc!7364 0))(
  ( (BalanceConc!7365 (c!194095 Conc!3671)) )
))
(declare-fun lt!393368 () BalanceConc!7364)

(declare-datatypes ((List!11308 0))(
  ( (Nil!11284) (Cons!11284 (h!16685 Rule!3708) (t!109161 List!11308)) )
))
(declare-datatypes ((PrintableTokens!594 0))(
  ( (PrintableTokens!595 (rules!9435 List!11308) (tokens!1553 BalanceConc!7364)) )
))
(declare-fun thiss!10527 () PrintableTokens!594)

(declare-fun lambda!46792 () Int)

(declare-datatypes ((LexerInterface!1649 0))(
  ( (LexerInterfaceExt!1646 (__x!7752 Int)) (Lexer!1647) )
))
(declare-fun rulesProduceEachTokenIndividually!688 (LexerInterface!1649 List!11308 BalanceConc!7364) Bool)

(declare-fun forall!2900 (BalanceConc!7364 Int) Bool)

(assert (=> b!1157271 (= res!520947 (= (rulesProduceEachTokenIndividually!688 Lexer!1647 (rules!9435 thiss!10527) lt!393368) (forall!2900 lt!393368 lambda!46792)))))

(declare-fun e!740349 () Bool)

(declare-fun b!1157272 () Bool)

(declare-fun tp!333336 () Bool)

(declare-fun e!740342 () Bool)

(declare-fun inv!14820 (BalanceConc!7364) Bool)

(assert (=> b!1157272 (= e!740349 (and tp!333336 (inv!14820 (tokens!1553 thiss!10527)) e!740342))))

(declare-fun b!1157273 () Bool)

(declare-fun e!740347 () Bool)

(declare-fun lt!393365 () List!11307)

(declare-fun rulesProduceEachTokenIndividuallyList!517 (LexerInterface!1649 List!11308 List!11307) Bool)

(assert (=> b!1157273 (= e!740347 (rulesProduceEachTokenIndividuallyList!517 Lexer!1647 (rules!9435 thiss!10527) (t!109160 lt!393365)))))

(declare-fun e!740345 () Bool)

(declare-fun b!1157274 () Bool)

(assert (=> b!1157274 (= e!740343 (= (rulesProduceEachTokenIndividuallyList!517 Lexer!1647 (rules!9435 thiss!10527) lt!393365) e!740345))))

(declare-fun res!520948 () Bool)

(assert (=> b!1157274 (=> res!520948 e!740345)))

(assert (=> b!1157274 (= res!520948 (not (is-Cons!11283 lt!393365)))))

(declare-fun b!1157276 () Bool)

(declare-fun e!740350 () Bool)

(declare-fun e!740346 () Bool)

(assert (=> b!1157276 (= e!740350 e!740346)))

(declare-fun res!520951 () Bool)

(assert (=> b!1157276 (=> (not res!520951) (not e!740346))))

(declare-fun lt!393367 () List!11307)

(declare-fun rulesProduceIndividualToken!686 (LexerInterface!1649 List!11308 Token!3570) Bool)

(assert (=> b!1157276 (= res!520951 (rulesProduceIndividualToken!686 Lexer!1647 (rules!9435 thiss!10527) (h!16684 lt!393367)))))

(declare-fun b!1157277 () Bool)

(declare-fun e!740351 () Bool)

(declare-fun isEmpty!6940 (List!11308) Bool)

(assert (=> b!1157277 (= e!740351 (not (isEmpty!6940 (rules!9435 thiss!10527))))))

(assert (=> b!1157277 e!740343))

(declare-fun res!520944 () Bool)

(assert (=> b!1157277 (=> (not res!520944) (not e!740343))))

(declare-fun forall!2901 (List!11307 Int) Bool)

(assert (=> b!1157277 (= res!520944 (forall!2901 lt!393365 lambda!46792))))

(declare-datatypes ((Unit!17302 0))(
  ( (Unit!17303) )
))
(declare-fun lt!393363 () Unit!17302)

(declare-fun lemmaForallSubseq!102 (List!11307 List!11307 Int) Unit!17302)

(assert (=> b!1157277 (= lt!393363 (lemmaForallSubseq!102 lt!393365 lt!393367 lambda!46792))))

(declare-fun list!4157 (BalanceConc!7364) List!11307)

(assert (=> b!1157277 (= lt!393365 (list!4157 lt!393368))))

(declare-fun to!267 () Int)

(declare-fun from!787 () Int)

(declare-fun slice!193 (BalanceConc!7364 Int Int) BalanceConc!7364)

(assert (=> b!1157277 (= lt!393368 (slice!193 (tokens!1553 thiss!10527) from!787 to!267))))

(declare-fun subseq!210 (List!11307 List!11307) Bool)

(declare-fun slice!194 (List!11307 Int Int) List!11307)

(assert (=> b!1157277 (subseq!210 (slice!194 lt!393367 from!787 to!267) lt!393367)))

(declare-fun lt!393364 () Unit!17302)

(declare-fun lemmaSliceSubseq!51 (List!11307 Int Int) Unit!17302)

(assert (=> b!1157277 (= lt!393364 (lemmaSliceSubseq!51 lt!393367 from!787 to!267))))

(declare-fun b!1157278 () Bool)

(declare-fun res!520949 () Bool)

(declare-fun e!740348 () Bool)

(assert (=> b!1157278 (=> (not res!520949) (not e!740348))))

(declare-fun size!8875 (BalanceConc!7364) Int)

(assert (=> b!1157278 (= res!520949 (<= to!267 (size!8875 (tokens!1553 thiss!10527))))))

(declare-fun b!1157279 () Bool)

(assert (=> b!1157279 (= e!740346 (rulesProduceEachTokenIndividuallyList!517 Lexer!1647 (rules!9435 thiss!10527) (t!109160 lt!393367)))))

(declare-fun b!1157280 () Bool)

(declare-fun e!740344 () Bool)

(assert (=> b!1157280 (= e!740348 e!740344)))

(declare-fun res!520942 () Bool)

(assert (=> b!1157280 (=> (not res!520942) (not e!740344))))

(declare-fun rulesInvariant!1523 (LexerInterface!1649 List!11308) Bool)

(assert (=> b!1157280 (= res!520942 (rulesInvariant!1523 Lexer!1647 (rules!9435 thiss!10527)))))

(declare-fun lt!393366 () Unit!17302)

(declare-fun lemmaInvariant!141 (PrintableTokens!594) Unit!17302)

(assert (=> b!1157280 (= lt!393366 (lemmaInvariant!141 thiss!10527))))

(declare-fun b!1157275 () Bool)

(assert (=> b!1157275 (= e!740345 e!740347)))

(declare-fun res!520943 () Bool)

(assert (=> b!1157275 (=> (not res!520943) (not e!740347))))

(assert (=> b!1157275 (= res!520943 (rulesProduceIndividualToken!686 Lexer!1647 (rules!9435 thiss!10527) (h!16684 lt!393365)))))

(declare-fun res!520945 () Bool)

(assert (=> start!101104 (=> (not res!520945) (not e!740348))))

(assert (=> start!101104 (= res!520945 (and (<= 0 from!787) (<= from!787 to!267)))))

(assert (=> start!101104 e!740348))

(assert (=> start!101104 true))

(declare-fun inv!14821 (PrintableTokens!594) Bool)

(assert (=> start!101104 (and (inv!14821 thiss!10527) e!740349)))

(declare-fun b!1157281 () Bool)

(declare-fun tp!333335 () Bool)

(declare-fun inv!14822 (Conc!3671) Bool)

(assert (=> b!1157281 (= e!740342 (and (inv!14822 (c!194095 (tokens!1553 thiss!10527))) tp!333335))))

(assert (=> b!1157282 (= e!740344 (not e!740351))))

(declare-fun res!520950 () Bool)

(assert (=> b!1157282 (=> res!520950 e!740351)))

(assert (=> b!1157282 (= res!520950 (not (forall!2900 (tokens!1553 thiss!10527) lambda!46792)))))

(assert (=> b!1157282 (= (rulesProduceEachTokenIndividuallyList!517 Lexer!1647 (rules!9435 thiss!10527) lt!393367) e!740350)))

(declare-fun res!520946 () Bool)

(assert (=> b!1157282 (=> res!520946 e!740350)))

(assert (=> b!1157282 (= res!520946 (not (is-Cons!11283 lt!393367)))))

(assert (=> b!1157282 (= lt!393367 (list!4157 (tokens!1553 thiss!10527)))))

(assert (=> b!1157282 (= (rulesProduceEachTokenIndividually!688 Lexer!1647 (rules!9435 thiss!10527) (tokens!1553 thiss!10527)) (forall!2900 (tokens!1553 thiss!10527) lambda!46792))))

(assert (= (and start!101104 res!520945) b!1157278))

(assert (= (and b!1157278 res!520949) b!1157280))

(assert (= (and b!1157280 res!520942) b!1157282))

(assert (= (and b!1157282 (not res!520946)) b!1157276))

(assert (= (and b!1157276 res!520951) b!1157279))

(assert (= (and b!1157282 (not res!520950)) b!1157277))

(assert (= (and b!1157277 res!520944) b!1157271))

(assert (= (and b!1157271 res!520947) b!1157274))

(assert (= (and b!1157274 (not res!520948)) b!1157275))

(assert (= (and b!1157275 res!520943) b!1157273))

(assert (= b!1157272 b!1157281))

(assert (= start!101104 b!1157272))

(declare-fun m!1323999 () Bool)

(assert (=> b!1157280 m!1323999))

(declare-fun m!1324001 () Bool)

(assert (=> b!1157280 m!1324001))

(declare-fun m!1324003 () Bool)

(assert (=> b!1157281 m!1324003))

(declare-fun m!1324005 () Bool)

(assert (=> b!1157276 m!1324005))

(declare-fun m!1324007 () Bool)

(assert (=> b!1157282 m!1324007))

(declare-fun m!1324009 () Bool)

(assert (=> b!1157282 m!1324009))

(declare-fun m!1324011 () Bool)

(assert (=> b!1157282 m!1324011))

(declare-fun m!1324013 () Bool)

(assert (=> b!1157282 m!1324013))

(assert (=> b!1157282 m!1324013))

(declare-fun m!1324015 () Bool)

(assert (=> b!1157274 m!1324015))

(declare-fun m!1324017 () Bool)

(assert (=> b!1157271 m!1324017))

(declare-fun m!1324019 () Bool)

(assert (=> b!1157271 m!1324019))

(declare-fun m!1324021 () Bool)

(assert (=> b!1157278 m!1324021))

(declare-fun m!1324023 () Bool)

(assert (=> b!1157275 m!1324023))

(declare-fun m!1324025 () Bool)

(assert (=> b!1157277 m!1324025))

(declare-fun m!1324027 () Bool)

(assert (=> b!1157277 m!1324027))

(declare-fun m!1324029 () Bool)

(assert (=> b!1157277 m!1324029))

(declare-fun m!1324031 () Bool)

(assert (=> b!1157277 m!1324031))

(declare-fun m!1324033 () Bool)

(assert (=> b!1157277 m!1324033))

(declare-fun m!1324035 () Bool)

(assert (=> b!1157277 m!1324035))

(declare-fun m!1324037 () Bool)

(assert (=> b!1157277 m!1324037))

(declare-fun m!1324039 () Bool)

(assert (=> b!1157277 m!1324039))

(assert (=> b!1157277 m!1324031))

(declare-fun m!1324041 () Bool)

(assert (=> b!1157279 m!1324041))

(declare-fun m!1324043 () Bool)

(assert (=> start!101104 m!1324043))

(declare-fun m!1324045 () Bool)

(assert (=> b!1157272 m!1324045))

(declare-fun m!1324047 () Bool)

(assert (=> b!1157273 m!1324047))

(push 1)

(assert (not b!1157289))

(assert (not b!1157280))

(assert (not b!1157282))

(assert (not b!1157278))

(assert (not b!1157272))

(assert (not b!1157277))

(assert (not b!1157275))

(assert (not b!1157279))

(assert (not b!1157271))

(assert (not b!1157276))

(assert (not b!1157281))

(assert (not start!101104))

(assert (not b!1157290))

(assert (not b!1157274))

(assert (not b!1157273))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun bs!283030 () Bool)

(declare-fun d!330706 () Bool)

(assert (= bs!283030 (and d!330706 b!1157282)))

(declare-fun lambda!46804 () Int)

(assert (=> bs!283030 (= lambda!46804 lambda!46792)))

(declare-fun b!1157351 () Bool)

(declare-fun e!740408 () Bool)

(assert (=> b!1157351 (= e!740408 true)))

(declare-fun b!1157350 () Bool)

(declare-fun e!740407 () Bool)

(assert (=> b!1157350 (= e!740407 e!740408)))

(declare-fun b!1157349 () Bool)

(declare-fun e!740406 () Bool)

(assert (=> b!1157349 (= e!740406 e!740407)))

(assert (=> d!330706 e!740406))

(assert (= b!1157350 b!1157351))

(assert (= b!1157349 b!1157350))

(assert (= (and d!330706 (is-Cons!11284 (rules!9435 thiss!10527))) b!1157349))

(declare-fun order!6903 () Int)

(declare-fun order!6905 () Int)

(declare-fun dynLambda!4971 (Int Int) Int)

(declare-fun dynLambda!4972 (Int Int) Int)

(assert (=> b!1157351 (< (dynLambda!4971 order!6903 (toValue!3055 (transformation!1954 (h!16685 (rules!9435 thiss!10527))))) (dynLambda!4972 order!6905 lambda!46804))))

(declare-fun order!6907 () Int)

(declare-fun dynLambda!4973 (Int Int) Int)

(assert (=> b!1157351 (< (dynLambda!4973 order!6907 (toChars!2914 (transformation!1954 (h!16685 (rules!9435 thiss!10527))))) (dynLambda!4972 order!6905 lambda!46804))))

(assert (=> d!330706 true))

(declare-fun lt!393392 () Bool)

(assert (=> d!330706 (= lt!393392 (forall!2901 (t!109160 lt!393365) lambda!46804))))

(declare-fun e!740399 () Bool)

(assert (=> d!330706 (= lt!393392 e!740399)))

(declare-fun res!520986 () Bool)

(assert (=> d!330706 (=> res!520986 e!740399)))

(assert (=> d!330706 (= res!520986 (not (is-Cons!11283 (t!109160 lt!393365))))))

(assert (=> d!330706 (not (isEmpty!6940 (rules!9435 thiss!10527)))))

(assert (=> d!330706 (= (rulesProduceEachTokenIndividuallyList!517 Lexer!1647 (rules!9435 thiss!10527) (t!109160 lt!393365)) lt!393392)))

(declare-fun b!1157339 () Bool)

(declare-fun e!740398 () Bool)

(assert (=> b!1157339 (= e!740399 e!740398)))

(declare-fun res!520987 () Bool)

(assert (=> b!1157339 (=> (not res!520987) (not e!740398))))

(assert (=> b!1157339 (= res!520987 (rulesProduceIndividualToken!686 Lexer!1647 (rules!9435 thiss!10527) (h!16684 (t!109160 lt!393365))))))

(declare-fun b!1157340 () Bool)

(assert (=> b!1157340 (= e!740398 (rulesProduceEachTokenIndividuallyList!517 Lexer!1647 (rules!9435 thiss!10527) (t!109160 (t!109160 lt!393365))))))

(assert (= (and d!330706 (not res!520986)) b!1157339))

(assert (= (and b!1157339 res!520987) b!1157340))

(declare-fun m!1324103 () Bool)

(assert (=> d!330706 m!1324103))

(assert (=> d!330706 m!1324025))

(declare-fun m!1324105 () Bool)

(assert (=> b!1157339 m!1324105))

(declare-fun m!1324107 () Bool)

(assert (=> b!1157340 m!1324107))

(assert (=> b!1157273 d!330706))

(declare-fun bs!283031 () Bool)

(declare-fun d!330712 () Bool)

(assert (= bs!283031 (and d!330712 b!1157282)))

(declare-fun lambda!46805 () Int)

(assert (=> bs!283031 (= lambda!46805 lambda!46792)))

(declare-fun bs!283032 () Bool)

(assert (= bs!283032 (and d!330712 d!330706)))

(assert (=> bs!283032 (= lambda!46805 lambda!46804)))

(declare-fun b!1157358 () Bool)

(declare-fun e!740413 () Bool)

(assert (=> b!1157358 (= e!740413 true)))

(declare-fun b!1157357 () Bool)

(declare-fun e!740412 () Bool)

(assert (=> b!1157357 (= e!740412 e!740413)))

(declare-fun b!1157356 () Bool)

(declare-fun e!740411 () Bool)

(assert (=> b!1157356 (= e!740411 e!740412)))

(assert (=> d!330712 e!740411))

(assert (= b!1157357 b!1157358))

(assert (= b!1157356 b!1157357))

(assert (= (and d!330712 (is-Cons!11284 (rules!9435 thiss!10527))) b!1157356))

(assert (=> b!1157358 (< (dynLambda!4971 order!6903 (toValue!3055 (transformation!1954 (h!16685 (rules!9435 thiss!10527))))) (dynLambda!4972 order!6905 lambda!46805))))

(assert (=> b!1157358 (< (dynLambda!4973 order!6907 (toChars!2914 (transformation!1954 (h!16685 (rules!9435 thiss!10527))))) (dynLambda!4972 order!6905 lambda!46805))))

(assert (=> d!330712 true))

(declare-fun lt!393393 () Bool)

(assert (=> d!330712 (= lt!393393 (forall!2901 lt!393365 lambda!46805))))

(declare-fun e!740410 () Bool)

(assert (=> d!330712 (= lt!393393 e!740410)))

(declare-fun res!520988 () Bool)

(assert (=> d!330712 (=> res!520988 e!740410)))

(assert (=> d!330712 (= res!520988 (not (is-Cons!11283 lt!393365)))))

(assert (=> d!330712 (not (isEmpty!6940 (rules!9435 thiss!10527)))))

(assert (=> d!330712 (= (rulesProduceEachTokenIndividuallyList!517 Lexer!1647 (rules!9435 thiss!10527) lt!393365) lt!393393)))

(declare-fun b!1157354 () Bool)

(declare-fun e!740409 () Bool)

(assert (=> b!1157354 (= e!740410 e!740409)))

(declare-fun res!520989 () Bool)

(assert (=> b!1157354 (=> (not res!520989) (not e!740409))))

(assert (=> b!1157354 (= res!520989 (rulesProduceIndividualToken!686 Lexer!1647 (rules!9435 thiss!10527) (h!16684 lt!393365)))))

(declare-fun b!1157355 () Bool)

(assert (=> b!1157355 (= e!740409 (rulesProduceEachTokenIndividuallyList!517 Lexer!1647 (rules!9435 thiss!10527) (t!109160 lt!393365)))))

(assert (= (and d!330712 (not res!520988)) b!1157354))

(assert (= (and b!1157354 res!520989) b!1157355))

(declare-fun m!1324109 () Bool)

(assert (=> d!330712 m!1324109))

(assert (=> d!330712 m!1324025))

(assert (=> b!1157354 m!1324023))

(assert (=> b!1157355 m!1324047))

(assert (=> b!1157274 d!330712))

(declare-fun d!330714 () Bool)

(declare-fun lt!393399 () Bool)

(declare-fun e!740419 () Bool)

(assert (=> d!330714 (= lt!393399 e!740419)))

(declare-fun res!520997 () Bool)

(assert (=> d!330714 (=> (not res!520997) (not e!740419))))

(declare-datatypes ((tuple2!11976 0))(
  ( (tuple2!11977 (_1!6835 BalanceConc!7364) (_2!6835 BalanceConc!7362)) )
))
(declare-fun lex!681 (LexerInterface!1649 List!11308 BalanceConc!7362) tuple2!11976)

(declare-fun print!618 (LexerInterface!1649 BalanceConc!7364) BalanceConc!7362)

(declare-fun singletonSeq!636 (Token!3570) BalanceConc!7364)

(assert (=> d!330714 (= res!520997 (= (list!4157 (_1!6835 (lex!681 Lexer!1647 (rules!9435 thiss!10527) (print!618 Lexer!1647 (singletonSeq!636 (h!16684 lt!393365)))))) (list!4157 (singletonSeq!636 (h!16684 lt!393365)))))))

(declare-fun e!740418 () Bool)

(assert (=> d!330714 (= lt!393399 e!740418)))

(declare-fun res!520996 () Bool)

(assert (=> d!330714 (=> (not res!520996) (not e!740418))))

(declare-fun lt!393398 () tuple2!11976)

(assert (=> d!330714 (= res!520996 (= (size!8875 (_1!6835 lt!393398)) 1))))

(assert (=> d!330714 (= lt!393398 (lex!681 Lexer!1647 (rules!9435 thiss!10527) (print!618 Lexer!1647 (singletonSeq!636 (h!16684 lt!393365)))))))

(assert (=> d!330714 (not (isEmpty!6940 (rules!9435 thiss!10527)))))

(assert (=> d!330714 (= (rulesProduceIndividualToken!686 Lexer!1647 (rules!9435 thiss!10527) (h!16684 lt!393365)) lt!393399)))

(declare-fun b!1157365 () Bool)

(declare-fun res!520998 () Bool)

(assert (=> b!1157365 (=> (not res!520998) (not e!740418))))

(declare-fun apply!2405 (BalanceConc!7364 Int) Token!3570)

(assert (=> b!1157365 (= res!520998 (= (apply!2405 (_1!6835 lt!393398) 0) (h!16684 lt!393365)))))

(declare-fun b!1157366 () Bool)

(declare-fun isEmpty!6942 (BalanceConc!7362) Bool)

(assert (=> b!1157366 (= e!740418 (isEmpty!6942 (_2!6835 lt!393398)))))

(declare-fun b!1157367 () Bool)

(assert (=> b!1157367 (= e!740419 (isEmpty!6942 (_2!6835 (lex!681 Lexer!1647 (rules!9435 thiss!10527) (print!618 Lexer!1647 (singletonSeq!636 (h!16684 lt!393365)))))))))

(assert (= (and d!330714 res!520996) b!1157365))

(assert (= (and b!1157365 res!520998) b!1157366))

(assert (= (and d!330714 res!520997) b!1157367))

(declare-fun m!1324111 () Bool)

(assert (=> d!330714 m!1324111))

(declare-fun m!1324113 () Bool)

(assert (=> d!330714 m!1324113))

(assert (=> d!330714 m!1324111))

(declare-fun m!1324115 () Bool)

(assert (=> d!330714 m!1324115))

(assert (=> d!330714 m!1324113))

(declare-fun m!1324117 () Bool)

(assert (=> d!330714 m!1324117))

(assert (=> d!330714 m!1324025))

(declare-fun m!1324119 () Bool)

(assert (=> d!330714 m!1324119))

(declare-fun m!1324121 () Bool)

(assert (=> d!330714 m!1324121))

(assert (=> d!330714 m!1324111))

(declare-fun m!1324123 () Bool)

(assert (=> b!1157365 m!1324123))

(declare-fun m!1324125 () Bool)

(assert (=> b!1157366 m!1324125))

(assert (=> b!1157367 m!1324111))

(assert (=> b!1157367 m!1324111))

(assert (=> b!1157367 m!1324113))

(assert (=> b!1157367 m!1324113))

(assert (=> b!1157367 m!1324117))

(declare-fun m!1324127 () Bool)

(assert (=> b!1157367 m!1324127))

(assert (=> b!1157275 d!330714))

(declare-fun d!330716 () Bool)

(declare-fun c!194101 () Bool)

(assert (=> d!330716 (= c!194101 (is-Node!3671 (c!194095 (tokens!1553 thiss!10527))))))

(declare-fun e!740424 () Bool)

(assert (=> d!330716 (= (inv!14822 (c!194095 (tokens!1553 thiss!10527))) e!740424)))

(declare-fun b!1157374 () Bool)

(declare-fun inv!14826 (Conc!3671) Bool)

(assert (=> b!1157374 (= e!740424 (inv!14826 (c!194095 (tokens!1553 thiss!10527))))))

(declare-fun b!1157375 () Bool)

(declare-fun e!740425 () Bool)

(assert (=> b!1157375 (= e!740424 e!740425)))

(declare-fun res!521001 () Bool)

(assert (=> b!1157375 (= res!521001 (not (is-Leaf!5659 (c!194095 (tokens!1553 thiss!10527)))))))

(assert (=> b!1157375 (=> res!521001 e!740425)))

(declare-fun b!1157376 () Bool)

(declare-fun inv!14827 (Conc!3671) Bool)

(assert (=> b!1157376 (= e!740425 (inv!14827 (c!194095 (tokens!1553 thiss!10527))))))

(assert (= (and d!330716 c!194101) b!1157374))

(assert (= (and d!330716 (not c!194101)) b!1157375))

(assert (= (and b!1157375 (not res!521001)) b!1157376))

(declare-fun m!1324129 () Bool)

(assert (=> b!1157374 m!1324129))

(declare-fun m!1324131 () Bool)

(assert (=> b!1157376 m!1324131))

(assert (=> b!1157281 d!330716))

(declare-fun bs!283036 () Bool)

(declare-fun d!330718 () Bool)

(assert (= bs!283036 (and d!330718 b!1157282)))

(declare-fun lambda!46814 () Int)

(assert (=> bs!283036 (= lambda!46814 lambda!46792)))

(declare-fun bs!283037 () Bool)

(assert (= bs!283037 (and d!330718 d!330706)))

(assert (=> bs!283037 (= lambda!46814 lambda!46804)))

(declare-fun bs!283038 () Bool)

(assert (= bs!283038 (and d!330718 d!330712)))

(assert (=> bs!283038 (= lambda!46814 lambda!46805)))

(declare-fun b!1157409 () Bool)

(declare-fun e!740454 () Bool)

(assert (=> b!1157409 (= e!740454 true)))

(declare-fun b!1157408 () Bool)

(declare-fun e!740453 () Bool)

(assert (=> b!1157408 (= e!740453 e!740454)))

(declare-fun b!1157407 () Bool)

(declare-fun e!740452 () Bool)

(assert (=> b!1157407 (= e!740452 e!740453)))

(assert (=> d!330718 e!740452))

(assert (= b!1157408 b!1157409))

(assert (= b!1157407 b!1157408))

(assert (= (and d!330718 (is-Cons!11284 (rules!9435 thiss!10527))) b!1157407))

(assert (=> b!1157409 (< (dynLambda!4971 order!6903 (toValue!3055 (transformation!1954 (h!16685 (rules!9435 thiss!10527))))) (dynLambda!4972 order!6905 lambda!46814))))

(assert (=> b!1157409 (< (dynLambda!4973 order!6907 (toChars!2914 (transformation!1954 (h!16685 (rules!9435 thiss!10527))))) (dynLambda!4972 order!6905 lambda!46814))))

(assert (=> d!330718 true))

(declare-fun e!740451 () Bool)

(assert (=> d!330718 e!740451))

(declare-fun res!521015 () Bool)

(assert (=> d!330718 (=> (not res!521015) (not e!740451))))

(declare-fun lt!393406 () Bool)

(assert (=> d!330718 (= res!521015 (= lt!393406 (forall!2901 (list!4157 lt!393368) lambda!46814)))))

(assert (=> d!330718 (= lt!393406 (forall!2900 lt!393368 lambda!46814))))

(assert (=> d!330718 (not (isEmpty!6940 (rules!9435 thiss!10527)))))

(assert (=> d!330718 (= (rulesProduceEachTokenIndividually!688 Lexer!1647 (rules!9435 thiss!10527) lt!393368) lt!393406)))

(declare-fun b!1157406 () Bool)

(assert (=> b!1157406 (= e!740451 (= lt!393406 (rulesProduceEachTokenIndividuallyList!517 Lexer!1647 (rules!9435 thiss!10527) (list!4157 lt!393368))))))

(assert (= (and d!330718 res!521015) b!1157406))

(assert (=> d!330718 m!1324027))

(assert (=> d!330718 m!1324027))

(declare-fun m!1324145 () Bool)

(assert (=> d!330718 m!1324145))

(declare-fun m!1324147 () Bool)

(assert (=> d!330718 m!1324147))

(assert (=> d!330718 m!1324025))

(assert (=> b!1157406 m!1324027))

(assert (=> b!1157406 m!1324027))

(declare-fun m!1324149 () Bool)

(assert (=> b!1157406 m!1324149))

(assert (=> b!1157271 d!330718))

(declare-fun d!330726 () Bool)

(declare-fun lt!393409 () Bool)

(assert (=> d!330726 (= lt!393409 (forall!2901 (list!4157 lt!393368) lambda!46792))))

(declare-fun forall!2904 (Conc!3671 Int) Bool)

(assert (=> d!330726 (= lt!393409 (forall!2904 (c!194095 lt!393368) lambda!46792))))

(assert (=> d!330726 (= (forall!2900 lt!393368 lambda!46792) lt!393409)))

(declare-fun bs!283039 () Bool)

(assert (= bs!283039 d!330726))

(assert (=> bs!283039 m!1324027))

(assert (=> bs!283039 m!1324027))

(declare-fun m!1324151 () Bool)

(assert (=> bs!283039 m!1324151))

(declare-fun m!1324153 () Bool)

(assert (=> bs!283039 m!1324153))

(assert (=> b!1157271 d!330726))

(declare-fun bs!283040 () Bool)

(declare-fun d!330728 () Bool)

(assert (= bs!283040 (and d!330728 b!1157282)))

(declare-fun lambda!46815 () Int)

(assert (=> bs!283040 (= lambda!46815 lambda!46792)))

(declare-fun bs!283041 () Bool)

(assert (= bs!283041 (and d!330728 d!330706)))

(assert (=> bs!283041 (= lambda!46815 lambda!46804)))

(declare-fun bs!283042 () Bool)

(assert (= bs!283042 (and d!330728 d!330712)))

(assert (=> bs!283042 (= lambda!46815 lambda!46805)))

(declare-fun bs!283043 () Bool)

(assert (= bs!283043 (and d!330728 d!330718)))

(assert (=> bs!283043 (= lambda!46815 lambda!46814)))

(declare-fun b!1157413 () Bool)

(declare-fun e!740458 () Bool)

(assert (=> b!1157413 (= e!740458 true)))

(declare-fun b!1157412 () Bool)

(declare-fun e!740457 () Bool)

(assert (=> b!1157412 (= e!740457 e!740458)))

(declare-fun b!1157411 () Bool)

(declare-fun e!740456 () Bool)

(assert (=> b!1157411 (= e!740456 e!740457)))

(assert (=> d!330728 e!740456))

(assert (= b!1157412 b!1157413))

(assert (= b!1157411 b!1157412))

(assert (= (and d!330728 (is-Cons!11284 (rules!9435 thiss!10527))) b!1157411))

(assert (=> b!1157413 (< (dynLambda!4971 order!6903 (toValue!3055 (transformation!1954 (h!16685 (rules!9435 thiss!10527))))) (dynLambda!4972 order!6905 lambda!46815))))

(assert (=> b!1157413 (< (dynLambda!4973 order!6907 (toChars!2914 (transformation!1954 (h!16685 (rules!9435 thiss!10527))))) (dynLambda!4972 order!6905 lambda!46815))))

(assert (=> d!330728 true))

(declare-fun e!740455 () Bool)

(assert (=> d!330728 e!740455))

(declare-fun res!521016 () Bool)

(assert (=> d!330728 (=> (not res!521016) (not e!740455))))

(declare-fun lt!393410 () Bool)

(assert (=> d!330728 (= res!521016 (= lt!393410 (forall!2901 (list!4157 (tokens!1553 thiss!10527)) lambda!46815)))))

(assert (=> d!330728 (= lt!393410 (forall!2900 (tokens!1553 thiss!10527) lambda!46815))))

(assert (=> d!330728 (not (isEmpty!6940 (rules!9435 thiss!10527)))))

(assert (=> d!330728 (= (rulesProduceEachTokenIndividually!688 Lexer!1647 (rules!9435 thiss!10527) (tokens!1553 thiss!10527)) lt!393410)))

(declare-fun b!1157410 () Bool)

(assert (=> b!1157410 (= e!740455 (= lt!393410 (rulesProduceEachTokenIndividuallyList!517 Lexer!1647 (rules!9435 thiss!10527) (list!4157 (tokens!1553 thiss!10527)))))))

(assert (= (and d!330728 res!521016) b!1157410))

(assert (=> d!330728 m!1324011))

(assert (=> d!330728 m!1324011))

(declare-fun m!1324155 () Bool)

(assert (=> d!330728 m!1324155))

(declare-fun m!1324157 () Bool)

(assert (=> d!330728 m!1324157))

(assert (=> d!330728 m!1324025))

(assert (=> b!1157410 m!1324011))

(assert (=> b!1157410 m!1324011))

(declare-fun m!1324159 () Bool)

(assert (=> b!1157410 m!1324159))

(assert (=> b!1157282 d!330728))

(declare-fun d!330730 () Bool)

(declare-fun list!4159 (Conc!3671) List!11307)

(assert (=> d!330730 (= (list!4157 (tokens!1553 thiss!10527)) (list!4159 (c!194095 (tokens!1553 thiss!10527))))))

(declare-fun bs!283044 () Bool)

(assert (= bs!283044 d!330730))

(declare-fun m!1324161 () Bool)

(assert (=> bs!283044 m!1324161))

(assert (=> b!1157282 d!330730))

(declare-fun bs!283045 () Bool)

(declare-fun d!330732 () Bool)

(assert (= bs!283045 (and d!330732 d!330728)))

(declare-fun lambda!46816 () Int)

(assert (=> bs!283045 (= lambda!46816 lambda!46815)))

(declare-fun bs!283046 () Bool)

(assert (= bs!283046 (and d!330732 d!330712)))

(assert (=> bs!283046 (= lambda!46816 lambda!46805)))

(declare-fun bs!283047 () Bool)

(assert (= bs!283047 (and d!330732 d!330718)))

(assert (=> bs!283047 (= lambda!46816 lambda!46814)))

(declare-fun bs!283048 () Bool)

(assert (= bs!283048 (and d!330732 d!330706)))

(assert (=> bs!283048 (= lambda!46816 lambda!46804)))

(declare-fun bs!283049 () Bool)

(assert (= bs!283049 (and d!330732 b!1157282)))

(assert (=> bs!283049 (= lambda!46816 lambda!46792)))

(declare-fun b!1157418 () Bool)

(declare-fun e!740463 () Bool)

(assert (=> b!1157418 (= e!740463 true)))

(declare-fun b!1157417 () Bool)

(declare-fun e!740462 () Bool)

(assert (=> b!1157417 (= e!740462 e!740463)))

(declare-fun b!1157416 () Bool)

(declare-fun e!740461 () Bool)

(assert (=> b!1157416 (= e!740461 e!740462)))

(assert (=> d!330732 e!740461))

(assert (= b!1157417 b!1157418))

(assert (= b!1157416 b!1157417))

(assert (= (and d!330732 (is-Cons!11284 (rules!9435 thiss!10527))) b!1157416))

(assert (=> b!1157418 (< (dynLambda!4971 order!6903 (toValue!3055 (transformation!1954 (h!16685 (rules!9435 thiss!10527))))) (dynLambda!4972 order!6905 lambda!46816))))

(assert (=> b!1157418 (< (dynLambda!4973 order!6907 (toChars!2914 (transformation!1954 (h!16685 (rules!9435 thiss!10527))))) (dynLambda!4972 order!6905 lambda!46816))))

(assert (=> d!330732 true))

(declare-fun lt!393411 () Bool)

(assert (=> d!330732 (= lt!393411 (forall!2901 lt!393367 lambda!46816))))

(declare-fun e!740460 () Bool)

(assert (=> d!330732 (= lt!393411 e!740460)))

(declare-fun res!521017 () Bool)

(assert (=> d!330732 (=> res!521017 e!740460)))

(assert (=> d!330732 (= res!521017 (not (is-Cons!11283 lt!393367)))))

(assert (=> d!330732 (not (isEmpty!6940 (rules!9435 thiss!10527)))))

(assert (=> d!330732 (= (rulesProduceEachTokenIndividuallyList!517 Lexer!1647 (rules!9435 thiss!10527) lt!393367) lt!393411)))

(declare-fun b!1157414 () Bool)

(declare-fun e!740459 () Bool)

(assert (=> b!1157414 (= e!740460 e!740459)))

(declare-fun res!521018 () Bool)

(assert (=> b!1157414 (=> (not res!521018) (not e!740459))))

(assert (=> b!1157414 (= res!521018 (rulesProduceIndividualToken!686 Lexer!1647 (rules!9435 thiss!10527) (h!16684 lt!393367)))))

(declare-fun b!1157415 () Bool)

(assert (=> b!1157415 (= e!740459 (rulesProduceEachTokenIndividuallyList!517 Lexer!1647 (rules!9435 thiss!10527) (t!109160 lt!393367)))))

(assert (= (and d!330732 (not res!521017)) b!1157414))

(assert (= (and b!1157414 res!521018) b!1157415))

(declare-fun m!1324163 () Bool)

(assert (=> d!330732 m!1324163))

(assert (=> d!330732 m!1324025))

(assert (=> b!1157414 m!1324005))

(assert (=> b!1157415 m!1324041))

(assert (=> b!1157282 d!330732))

(declare-fun d!330734 () Bool)

(declare-fun lt!393412 () Bool)

(assert (=> d!330734 (= lt!393412 (forall!2901 (list!4157 (tokens!1553 thiss!10527)) lambda!46792))))

(assert (=> d!330734 (= lt!393412 (forall!2904 (c!194095 (tokens!1553 thiss!10527)) lambda!46792))))

(assert (=> d!330734 (= (forall!2900 (tokens!1553 thiss!10527) lambda!46792) lt!393412)))

(declare-fun bs!283050 () Bool)

(assert (= bs!283050 d!330734))

(assert (=> bs!283050 m!1324011))

(assert (=> bs!283050 m!1324011))

(declare-fun m!1324165 () Bool)

(assert (=> bs!283050 m!1324165))

(declare-fun m!1324167 () Bool)

(assert (=> bs!283050 m!1324167))

(assert (=> b!1157282 d!330734))

(declare-fun d!330736 () Bool)

(declare-fun isBalanced!1036 (Conc!3671) Bool)

(assert (=> d!330736 (= (inv!14820 (tokens!1553 thiss!10527)) (isBalanced!1036 (c!194095 (tokens!1553 thiss!10527))))))

(declare-fun bs!283051 () Bool)

(assert (= bs!283051 d!330736))

(declare-fun m!1324169 () Bool)

(assert (=> bs!283051 m!1324169))

(assert (=> b!1157272 d!330736))

(declare-fun bs!283052 () Bool)

(declare-fun d!330738 () Bool)

(assert (= bs!283052 (and d!330738 d!330728)))

(declare-fun lambda!46817 () Int)

(assert (=> bs!283052 (= lambda!46817 lambda!46815)))

(declare-fun bs!283053 () Bool)

(assert (= bs!283053 (and d!330738 d!330732)))

(assert (=> bs!283053 (= lambda!46817 lambda!46816)))

(declare-fun bs!283054 () Bool)

(assert (= bs!283054 (and d!330738 d!330712)))

(assert (=> bs!283054 (= lambda!46817 lambda!46805)))

(declare-fun bs!283055 () Bool)

(assert (= bs!283055 (and d!330738 d!330718)))

(assert (=> bs!283055 (= lambda!46817 lambda!46814)))

(declare-fun bs!283056 () Bool)

(assert (= bs!283056 (and d!330738 d!330706)))

(assert (=> bs!283056 (= lambda!46817 lambda!46804)))

(declare-fun bs!283057 () Bool)

(assert (= bs!283057 (and d!330738 b!1157282)))

(assert (=> bs!283057 (= lambda!46817 lambda!46792)))

(declare-fun b!1157423 () Bool)

(declare-fun e!740468 () Bool)

(assert (=> b!1157423 (= e!740468 true)))

(declare-fun b!1157422 () Bool)

(declare-fun e!740467 () Bool)

(assert (=> b!1157422 (= e!740467 e!740468)))

(declare-fun b!1157421 () Bool)

(declare-fun e!740466 () Bool)

(assert (=> b!1157421 (= e!740466 e!740467)))

(assert (=> d!330738 e!740466))

(assert (= b!1157422 b!1157423))

(assert (= b!1157421 b!1157422))

(assert (= (and d!330738 (is-Cons!11284 (rules!9435 thiss!10527))) b!1157421))

(assert (=> b!1157423 (< (dynLambda!4971 order!6903 (toValue!3055 (transformation!1954 (h!16685 (rules!9435 thiss!10527))))) (dynLambda!4972 order!6905 lambda!46817))))

(assert (=> b!1157423 (< (dynLambda!4973 order!6907 (toChars!2914 (transformation!1954 (h!16685 (rules!9435 thiss!10527))))) (dynLambda!4972 order!6905 lambda!46817))))

(assert (=> d!330738 true))

(declare-fun lt!393413 () Bool)

(assert (=> d!330738 (= lt!393413 (forall!2901 (t!109160 lt!393367) lambda!46817))))

(declare-fun e!740465 () Bool)

(assert (=> d!330738 (= lt!393413 e!740465)))

(declare-fun res!521019 () Bool)

(assert (=> d!330738 (=> res!521019 e!740465)))

(assert (=> d!330738 (= res!521019 (not (is-Cons!11283 (t!109160 lt!393367))))))

(assert (=> d!330738 (not (isEmpty!6940 (rules!9435 thiss!10527)))))

(assert (=> d!330738 (= (rulesProduceEachTokenIndividuallyList!517 Lexer!1647 (rules!9435 thiss!10527) (t!109160 lt!393367)) lt!393413)))

(declare-fun b!1157419 () Bool)

(declare-fun e!740464 () Bool)

(assert (=> b!1157419 (= e!740465 e!740464)))

(declare-fun res!521020 () Bool)

(assert (=> b!1157419 (=> (not res!521020) (not e!740464))))

(assert (=> b!1157419 (= res!521020 (rulesProduceIndividualToken!686 Lexer!1647 (rules!9435 thiss!10527) (h!16684 (t!109160 lt!393367))))))

(declare-fun b!1157420 () Bool)

(assert (=> b!1157420 (= e!740464 (rulesProduceEachTokenIndividuallyList!517 Lexer!1647 (rules!9435 thiss!10527) (t!109160 (t!109160 lt!393367))))))

(assert (= (and d!330738 (not res!521019)) b!1157419))

(assert (= (and b!1157419 res!521020) b!1157420))

(declare-fun m!1324171 () Bool)

(assert (=> d!330738 m!1324171))

(assert (=> d!330738 m!1324025))

(declare-fun m!1324173 () Bool)

(assert (=> b!1157419 m!1324173))

(declare-fun m!1324175 () Bool)

(assert (=> b!1157420 m!1324175))

(assert (=> b!1157279 d!330738))

(declare-fun d!330740 () Bool)

(declare-fun res!521023 () Bool)

(declare-fun e!740471 () Bool)

(assert (=> d!330740 (=> (not res!521023) (not e!740471))))

(declare-fun rulesValid!677 (LexerInterface!1649 List!11308) Bool)

(assert (=> d!330740 (= res!521023 (rulesValid!677 Lexer!1647 (rules!9435 thiss!10527)))))

(assert (=> d!330740 (= (rulesInvariant!1523 Lexer!1647 (rules!9435 thiss!10527)) e!740471)))

(declare-fun b!1157426 () Bool)

(declare-datatypes ((List!11313 0))(
  ( (Nil!11289) (Cons!11289 (h!16690 String!13690) (t!109188 List!11313)) )
))
(declare-fun noDuplicateTag!677 (LexerInterface!1649 List!11308 List!11313) Bool)

(assert (=> b!1157426 (= e!740471 (noDuplicateTag!677 Lexer!1647 (rules!9435 thiss!10527) Nil!11289))))

(assert (= (and d!330740 res!521023) b!1157426))

(declare-fun m!1324177 () Bool)

(assert (=> d!330740 m!1324177))

(declare-fun m!1324179 () Bool)

(assert (=> b!1157426 m!1324179))

(assert (=> b!1157280 d!330740))

(declare-fun d!330742 () Bool)

(declare-fun e!740483 () Bool)

(assert (=> d!330742 e!740483))

(declare-fun res!521037 () Bool)

(assert (=> d!330742 (=> (not res!521037) (not e!740483))))

(assert (=> d!330742 (= res!521037 (rulesInvariant!1523 Lexer!1647 (rules!9435 thiss!10527)))))

(declare-fun Unit!17307 () Unit!17302)

(assert (=> d!330742 (= (lemmaInvariant!141 thiss!10527) Unit!17307)))

(declare-fun b!1157446 () Bool)

(declare-fun res!521038 () Bool)

(assert (=> b!1157446 (=> (not res!521038) (not e!740483))))

(assert (=> b!1157446 (= res!521038 (rulesProduceEachTokenIndividually!688 Lexer!1647 (rules!9435 thiss!10527) (tokens!1553 thiss!10527)))))

(declare-fun b!1157447 () Bool)

(declare-fun separableTokens!97 (LexerInterface!1649 BalanceConc!7364 List!11308) Bool)

(assert (=> b!1157447 (= e!740483 (separableTokens!97 Lexer!1647 (tokens!1553 thiss!10527) (rules!9435 thiss!10527)))))

(assert (= (and d!330742 res!521037) b!1157446))

(assert (= (and b!1157446 res!521038) b!1157447))

(assert (=> d!330742 m!1323999))

(assert (=> b!1157446 m!1324009))

(declare-fun m!1324187 () Bool)

(assert (=> b!1157447 m!1324187))

(assert (=> b!1157280 d!330742))

(declare-fun d!330748 () Bool)

(declare-fun res!521050 () Bool)

(declare-fun e!740497 () Bool)

(assert (=> d!330748 (=> (not res!521050) (not e!740497))))

(assert (=> d!330748 (= res!521050 (not (isEmpty!6940 (rules!9435 thiss!10527))))))

(assert (=> d!330748 (= (inv!14821 thiss!10527) e!740497)))

(declare-fun b!1157465 () Bool)

(declare-fun res!521051 () Bool)

(assert (=> b!1157465 (=> (not res!521051) (not e!740497))))

(assert (=> b!1157465 (= res!521051 (rulesInvariant!1523 Lexer!1647 (rules!9435 thiss!10527)))))

(declare-fun b!1157466 () Bool)

(declare-fun res!521052 () Bool)

(assert (=> b!1157466 (=> (not res!521052) (not e!740497))))

(assert (=> b!1157466 (= res!521052 (rulesProduceEachTokenIndividually!688 Lexer!1647 (rules!9435 thiss!10527) (tokens!1553 thiss!10527)))))

(declare-fun b!1157467 () Bool)

(assert (=> b!1157467 (= e!740497 (separableTokens!97 Lexer!1647 (tokens!1553 thiss!10527) (rules!9435 thiss!10527)))))

(assert (= (and d!330748 res!521050) b!1157465))

(assert (= (and b!1157465 res!521051) b!1157466))

(assert (= (and b!1157466 res!521052) b!1157467))

(assert (=> d!330748 m!1324025))

(assert (=> b!1157465 m!1323999))

(assert (=> b!1157466 m!1324009))

(assert (=> b!1157467 m!1324187))

(assert (=> start!101104 d!330748))

(declare-fun d!330758 () Bool)

(declare-fun lt!393422 () Bool)

(declare-fun e!740499 () Bool)

(assert (=> d!330758 (= lt!393422 e!740499)))

(declare-fun res!521054 () Bool)

(assert (=> d!330758 (=> (not res!521054) (not e!740499))))

(assert (=> d!330758 (= res!521054 (= (list!4157 (_1!6835 (lex!681 Lexer!1647 (rules!9435 thiss!10527) (print!618 Lexer!1647 (singletonSeq!636 (h!16684 lt!393367)))))) (list!4157 (singletonSeq!636 (h!16684 lt!393367)))))))

(declare-fun e!740498 () Bool)

(assert (=> d!330758 (= lt!393422 e!740498)))

(declare-fun res!521053 () Bool)

(assert (=> d!330758 (=> (not res!521053) (not e!740498))))

(declare-fun lt!393421 () tuple2!11976)

(assert (=> d!330758 (= res!521053 (= (size!8875 (_1!6835 lt!393421)) 1))))

(assert (=> d!330758 (= lt!393421 (lex!681 Lexer!1647 (rules!9435 thiss!10527) (print!618 Lexer!1647 (singletonSeq!636 (h!16684 lt!393367)))))))

(assert (=> d!330758 (not (isEmpty!6940 (rules!9435 thiss!10527)))))

(assert (=> d!330758 (= (rulesProduceIndividualToken!686 Lexer!1647 (rules!9435 thiss!10527) (h!16684 lt!393367)) lt!393422)))

(declare-fun b!1157468 () Bool)

(declare-fun res!521055 () Bool)

(assert (=> b!1157468 (=> (not res!521055) (not e!740498))))

(assert (=> b!1157468 (= res!521055 (= (apply!2405 (_1!6835 lt!393421) 0) (h!16684 lt!393367)))))

(declare-fun b!1157469 () Bool)

(assert (=> b!1157469 (= e!740498 (isEmpty!6942 (_2!6835 lt!393421)))))

(declare-fun b!1157470 () Bool)

(assert (=> b!1157470 (= e!740499 (isEmpty!6942 (_2!6835 (lex!681 Lexer!1647 (rules!9435 thiss!10527) (print!618 Lexer!1647 (singletonSeq!636 (h!16684 lt!393367)))))))))

(assert (= (and d!330758 res!521053) b!1157468))

(assert (= (and b!1157468 res!521055) b!1157469))

(assert (= (and d!330758 res!521054) b!1157470))

(declare-fun m!1324203 () Bool)

(assert (=> d!330758 m!1324203))

(declare-fun m!1324205 () Bool)

(assert (=> d!330758 m!1324205))

(assert (=> d!330758 m!1324203))

(declare-fun m!1324207 () Bool)

(assert (=> d!330758 m!1324207))

(assert (=> d!330758 m!1324205))

(declare-fun m!1324209 () Bool)

(assert (=> d!330758 m!1324209))

(assert (=> d!330758 m!1324025))

(declare-fun m!1324211 () Bool)

(assert (=> d!330758 m!1324211))

(declare-fun m!1324213 () Bool)

(assert (=> d!330758 m!1324213))

(assert (=> d!330758 m!1324203))

(declare-fun m!1324215 () Bool)

(assert (=> b!1157468 m!1324215))

(declare-fun m!1324217 () Bool)

(assert (=> b!1157469 m!1324217))

(assert (=> b!1157470 m!1324203))

(assert (=> b!1157470 m!1324203))

(assert (=> b!1157470 m!1324205))

(assert (=> b!1157470 m!1324205))

(assert (=> b!1157470 m!1324209))

(declare-fun m!1324219 () Bool)

(assert (=> b!1157470 m!1324219))

(assert (=> b!1157276 d!330758))

(declare-fun d!330760 () Bool)

(declare-fun e!740504 () Bool)

(assert (=> d!330760 e!740504))

(declare-fun res!521063 () Bool)

(assert (=> d!330760 (=> (not res!521063) (not e!740504))))

(declare-fun slice!197 (Conc!3671 Int Int) Conc!3671)

(assert (=> d!330760 (= res!521063 (isBalanced!1036 (slice!197 (c!194095 (tokens!1553 thiss!10527)) from!787 to!267)))))

(declare-fun lt!393425 () BalanceConc!7364)

(assert (=> d!330760 (= lt!393425 (BalanceConc!7365 (slice!197 (c!194095 (tokens!1553 thiss!10527)) from!787 to!267)))))

(declare-fun e!740505 () Bool)

(assert (=> d!330760 e!740505))

(declare-fun res!521064 () Bool)

(assert (=> d!330760 (=> (not res!521064) (not e!740505))))

(assert (=> d!330760 (= res!521064 (and (<= 0 from!787) (<= from!787 to!267)))))

(assert (=> d!330760 (= (slice!193 (tokens!1553 thiss!10527) from!787 to!267) lt!393425)))

(declare-fun b!1157477 () Bool)

(declare-fun res!521062 () Bool)

(assert (=> b!1157477 (=> (not res!521062) (not e!740505))))

(assert (=> b!1157477 (= res!521062 (<= to!267 (size!8875 (tokens!1553 thiss!10527))))))

(declare-fun b!1157478 () Bool)

(assert (=> b!1157478 (= e!740505 (isBalanced!1036 (c!194095 (tokens!1553 thiss!10527))))))

(declare-fun b!1157479 () Bool)

(assert (=> b!1157479 (= e!740504 (= (list!4157 lt!393425) (slice!194 (list!4157 (tokens!1553 thiss!10527)) from!787 to!267)))))

(assert (= (and d!330760 res!521064) b!1157477))

(assert (= (and b!1157477 res!521062) b!1157478))

(assert (= (and d!330760 res!521063) b!1157479))

(declare-fun m!1324221 () Bool)

(assert (=> d!330760 m!1324221))

(assert (=> d!330760 m!1324221))

(declare-fun m!1324223 () Bool)

(assert (=> d!330760 m!1324223))

(assert (=> b!1157477 m!1324021))

(assert (=> b!1157478 m!1324169))

(declare-fun m!1324225 () Bool)

(assert (=> b!1157479 m!1324225))

(assert (=> b!1157479 m!1324011))

(assert (=> b!1157479 m!1324011))

(declare-fun m!1324227 () Bool)

(assert (=> b!1157479 m!1324227))

(assert (=> b!1157277 d!330760))

(declare-fun b!1157488 () Bool)

(declare-fun e!740516 () Bool)

(declare-fun e!740517 () Bool)

(assert (=> b!1157488 (= e!740516 e!740517)))

(declare-fun res!521073 () Bool)

(assert (=> b!1157488 (=> (not res!521073) (not e!740517))))

(assert (=> b!1157488 (= res!521073 (is-Cons!11283 lt!393367))))

(declare-fun d!330762 () Bool)

(declare-fun res!521074 () Bool)

(assert (=> d!330762 (=> res!521074 e!740516)))

(assert (=> d!330762 (= res!521074 (is-Nil!11283 (slice!194 lt!393367 from!787 to!267)))))

(assert (=> d!330762 (= (subseq!210 (slice!194 lt!393367 from!787 to!267) lt!393367) e!740516)))

(declare-fun e!740514 () Bool)

(declare-fun b!1157491 () Bool)

(assert (=> b!1157491 (= e!740514 (subseq!210 (slice!194 lt!393367 from!787 to!267) (t!109160 lt!393367)))))

(declare-fun e!740515 () Bool)

(declare-fun b!1157490 () Bool)

(assert (=> b!1157490 (= e!740515 (subseq!210 (t!109160 (slice!194 lt!393367 from!787 to!267)) (t!109160 lt!393367)))))

(declare-fun b!1157489 () Bool)

(assert (=> b!1157489 (= e!740517 e!740514)))

(declare-fun res!521076 () Bool)

(assert (=> b!1157489 (=> res!521076 e!740514)))

(assert (=> b!1157489 (= res!521076 e!740515)))

(declare-fun res!521075 () Bool)

(assert (=> b!1157489 (=> (not res!521075) (not e!740515))))

(assert (=> b!1157489 (= res!521075 (= (h!16684 (slice!194 lt!393367 from!787 to!267)) (h!16684 lt!393367)))))

(assert (= (and d!330762 (not res!521074)) b!1157488))

(assert (= (and b!1157488 res!521073) b!1157489))

(assert (= (and b!1157489 res!521075) b!1157490))

(assert (= (and b!1157489 (not res!521076)) b!1157491))

(assert (=> b!1157491 m!1324031))

(declare-fun m!1324229 () Bool)

(assert (=> b!1157491 m!1324229))

(declare-fun m!1324231 () Bool)

(assert (=> b!1157490 m!1324231))

(assert (=> b!1157277 d!330762))

(declare-fun d!330764 () Bool)

(declare-fun take!46 (List!11307 Int) List!11307)

(declare-fun drop!448 (List!11307 Int) List!11307)

(assert (=> d!330764 (= (slice!194 lt!393367 from!787 to!267) (take!46 (drop!448 lt!393367 from!787) (- to!267 from!787)))))

(declare-fun bs!283067 () Bool)

(assert (= bs!283067 d!330764))

(declare-fun m!1324233 () Bool)

(assert (=> bs!283067 m!1324233))

(assert (=> bs!283067 m!1324233))

(declare-fun m!1324235 () Bool)

(assert (=> bs!283067 m!1324235))

(assert (=> b!1157277 d!330764))

(declare-fun d!330766 () Bool)

(assert (=> d!330766 (subseq!210 (slice!194 lt!393367 from!787 to!267) lt!393367)))

(declare-fun lt!393428 () Unit!17302)

(declare-fun choose!7428 (List!11307 Int Int) Unit!17302)

(assert (=> d!330766 (= lt!393428 (choose!7428 lt!393367 from!787 to!267))))

(declare-fun e!740520 () Bool)

(assert (=> d!330766 e!740520))

(declare-fun res!521079 () Bool)

(assert (=> d!330766 (=> (not res!521079) (not e!740520))))

(assert (=> d!330766 (= res!521079 (and (>= from!787 0) (>= to!267 from!787)))))

(assert (=> d!330766 (= (lemmaSliceSubseq!51 lt!393367 from!787 to!267) lt!393428)))

(declare-fun b!1157494 () Bool)

(declare-fun size!8878 (List!11307) Int)

(assert (=> b!1157494 (= e!740520 (<= to!267 (size!8878 lt!393367)))))

(assert (= (and d!330766 res!521079) b!1157494))

(assert (=> d!330766 m!1324031))

(assert (=> d!330766 m!1324031))

(assert (=> d!330766 m!1324033))

(declare-fun m!1324237 () Bool)

(assert (=> d!330766 m!1324237))

(declare-fun m!1324239 () Bool)

(assert (=> b!1157494 m!1324239))

(assert (=> b!1157277 d!330766))

(declare-fun d!330768 () Bool)

(assert (=> d!330768 (= (list!4157 lt!393368) (list!4159 (c!194095 lt!393368)))))

(declare-fun bs!283068 () Bool)

(assert (= bs!283068 d!330768))

(declare-fun m!1324241 () Bool)

(assert (=> bs!283068 m!1324241))

(assert (=> b!1157277 d!330768))

(declare-fun d!330770 () Bool)

(declare-fun res!521084 () Bool)

(declare-fun e!740525 () Bool)

(assert (=> d!330770 (=> res!521084 e!740525)))

(assert (=> d!330770 (= res!521084 (is-Nil!11283 lt!393365))))

(assert (=> d!330770 (= (forall!2901 lt!393365 lambda!46792) e!740525)))

(declare-fun b!1157499 () Bool)

(declare-fun e!740526 () Bool)

(assert (=> b!1157499 (= e!740525 e!740526)))

(declare-fun res!521085 () Bool)

(assert (=> b!1157499 (=> (not res!521085) (not e!740526))))

(declare-fun dynLambda!4974 (Int Token!3570) Bool)

(assert (=> b!1157499 (= res!521085 (dynLambda!4974 lambda!46792 (h!16684 lt!393365)))))

(declare-fun b!1157500 () Bool)

(assert (=> b!1157500 (= e!740526 (forall!2901 (t!109160 lt!393365) lambda!46792))))

(assert (= (and d!330770 (not res!521084)) b!1157499))

(assert (= (and b!1157499 res!521085) b!1157500))

(declare-fun b_lambda!34567 () Bool)

(assert (=> (not b_lambda!34567) (not b!1157499)))

(declare-fun m!1324243 () Bool)

(assert (=> b!1157499 m!1324243))

(declare-fun m!1324245 () Bool)

(assert (=> b!1157500 m!1324245))

(assert (=> b!1157277 d!330770))

(declare-fun d!330772 () Bool)

(assert (=> d!330772 (= (isEmpty!6940 (rules!9435 thiss!10527)) (is-Nil!11284 (rules!9435 thiss!10527)))))

(assert (=> b!1157277 d!330772))

(declare-fun d!330774 () Bool)

(assert (=> d!330774 (forall!2901 lt!393365 lambda!46792)))

(declare-fun lt!393431 () Unit!17302)

(declare-fun choose!7429 (List!11307 List!11307 Int) Unit!17302)

(assert (=> d!330774 (= lt!393431 (choose!7429 lt!393365 lt!393367 lambda!46792))))

(assert (=> d!330774 (forall!2901 lt!393367 lambda!46792)))

(assert (=> d!330774 (= (lemmaForallSubseq!102 lt!393365 lt!393367 lambda!46792) lt!393431)))

(declare-fun bs!283069 () Bool)

(assert (= bs!283069 d!330774))

(assert (=> bs!283069 m!1324035))

(declare-fun m!1324247 () Bool)

(assert (=> bs!283069 m!1324247))

(declare-fun m!1324249 () Bool)

(assert (=> bs!283069 m!1324249))

(assert (=> b!1157277 d!330774))

(declare-fun d!330776 () Bool)

(declare-fun lt!393434 () Int)

(assert (=> d!330776 (= lt!393434 (size!8878 (list!4157 (tokens!1553 thiss!10527))))))

(declare-fun size!8879 (Conc!3671) Int)

(assert (=> d!330776 (= lt!393434 (size!8879 (c!194095 (tokens!1553 thiss!10527))))))

(assert (=> d!330776 (= (size!8875 (tokens!1553 thiss!10527)) lt!393434)))

(declare-fun bs!283070 () Bool)

(assert (= bs!283070 d!330776))

(assert (=> bs!283070 m!1324011))

(assert (=> bs!283070 m!1324011))

(declare-fun m!1324251 () Bool)

(assert (=> bs!283070 m!1324251))

(declare-fun m!1324253 () Bool)

(assert (=> bs!283070 m!1324253))

(assert (=> b!1157278 d!330776))

(declare-fun b!1157509 () Bool)

(declare-fun e!740531 () Bool)

(assert (=> b!1157509 (= e!740531 true)))

(declare-fun b!1157511 () Bool)

(declare-fun e!740532 () Bool)

(assert (=> b!1157511 (= e!740532 true)))

(declare-fun b!1157510 () Bool)

(assert (=> b!1157510 (= e!740531 e!740532)))

(assert (=> b!1157290 e!740531))

(assert (= (and b!1157290 (is-Node!3671 (c!194095 (tokens!1553 thiss!10527)))) b!1157509))

(assert (= b!1157510 b!1157511))

(assert (= (and b!1157290 (is-Leaf!5659 (c!194095 (tokens!1553 thiss!10527)))) b!1157510))

(declare-fun e!740537 () Bool)

(declare-fun b!1157520 () Bool)

(declare-fun tp!333350 () Bool)

(declare-fun tp!333351 () Bool)

(assert (=> b!1157520 (= e!740537 (and (inv!14822 (left!9840 (c!194095 (tokens!1553 thiss!10527)))) tp!333350 (inv!14822 (right!10170 (c!194095 (tokens!1553 thiss!10527)))) tp!333351))))

(declare-fun b!1157522 () Bool)

(declare-fun e!740538 () Bool)

(declare-fun tp!333349 () Bool)

(assert (=> b!1157522 (= e!740538 tp!333349)))

(declare-fun b!1157521 () Bool)

(declare-fun inv!14828 (IArray!7347) Bool)

(assert (=> b!1157521 (= e!740537 (and (inv!14828 (xs!6376 (c!194095 (tokens!1553 thiss!10527)))) e!740538))))

(assert (=> b!1157281 (= tp!333335 (and (inv!14822 (c!194095 (tokens!1553 thiss!10527))) e!740537))))

(assert (= (and b!1157281 (is-Node!3671 (c!194095 (tokens!1553 thiss!10527)))) b!1157520))

(assert (= b!1157521 b!1157522))

(assert (= (and b!1157281 (is-Leaf!5659 (c!194095 (tokens!1553 thiss!10527)))) b!1157521))

(declare-fun m!1324255 () Bool)

(assert (=> b!1157520 m!1324255))

(declare-fun m!1324257 () Bool)

(assert (=> b!1157520 m!1324257))

(declare-fun m!1324259 () Bool)

(assert (=> b!1157521 m!1324259))

(assert (=> b!1157281 m!1324003))

(declare-fun b!1157533 () Bool)

(declare-fun b_free!27689 () Bool)

(declare-fun b_next!28393 () Bool)

(assert (=> b!1157533 (= b_free!27689 (not b_next!28393))))

(declare-fun tp!333363 () Bool)

(declare-fun b_and!80565 () Bool)

(assert (=> b!1157533 (= tp!333363 b_and!80565)))

(declare-fun b_free!27691 () Bool)

(declare-fun b_next!28395 () Bool)

(assert (=> b!1157533 (= b_free!27691 (not b_next!28395))))

(declare-fun tp!333361 () Bool)

(declare-fun b_and!80567 () Bool)

(assert (=> b!1157533 (= tp!333361 b_and!80567)))

(declare-fun e!740548 () Bool)

(assert (=> b!1157533 (= e!740548 (and tp!333363 tp!333361))))

(declare-fun e!740549 () Bool)

(declare-fun tp!333360 () Bool)

(declare-fun b!1157532 () Bool)

(declare-fun inv!14817 (String!13690) Bool)

(declare-fun inv!14829 (TokenValueInjection!3740) Bool)

(assert (=> b!1157532 (= e!740549 (and tp!333360 (inv!14817 (tag!2216 (h!16685 (rules!9435 thiss!10527)))) (inv!14829 (transformation!1954 (h!16685 (rules!9435 thiss!10527)))) e!740548))))

(declare-fun b!1157531 () Bool)

(declare-fun e!740550 () Bool)

(declare-fun tp!333362 () Bool)

(assert (=> b!1157531 (= e!740550 (and e!740549 tp!333362))))

(assert (=> b!1157272 (= tp!333336 e!740550)))

(assert (= b!1157532 b!1157533))

(assert (= b!1157531 b!1157532))

(assert (= (and b!1157272 (is-Cons!11284 (rules!9435 thiss!10527))) b!1157531))

(declare-fun m!1324261 () Bool)

(assert (=> b!1157532 m!1324261))

(declare-fun m!1324263 () Bool)

(assert (=> b!1157532 m!1324263))

(declare-fun b!1157536 () Bool)

(declare-fun e!740553 () Bool)

(assert (=> b!1157536 (= e!740553 true)))

(declare-fun b!1157535 () Bool)

(declare-fun e!740552 () Bool)

(assert (=> b!1157535 (= e!740552 e!740553)))

(declare-fun b!1157534 () Bool)

(declare-fun e!740551 () Bool)

(assert (=> b!1157534 (= e!740551 e!740552)))

(assert (=> b!1157289 e!740551))

(assert (= b!1157535 b!1157536))

(assert (= b!1157534 b!1157535))

(assert (= (and b!1157289 (is-Cons!11284 (rules!9435 thiss!10527))) b!1157534))

(assert (=> b!1157536 (< (dynLambda!4971 order!6903 (toValue!3055 (transformation!1954 (h!16685 (rules!9435 thiss!10527))))) (dynLambda!4972 order!6905 lambda!46792))))

(assert (=> b!1157536 (< (dynLambda!4973 order!6907 (toChars!2914 (transformation!1954 (h!16685 (rules!9435 thiss!10527))))) (dynLambda!4972 order!6905 lambda!46792))))

(declare-fun b_lambda!34569 () Bool)

(assert (= b_lambda!34567 (or b!1157282 b_lambda!34569)))

(declare-fun bs!283071 () Bool)

(declare-fun d!330778 () Bool)

(assert (= bs!283071 (and d!330778 b!1157282)))

(assert (=> bs!283071 (= (dynLambda!4974 lambda!46792 (h!16684 lt!393365)) (rulesProduceIndividualToken!686 Lexer!1647 (rules!9435 thiss!10527) (h!16684 lt!393365)))))

(assert (=> bs!283071 m!1324023))

(assert (=> b!1157499 d!330778))

(push 1)

(assert (not b_next!28395))

(assert (not b!1157470))

(assert (not d!330738))

(assert (not b!1157356))

(assert (not bs!283071))

(assert (not b!1157340))

(assert (not b!1157374))

(assert (not d!330764))

(assert (not b!1157365))

(assert (not d!330766))

(assert (not b!1157419))

(assert (not b!1157521))

(assert (not d!330714))

(assert (not d!330758))

(assert (not b!1157426))

(assert (not b!1157468))

(assert (not d!330730))

(assert (not b!1157410))

(assert (not b!1157477))

(assert (not b!1157406))

(assert (not b!1157490))

(assert (not b!1157416))

(assert (not d!330734))

(assert (not d!330774))

(assert b_and!80565)

(assert (not b!1157446))

(assert (not b!1157366))

(assert (not b_lambda!34569))

(assert (not b!1157355))

(assert (not b!1157478))

(assert (not b!1157339))

(assert (not b!1157414))

(assert (not b!1157479))

(assert (not d!330736))

(assert (not d!330726))

(assert (not b!1157532))

(assert b_and!80567)

(assert (not d!330728))

(assert (not b!1157281))

(assert (not b!1157376))

(assert (not d!330768))

(assert (not b!1157469))

(assert (not b!1157511))

(assert (not d!330760))

(assert (not b!1157415))

(assert (not b!1157420))

(assert (not b!1157421))

(assert (not d!330742))

(assert (not d!330706))

(assert (not b!1157520))

(assert (not d!330712))

(assert (not d!330740))

(assert (not b!1157367))

(assert (not b!1157467))

(assert (not b!1157349))

(assert (not b!1157522))

(assert (not b!1157509))

(assert (not b!1157354))

(assert (not b!1157531))

(assert (not b!1157447))

(assert (not b!1157494))

(assert (not b!1157407))

(assert (not b!1157500))

(assert (not b_next!28393))

(assert (not b!1157491))

(assert (not b!1157466))

(assert (not d!330748))

(assert (not b!1157465))

(assert (not d!330718))

(assert (not b!1157411))

(assert (not d!330732))

(assert (not b!1157534))

(assert (not d!330776))

(check-sat)

(pop 1)

(push 1)

(assert b_and!80565)

(assert b_and!80567)

(assert (not b_next!28393))

(assert (not b_next!28395))

(check-sat)

(pop 1)

