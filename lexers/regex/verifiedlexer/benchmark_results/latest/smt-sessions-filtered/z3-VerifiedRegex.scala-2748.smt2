; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!147738 () Bool)

(assert start!147738)

(declare-fun b!1579345 () Bool)

(declare-fun b_free!42647 () Bool)

(declare-fun b_next!43351 () Bool)

(assert (=> b!1579345 (= b_free!42647 (not b_next!43351))))

(declare-fun tp!465018 () Bool)

(declare-fun b_and!110637 () Bool)

(assert (=> b!1579345 (= tp!465018 b_and!110637)))

(declare-fun b_free!42649 () Bool)

(declare-fun b_next!43353 () Bool)

(assert (=> b!1579345 (= b_free!42649 (not b_next!43353))))

(declare-fun tp!465013 () Bool)

(declare-fun b_and!110639 () Bool)

(assert (=> b!1579345 (= tp!465013 b_and!110639)))

(declare-fun b!1579341 () Bool)

(declare-fun b_free!42651 () Bool)

(declare-fun b_next!43355 () Bool)

(assert (=> b!1579341 (= b_free!42651 (not b_next!43355))))

(declare-fun tp!465014 () Bool)

(declare-fun b_and!110641 () Bool)

(assert (=> b!1579341 (= tp!465014 b_and!110641)))

(declare-fun b_free!42653 () Bool)

(declare-fun b_next!43357 () Bool)

(assert (=> b!1579341 (= b_free!42653 (not b_next!43357))))

(declare-fun tp!465017 () Bool)

(declare-fun b_and!110643 () Bool)

(assert (=> b!1579341 (= tp!465017 b_and!110643)))

(declare-fun res!704027 () Bool)

(declare-fun e!1014549 () Bool)

(assert (=> start!147738 (=> (not res!704027) (not e!1014549))))

(declare-datatypes ((LexerInterface!2686 0))(
  ( (LexerInterfaceExt!2683 (__x!11596 Int)) (Lexer!2684) )
))
(declare-fun thiss!17113 () LexerInterface!2686)

(get-info :version)

(assert (=> start!147738 (= res!704027 ((_ is Lexer!2684) thiss!17113))))

(assert (=> start!147738 e!1014549))

(assert (=> start!147738 true))

(declare-fun e!1014554 () Bool)

(assert (=> start!147738 e!1014554))

(declare-fun e!1014560 () Bool)

(assert (=> start!147738 e!1014560))

(declare-fun b!1579335 () Bool)

(declare-fun res!704025 () Bool)

(declare-fun e!1014555 () Bool)

(assert (=> b!1579335 (=> res!704025 e!1014555)))

(declare-datatypes ((C!8944 0))(
  ( (C!8945 (val!5068 Int)) )
))
(declare-datatypes ((List!17421 0))(
  ( (Nil!17351) (Cons!17351 (h!22752 C!8944) (t!143598 List!17421)) )
))
(declare-fun lt!552100 () List!17421)

(declare-datatypes ((List!17422 0))(
  ( (Nil!17352) (Cons!17352 (h!22753 (_ BitVec 16)) (t!143599 List!17422)) )
))
(declare-datatypes ((TokenValue!3147 0))(
  ( (FloatLiteralValue!6294 (text!22474 List!17422)) (TokenValueExt!3146 (__x!11597 Int)) (Broken!15735 (value!96771 List!17422)) (Object!3216) (End!3147) (Def!3147) (Underscore!3147) (Match!3147) (Else!3147) (Error!3147) (Case!3147) (If!3147) (Extends!3147) (Abstract!3147) (Class!3147) (Val!3147) (DelimiterValue!6294 (del!3207 List!17422)) (KeywordValue!3153 (value!96772 List!17422)) (CommentValue!6294 (value!96773 List!17422)) (WhitespaceValue!6294 (value!96774 List!17422)) (IndentationValue!3147 (value!96775 List!17422)) (String!20066) (Int32!3147) (Broken!15736 (value!96776 List!17422)) (Boolean!3148) (Unit!26964) (OperatorValue!3150 (op!3207 List!17422)) (IdentifierValue!6294 (value!96777 List!17422)) (IdentifierValue!6295 (value!96778 List!17422)) (WhitespaceValue!6295 (value!96779 List!17422)) (True!6294) (False!6294) (Broken!15737 (value!96780 List!17422)) (Broken!15738 (value!96781 List!17422)) (True!6295) (RightBrace!3147) (RightBracket!3147) (Colon!3147) (Null!3147) (Comma!3147) (LeftBracket!3147) (False!6295) (LeftBrace!3147) (ImaginaryLiteralValue!3147 (text!22475 List!17422)) (StringLiteralValue!9441 (value!96782 List!17422)) (EOFValue!3147 (value!96783 List!17422)) (IdentValue!3147 (value!96784 List!17422)) (DelimiterValue!6295 (value!96785 List!17422)) (DedentValue!3147 (value!96786 List!17422)) (NewLineValue!3147 (value!96787 List!17422)) (IntegerValue!9441 (value!96788 (_ BitVec 32)) (text!22476 List!17422)) (IntegerValue!9442 (value!96789 Int) (text!22477 List!17422)) (Times!3147) (Or!3147) (Equal!3147) (Minus!3147) (Broken!15739 (value!96790 List!17422)) (And!3147) (Div!3147) (LessEqual!3147) (Mod!3147) (Concat!7532) (Not!3147) (Plus!3147) (SpaceValue!3147 (value!96791 List!17422)) (IntegerValue!9443 (value!96792 Int) (text!22478 List!17422)) (StringLiteralValue!9442 (text!22479 List!17422)) (FloatLiteralValue!6295 (text!22480 List!17422)) (BytesLiteralValue!3147 (value!96793 List!17422)) (CommentValue!6295 (value!96794 List!17422)) (StringLiteralValue!9443 (value!96795 List!17422)) (ErrorTokenValue!3147 (msg!3208 List!17422)) )
))
(declare-datatypes ((IArray!11529 0))(
  ( (IArray!11530 (innerList!5822 List!17421)) )
))
(declare-datatypes ((Conc!5762 0))(
  ( (Node!5762 (left!14020 Conc!5762) (right!14350 Conc!5762) (csize!11754 Int) (cheight!5973 Int)) (Leaf!8511 (xs!8566 IArray!11529) (csize!11755 Int)) (Empty!5762) )
))
(declare-datatypes ((BalanceConc!11468 0))(
  ( (BalanceConc!11469 (c!255947 Conc!5762)) )
))
(declare-datatypes ((Regex!4385 0))(
  ( (ElementMatch!4385 (c!255948 C!8944)) (Concat!7533 (regOne!9282 Regex!4385) (regTwo!9282 Regex!4385)) (EmptyExpr!4385) (Star!4385 (reg!4714 Regex!4385)) (EmptyLang!4385) (Union!4385 (regOne!9283 Regex!4385) (regTwo!9283 Regex!4385)) )
))
(declare-datatypes ((String!20067 0))(
  ( (String!20068 (value!96796 String)) )
))
(declare-datatypes ((TokenValueInjection!5954 0))(
  ( (TokenValueInjection!5955 (toValue!4460 Int) (toChars!4319 Int)) )
))
(declare-datatypes ((Rule!5914 0))(
  ( (Rule!5915 (regex!3057 Regex!4385) (tag!3323 String!20067) (isSeparator!3057 Bool) (transformation!3057 TokenValueInjection!5954)) )
))
(declare-datatypes ((List!17423 0))(
  ( (Nil!17353) (Cons!17353 (h!22754 Rule!5914) (t!143600 List!17423)) )
))
(declare-fun rules!1846 () List!17423)

(declare-datatypes ((Token!5680 0))(
  ( (Token!5681 (value!96797 TokenValue!3147) (rule!4853 Rule!5914) (size!13958 Int) (originalCharacters!3871 List!17421)) )
))
(declare-datatypes ((List!17424 0))(
  ( (Nil!17354) (Cons!17354 (h!22755 Token!5680) (t!143601 List!17424)) )
))
(declare-datatypes ((IArray!11531 0))(
  ( (IArray!11532 (innerList!5823 List!17424)) )
))
(declare-datatypes ((Conc!5763 0))(
  ( (Node!5763 (left!14021 Conc!5763) (right!14351 Conc!5763) (csize!11756 Int) (cheight!5974 Int)) (Leaf!8512 (xs!8567 IArray!11531) (csize!11757 Int)) (Empty!5763) )
))
(declare-datatypes ((BalanceConc!11470 0))(
  ( (BalanceConc!11471 (c!255949 Conc!5763)) )
))
(declare-fun isEmpty!10358 (BalanceConc!11470) Bool)

(declare-datatypes ((tuple2!16820 0))(
  ( (tuple2!16821 (_1!9812 BalanceConc!11470) (_2!9812 BalanceConc!11468)) )
))
(declare-fun lex!1170 (LexerInterface!2686 List!17423 BalanceConc!11468) tuple2!16820)

(declare-fun seqFromList!1863 (List!17421) BalanceConc!11468)

(assert (=> b!1579335 (= res!704025 (isEmpty!10358 (_1!9812 (lex!1170 thiss!17113 rules!1846 (seqFromList!1863 lt!552100)))))))

(declare-fun b!1579336 () Bool)

(declare-fun res!704016 () Bool)

(assert (=> b!1579336 (=> (not res!704016) (not e!1014549))))

(declare-fun isEmpty!10359 (List!17423) Bool)

(assert (=> b!1579336 (= res!704016 (not (isEmpty!10359 rules!1846)))))

(declare-fun b!1579337 () Bool)

(declare-fun e!1014552 () Bool)

(declare-fun tp!465012 () Bool)

(declare-fun e!1014550 () Bool)

(declare-fun inv!22762 (String!20067) Bool)

(declare-fun inv!22765 (TokenValueInjection!5954) Bool)

(assert (=> b!1579337 (= e!1014552 (and tp!465012 (inv!22762 (tag!3323 (h!22754 rules!1846))) (inv!22765 (transformation!3057 (h!22754 rules!1846))) e!1014550))))

(declare-fun b!1579338 () Bool)

(declare-fun res!704021 () Bool)

(declare-fun e!1014553 () Bool)

(assert (=> b!1579338 (=> res!704021 e!1014553)))

(declare-fun tokens!457 () List!17424)

(declare-fun separableTokensPredicate!628 (LexerInterface!2686 Token!5680 Token!5680 List!17423) Bool)

(assert (=> b!1579338 (= res!704021 (not (separableTokensPredicate!628 thiss!17113 (h!22755 tokens!457) (h!22755 (t!143601 tokens!457)) rules!1846)))))

(declare-fun b!1579339 () Bool)

(assert (=> b!1579339 (= e!1014555 true)))

(declare-datatypes ((Unit!26965 0))(
  ( (Unit!26966) )
))
(declare-fun lt!552096 () Unit!26965)

(declare-fun lt!552102 () List!17421)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!260 (LexerInterface!2686 List!17423 List!17421 List!17421) Unit!26965)

(assert (=> b!1579339 (= lt!552096 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!260 thiss!17113 rules!1846 lt!552100 lt!552102))))

(declare-fun b!1579340 () Bool)

(declare-fun res!704019 () Bool)

(assert (=> b!1579340 (=> (not res!704019) (not e!1014549))))

(declare-fun rulesProduceEachTokenIndividuallyList!888 (LexerInterface!2686 List!17423 List!17424) Bool)

(assert (=> b!1579340 (= res!704019 (rulesProduceEachTokenIndividuallyList!888 thiss!17113 rules!1846 tokens!457))))

(declare-fun e!1014559 () Bool)

(assert (=> b!1579341 (= e!1014559 (and tp!465014 tp!465017))))

(declare-fun b!1579342 () Bool)

(declare-fun res!704017 () Bool)

(assert (=> b!1579342 (=> (not res!704017) (not e!1014549))))

(declare-fun tokensListTwoByTwoPredicateSeparableList!379 (LexerInterface!2686 List!17424 List!17423) Bool)

(assert (=> b!1579342 (= res!704017 (tokensListTwoByTwoPredicateSeparableList!379 thiss!17113 tokens!457 rules!1846))))

(declare-fun b!1579343 () Bool)

(assert (=> b!1579343 (= e!1014553 e!1014555)))

(declare-fun res!704026 () Bool)

(assert (=> b!1579343 (=> res!704026 e!1014555)))

(declare-fun lt!552094 () List!17421)

(declare-fun lt!552104 () List!17421)

(assert (=> b!1579343 (= res!704026 (or (not (= lt!552094 lt!552104)) (not (= lt!552104 lt!552100)) (not (= lt!552094 lt!552100))))))

(declare-fun printList!801 (LexerInterface!2686 List!17424) List!17421)

(assert (=> b!1579343 (= lt!552104 (printList!801 thiss!17113 (Cons!17354 (h!22755 tokens!457) Nil!17354)))))

(declare-fun lt!552099 () BalanceConc!11468)

(declare-fun list!6703 (BalanceConc!11468) List!17421)

(assert (=> b!1579343 (= lt!552094 (list!6703 lt!552099))))

(declare-fun lt!552097 () BalanceConc!11470)

(declare-fun printTailRec!739 (LexerInterface!2686 BalanceConc!11470 Int BalanceConc!11468) BalanceConc!11468)

(assert (=> b!1579343 (= lt!552099 (printTailRec!739 thiss!17113 lt!552097 0 (BalanceConc!11469 Empty!5762)))))

(declare-fun print!1217 (LexerInterface!2686 BalanceConc!11470) BalanceConc!11468)

(assert (=> b!1579343 (= lt!552099 (print!1217 thiss!17113 lt!552097))))

(declare-fun singletonSeq!1393 (Token!5680) BalanceConc!11470)

(assert (=> b!1579343 (= lt!552097 (singletonSeq!1393 (h!22755 tokens!457)))))

(declare-fun lt!552090 () List!17421)

(declare-datatypes ((tuple2!16822 0))(
  ( (tuple2!16823 (_1!9813 Token!5680) (_2!9813 List!17421)) )
))
(declare-datatypes ((Option!3108 0))(
  ( (None!3107) (Some!3107 (v!23938 tuple2!16822)) )
))
(declare-fun lt!552089 () Option!3108)

(declare-fun maxPrefix!1250 (LexerInterface!2686 List!17423 List!17421) Option!3108)

(assert (=> b!1579343 (= lt!552089 (maxPrefix!1250 thiss!17113 rules!1846 lt!552090))))

(declare-fun b!1579344 () Bool)

(declare-fun res!704028 () Bool)

(assert (=> b!1579344 (=> res!704028 e!1014555)))

(declare-fun rulesProduceIndividualToken!1338 (LexerInterface!2686 List!17423 Token!5680) Bool)

(assert (=> b!1579344 (= res!704028 (not (rulesProduceIndividualToken!1338 thiss!17113 rules!1846 (h!22755 tokens!457))))))

(assert (=> b!1579345 (= e!1014550 (and tp!465018 tp!465013))))

(declare-fun b!1579346 () Bool)

(declare-fun res!704020 () Bool)

(assert (=> b!1579346 (=> (not res!704020) (not e!1014549))))

(assert (=> b!1579346 (= res!704020 (and (not ((_ is Nil!17354) tokens!457)) (not ((_ is Nil!17354) (t!143601 tokens!457)))))))

(declare-fun b!1579347 () Bool)

(declare-fun e!1014551 () Bool)

(assert (=> b!1579347 (= e!1014551 e!1014553)))

(declare-fun res!704023 () Bool)

(assert (=> b!1579347 (=> res!704023 e!1014553)))

(declare-fun lt!552095 () List!17424)

(declare-fun lt!552105 () List!17424)

(declare-fun lt!552092 () List!17424)

(assert (=> b!1579347 (= res!704023 (or (not (= lt!552095 lt!552092)) (not (= lt!552092 lt!552105))))))

(declare-fun lt!552091 () BalanceConc!11470)

(declare-fun list!6704 (BalanceConc!11470) List!17424)

(assert (=> b!1579347 (= lt!552092 (list!6704 lt!552091))))

(assert (=> b!1579347 (= lt!552095 lt!552105)))

(declare-fun prepend!531 (BalanceConc!11470 Token!5680) BalanceConc!11470)

(declare-fun seqFromList!1864 (List!17424) BalanceConc!11470)

(assert (=> b!1579347 (= lt!552105 (list!6704 (prepend!531 (seqFromList!1864 (t!143601 (t!143601 tokens!457))) (h!22755 (t!143601 tokens!457)))))))

(declare-fun lt!552087 () Unit!26965)

(declare-fun lt!552101 () tuple2!16820)

(declare-fun seqFromListBHdTlConstructive!134 (Token!5680 List!17424 BalanceConc!11470) Unit!26965)

(assert (=> b!1579347 (= lt!552087 (seqFromListBHdTlConstructive!134 (h!22755 (t!143601 tokens!457)) (t!143601 (t!143601 tokens!457)) (_1!9812 lt!552101)))))

(declare-fun b!1579348 () Bool)

(declare-fun res!704022 () Bool)

(assert (=> b!1579348 (=> (not res!704022) (not e!1014549))))

(declare-fun rulesInvariant!2355 (LexerInterface!2686 List!17423) Bool)

(assert (=> b!1579348 (= res!704022 (rulesInvariant!2355 thiss!17113 rules!1846))))

(declare-fun tp!465016 () Bool)

(declare-fun e!1014548 () Bool)

(declare-fun b!1579349 () Bool)

(assert (=> b!1579349 (= e!1014548 (and tp!465016 (inv!22762 (tag!3323 (rule!4853 (h!22755 tokens!457)))) (inv!22765 (transformation!3057 (rule!4853 (h!22755 tokens!457)))) e!1014559))))

(declare-fun e!1014556 () Bool)

(declare-fun b!1579350 () Bool)

(declare-fun tp!465015 () Bool)

(declare-fun inv!21 (TokenValue!3147) Bool)

(assert (=> b!1579350 (= e!1014556 (and (inv!21 (value!96797 (h!22755 tokens!457))) e!1014548 tp!465015))))

(declare-fun tp!465020 () Bool)

(declare-fun b!1579351 () Bool)

(declare-fun inv!22766 (Token!5680) Bool)

(assert (=> b!1579351 (= e!1014560 (and (inv!22766 (h!22755 tokens!457)) e!1014556 tp!465020))))

(declare-fun b!1579352 () Bool)

(declare-fun tp!465019 () Bool)

(assert (=> b!1579352 (= e!1014554 (and e!1014552 tp!465019))))

(declare-fun b!1579353 () Bool)

(declare-fun e!1014561 () Bool)

(assert (=> b!1579353 (= e!1014561 (not e!1014551))))

(declare-fun res!704018 () Bool)

(assert (=> b!1579353 (=> res!704018 e!1014551)))

(assert (=> b!1579353 (= res!704018 (not (= lt!552095 (t!143601 tokens!457))))))

(assert (=> b!1579353 (= lt!552095 (list!6704 (_1!9812 lt!552101)))))

(declare-fun lt!552106 () Unit!26965)

(declare-fun theoremInvertabilityWhenTokenListSeparable!131 (LexerInterface!2686 List!17423 List!17424) Unit!26965)

(assert (=> b!1579353 (= lt!552106 (theoremInvertabilityWhenTokenListSeparable!131 thiss!17113 rules!1846 (t!143601 tokens!457)))))

(declare-fun lt!552088 () List!17421)

(declare-fun isPrefix!1317 (List!17421 List!17421) Bool)

(assert (=> b!1579353 (isPrefix!1317 lt!552100 lt!552088)))

(declare-fun lt!552103 () Unit!26965)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!842 (List!17421 List!17421) Unit!26965)

(assert (=> b!1579353 (= lt!552103 (lemmaConcatTwoListThenFirstIsPrefix!842 lt!552100 lt!552102))))

(declare-fun b!1579354 () Bool)

(assert (=> b!1579354 (= e!1014549 e!1014561)))

(declare-fun res!704024 () Bool)

(assert (=> b!1579354 (=> (not res!704024) (not e!1014561))))

(assert (=> b!1579354 (= res!704024 (= lt!552090 lt!552088))))

(declare-fun ++!4505 (List!17421 List!17421) List!17421)

(assert (=> b!1579354 (= lt!552088 (++!4505 lt!552100 lt!552102))))

(declare-fun lt!552098 () BalanceConc!11468)

(assert (=> b!1579354 (= lt!552090 (list!6703 lt!552098))))

(declare-fun lt!552093 () BalanceConc!11468)

(assert (=> b!1579354 (= lt!552102 (list!6703 lt!552093))))

(declare-fun charsOf!1706 (Token!5680) BalanceConc!11468)

(assert (=> b!1579354 (= lt!552100 (list!6703 (charsOf!1706 (h!22755 tokens!457))))))

(assert (=> b!1579354 (= lt!552101 (lex!1170 thiss!17113 rules!1846 lt!552093))))

(assert (=> b!1579354 (= lt!552093 (print!1217 thiss!17113 lt!552091))))

(assert (=> b!1579354 (= lt!552091 (seqFromList!1864 (t!143601 tokens!457)))))

(assert (=> b!1579354 (= lt!552098 (print!1217 thiss!17113 (seqFromList!1864 tokens!457)))))

(assert (= (and start!147738 res!704027) b!1579336))

(assert (= (and b!1579336 res!704016) b!1579348))

(assert (= (and b!1579348 res!704022) b!1579340))

(assert (= (and b!1579340 res!704019) b!1579342))

(assert (= (and b!1579342 res!704017) b!1579346))

(assert (= (and b!1579346 res!704020) b!1579354))

(assert (= (and b!1579354 res!704024) b!1579353))

(assert (= (and b!1579353 (not res!704018)) b!1579347))

(assert (= (and b!1579347 (not res!704023)) b!1579338))

(assert (= (and b!1579338 (not res!704021)) b!1579343))

(assert (= (and b!1579343 (not res!704026)) b!1579344))

(assert (= (and b!1579344 (not res!704028)) b!1579335))

(assert (= (and b!1579335 (not res!704025)) b!1579339))

(assert (= b!1579337 b!1579345))

(assert (= b!1579352 b!1579337))

(assert (= (and start!147738 ((_ is Cons!17353) rules!1846)) b!1579352))

(assert (= b!1579349 b!1579341))

(assert (= b!1579350 b!1579349))

(assert (= b!1579351 b!1579350))

(assert (= (and start!147738 ((_ is Cons!17354) tokens!457)) b!1579351))

(declare-fun m!1861855 () Bool)

(assert (=> b!1579348 m!1861855))

(declare-fun m!1861857 () Bool)

(assert (=> b!1579354 m!1861857))

(declare-fun m!1861859 () Bool)

(assert (=> b!1579354 m!1861859))

(declare-fun m!1861861 () Bool)

(assert (=> b!1579354 m!1861861))

(declare-fun m!1861863 () Bool)

(assert (=> b!1579354 m!1861863))

(declare-fun m!1861865 () Bool)

(assert (=> b!1579354 m!1861865))

(declare-fun m!1861867 () Bool)

(assert (=> b!1579354 m!1861867))

(declare-fun m!1861869 () Bool)

(assert (=> b!1579354 m!1861869))

(assert (=> b!1579354 m!1861861))

(declare-fun m!1861871 () Bool)

(assert (=> b!1579354 m!1861871))

(assert (=> b!1579354 m!1861865))

(declare-fun m!1861873 () Bool)

(assert (=> b!1579354 m!1861873))

(declare-fun m!1861875 () Bool)

(assert (=> b!1579354 m!1861875))

(declare-fun m!1861877 () Bool)

(assert (=> b!1579350 m!1861877))

(declare-fun m!1861879 () Bool)

(assert (=> b!1579335 m!1861879))

(assert (=> b!1579335 m!1861879))

(declare-fun m!1861881 () Bool)

(assert (=> b!1579335 m!1861881))

(declare-fun m!1861883 () Bool)

(assert (=> b!1579335 m!1861883))

(declare-fun m!1861885 () Bool)

(assert (=> b!1579336 m!1861885))

(declare-fun m!1861887 () Bool)

(assert (=> b!1579342 m!1861887))

(declare-fun m!1861889 () Bool)

(assert (=> b!1579343 m!1861889))

(declare-fun m!1861891 () Bool)

(assert (=> b!1579343 m!1861891))

(declare-fun m!1861893 () Bool)

(assert (=> b!1579343 m!1861893))

(declare-fun m!1861895 () Bool)

(assert (=> b!1579343 m!1861895))

(declare-fun m!1861897 () Bool)

(assert (=> b!1579343 m!1861897))

(declare-fun m!1861899 () Bool)

(assert (=> b!1579343 m!1861899))

(declare-fun m!1861901 () Bool)

(assert (=> b!1579349 m!1861901))

(declare-fun m!1861903 () Bool)

(assert (=> b!1579349 m!1861903))

(declare-fun m!1861905 () Bool)

(assert (=> b!1579344 m!1861905))

(declare-fun m!1861907 () Bool)

(assert (=> b!1579351 m!1861907))

(declare-fun m!1861909 () Bool)

(assert (=> b!1579353 m!1861909))

(declare-fun m!1861911 () Bool)

(assert (=> b!1579353 m!1861911))

(declare-fun m!1861913 () Bool)

(assert (=> b!1579353 m!1861913))

(declare-fun m!1861915 () Bool)

(assert (=> b!1579353 m!1861915))

(declare-fun m!1861917 () Bool)

(assert (=> b!1579338 m!1861917))

(declare-fun m!1861919 () Bool)

(assert (=> b!1579339 m!1861919))

(declare-fun m!1861921 () Bool)

(assert (=> b!1579347 m!1861921))

(declare-fun m!1861923 () Bool)

(assert (=> b!1579347 m!1861923))

(declare-fun m!1861925 () Bool)

(assert (=> b!1579347 m!1861925))

(declare-fun m!1861927 () Bool)

(assert (=> b!1579347 m!1861927))

(declare-fun m!1861929 () Bool)

(assert (=> b!1579347 m!1861929))

(assert (=> b!1579347 m!1861925))

(assert (=> b!1579347 m!1861927))

(declare-fun m!1861931 () Bool)

(assert (=> b!1579337 m!1861931))

(declare-fun m!1861933 () Bool)

(assert (=> b!1579337 m!1861933))

(declare-fun m!1861935 () Bool)

(assert (=> b!1579340 m!1861935))

(check-sat (not b!1579353) (not b!1579344) (not b_next!43357) (not b!1579338) (not b_next!43351) (not b!1579349) (not b!1579336) (not b!1579352) (not b!1579339) b_and!110641 b_and!110643 (not b_next!43355) (not b!1579350) b_and!110637 (not b!1579343) (not b!1579342) b_and!110639 (not b!1579335) (not b!1579337) (not b!1579351) (not b_next!43353) (not b!1579348) (not b!1579340) (not b!1579347) (not b!1579354))
(check-sat b_and!110637 b_and!110639 (not b_next!43357) (not b_next!43351) (not b_next!43353) b_and!110641 b_and!110643 (not b_next!43355))
