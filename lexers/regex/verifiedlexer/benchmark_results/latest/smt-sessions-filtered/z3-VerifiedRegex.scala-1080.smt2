; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!55468 () Bool)

(assert start!55468)

(declare-fun b!591355 () Bool)

(declare-fun b_free!16597 () Bool)

(declare-fun b_next!16613 () Bool)

(assert (=> b!591355 (= b_free!16597 (not b_next!16613))))

(declare-fun tp!184407 () Bool)

(declare-fun b_and!58275 () Bool)

(assert (=> b!591355 (= tp!184407 b_and!58275)))

(declare-fun b_free!16599 () Bool)

(declare-fun b_next!16615 () Bool)

(assert (=> b!591355 (= b_free!16599 (not b_next!16615))))

(declare-fun tp!184415 () Bool)

(declare-fun b_and!58277 () Bool)

(assert (=> b!591355 (= tp!184415 b_and!58277)))

(declare-fun b!591347 () Bool)

(declare-fun b_free!16601 () Bool)

(declare-fun b_next!16617 () Bool)

(assert (=> b!591347 (= b_free!16601 (not b_next!16617))))

(declare-fun tp!184410 () Bool)

(declare-fun b_and!58279 () Bool)

(assert (=> b!591347 (= tp!184410 b_and!58279)))

(declare-fun b_free!16603 () Bool)

(declare-fun b_next!16619 () Bool)

(assert (=> b!591347 (= b_free!16603 (not b_next!16619))))

(declare-fun tp!184416 () Bool)

(declare-fun b_and!58281 () Bool)

(assert (=> b!591347 (= tp!184416 b_and!58281)))

(declare-fun b!591338 () Bool)

(declare-fun e!357568 () Bool)

(declare-fun e!357558 () Bool)

(assert (=> b!591338 (= e!357568 e!357558)))

(declare-fun res!254935 () Bool)

(assert (=> b!591338 (=> (not res!254935) (not e!357558))))

(declare-datatypes ((C!3884 0))(
  ( (C!3885 (val!2168 Int)) )
))
(declare-datatypes ((Regex!1481 0))(
  ( (ElementMatch!1481 (c!110315 C!3884)) (Concat!2652 (regOne!3474 Regex!1481) (regTwo!3474 Regex!1481)) (EmptyExpr!1481) (Star!1481 (reg!1810 Regex!1481)) (EmptyLang!1481) (Union!1481 (regOne!3475 Regex!1481) (regTwo!3475 Regex!1481)) )
))
(declare-datatypes ((List!5850 0))(
  ( (Nil!5840) (Cons!5840 (h!11241 (_ BitVec 16)) (t!79001 List!5850)) )
))
(declare-datatypes ((List!5851 0))(
  ( (Nil!5841) (Cons!5841 (h!11242 C!3884) (t!79002 List!5851)) )
))
(declare-datatypes ((IArray!3729 0))(
  ( (IArray!3730 (innerList!1922 List!5851)) )
))
(declare-datatypes ((Conc!1864 0))(
  ( (Node!1864 (left!4746 Conc!1864) (right!5076 Conc!1864) (csize!3958 Int) (cheight!2075 Int)) (Leaf!2945 (xs!4501 IArray!3729) (csize!3959 Int)) (Empty!1864) )
))
(declare-datatypes ((BalanceConc!3736 0))(
  ( (BalanceConc!3737 (c!110316 Conc!1864)) )
))
(declare-datatypes ((TokenValue!1171 0))(
  ( (FloatLiteralValue!2342 (text!8642 List!5850)) (TokenValueExt!1170 (__x!4240 Int)) (Broken!5855 (value!37530 List!5850)) (Object!1180) (End!1171) (Def!1171) (Underscore!1171) (Match!1171) (Else!1171) (Error!1171) (Case!1171) (If!1171) (Extends!1171) (Abstract!1171) (Class!1171) (Val!1171) (DelimiterValue!2342 (del!1231 List!5850)) (KeywordValue!1177 (value!37531 List!5850)) (CommentValue!2342 (value!37532 List!5850)) (WhitespaceValue!2342 (value!37533 List!5850)) (IndentationValue!1171 (value!37534 List!5850)) (String!7598) (Int32!1171) (Broken!5856 (value!37535 List!5850)) (Boolean!1172) (Unit!10608) (OperatorValue!1174 (op!1231 List!5850)) (IdentifierValue!2342 (value!37536 List!5850)) (IdentifierValue!2343 (value!37537 List!5850)) (WhitespaceValue!2343 (value!37538 List!5850)) (True!2342) (False!2342) (Broken!5857 (value!37539 List!5850)) (Broken!5858 (value!37540 List!5850)) (True!2343) (RightBrace!1171) (RightBracket!1171) (Colon!1171) (Null!1171) (Comma!1171) (LeftBracket!1171) (False!2343) (LeftBrace!1171) (ImaginaryLiteralValue!1171 (text!8643 List!5850)) (StringLiteralValue!3513 (value!37541 List!5850)) (EOFValue!1171 (value!37542 List!5850)) (IdentValue!1171 (value!37543 List!5850)) (DelimiterValue!2343 (value!37544 List!5850)) (DedentValue!1171 (value!37545 List!5850)) (NewLineValue!1171 (value!37546 List!5850)) (IntegerValue!3513 (value!37547 (_ BitVec 32)) (text!8644 List!5850)) (IntegerValue!3514 (value!37548 Int) (text!8645 List!5850)) (Times!1171) (Or!1171) (Equal!1171) (Minus!1171) (Broken!5859 (value!37549 List!5850)) (And!1171) (Div!1171) (LessEqual!1171) (Mod!1171) (Concat!2653) (Not!1171) (Plus!1171) (SpaceValue!1171 (value!37550 List!5850)) (IntegerValue!3515 (value!37551 Int) (text!8646 List!5850)) (StringLiteralValue!3514 (text!8647 List!5850)) (FloatLiteralValue!2343 (text!8648 List!5850)) (BytesLiteralValue!1171 (value!37552 List!5850)) (CommentValue!2343 (value!37553 List!5850)) (StringLiteralValue!3515 (value!37554 List!5850)) (ErrorTokenValue!1171 (msg!1232 List!5850)) )
))
(declare-datatypes ((String!7599 0))(
  ( (String!7600 (value!37555 String)) )
))
(declare-datatypes ((TokenValueInjection!2110 0))(
  ( (TokenValueInjection!2111 (toValue!2034 Int) (toChars!1893 Int)) )
))
(declare-datatypes ((Rule!2094 0))(
  ( (Rule!2095 (regex!1147 Regex!1481) (tag!1409 String!7599) (isSeparator!1147 Bool) (transformation!1147 TokenValueInjection!2110)) )
))
(declare-datatypes ((Token!2030 0))(
  ( (Token!2031 (value!37556 TokenValue!1171) (rule!1915 Rule!2094) (size!4626 Int) (originalCharacters!1186 List!5851)) )
))
(declare-datatypes ((tuple2!6784 0))(
  ( (tuple2!6785 (_1!3656 Token!2030) (_2!3656 List!5851)) )
))
(declare-datatypes ((Option!1498 0))(
  ( (None!1497) (Some!1497 (v!16382 tuple2!6784)) )
))
(declare-fun lt!250543 () Option!1498)

(get-info :version)

(assert (=> b!591338 (= res!254935 ((_ is Some!1497) lt!250543))))

(declare-datatypes ((List!5852 0))(
  ( (Nil!5842) (Cons!5842 (h!11243 Rule!2094) (t!79003 List!5852)) )
))
(declare-fun rules!3103 () List!5852)

(declare-datatypes ((LexerInterface!1033 0))(
  ( (LexerInterfaceExt!1030 (__x!4241 Int)) (Lexer!1031) )
))
(declare-fun thiss!22590 () LexerInterface!1033)

(declare-fun input!2705 () List!5851)

(declare-fun maxPrefix!731 (LexerInterface!1033 List!5852 List!5851) Option!1498)

(assert (=> b!591338 (= lt!250543 (maxPrefix!731 thiss!22590 rules!3103 input!2705))))

(declare-fun b!591339 () Bool)

(declare-fun res!254937 () Bool)

(assert (=> b!591339 (=> (not res!254937) (not e!357558))))

(declare-fun suffix!1342 () List!5851)

(declare-fun lt!250551 () List!5851)

(declare-fun lt!250547 () List!5851)

(declare-fun ++!1635 (List!5851 List!5851) List!5851)

(assert (=> b!591339 (= res!254937 (= (++!1635 lt!250551 suffix!1342) lt!250547))))

(declare-fun b!591340 () Bool)

(declare-fun res!254939 () Bool)

(declare-fun e!357559 () Bool)

(assert (=> b!591340 (=> (not res!254939) (not e!357559))))

(declare-fun rulesInvariant!996 (LexerInterface!1033 List!5852) Bool)

(assert (=> b!591340 (= res!254939 (rulesInvariant!996 thiss!22590 rules!3103))))

(declare-fun b!591341 () Bool)

(declare-fun e!357553 () Bool)

(declare-fun tp!184412 () Bool)

(declare-fun e!357562 () Bool)

(declare-fun inv!7392 (String!7599) Bool)

(declare-fun inv!7395 (TokenValueInjection!2110) Bool)

(assert (=> b!591341 (= e!357553 (and tp!184412 (inv!7392 (tag!1409 (h!11243 rules!3103))) (inv!7395 (transformation!1147 (h!11243 rules!3103))) e!357562))))

(declare-fun b!591342 () Bool)

(declare-fun res!254938 () Bool)

(assert (=> b!591342 (=> (not res!254938) (not e!357559))))

(declare-fun isEmpty!4217 (List!5851) Bool)

(assert (=> b!591342 (= res!254938 (not (isEmpty!4217 input!2705)))))

(declare-fun b!591343 () Bool)

(declare-fun e!357566 () Bool)

(declare-fun e!357565 () Bool)

(assert (=> b!591343 (= e!357566 e!357565)))

(declare-fun res!254932 () Bool)

(assert (=> b!591343 (=> (not res!254932) (not e!357565))))

(declare-fun lt!250546 () Option!1498)

(declare-fun isDefined!1309 (Option!1498) Bool)

(assert (=> b!591343 (= res!254932 (isDefined!1309 lt!250546))))

(assert (=> b!591343 (= lt!250546 (maxPrefix!731 thiss!22590 rules!3103 lt!250547))))

(assert (=> b!591343 (= lt!250547 (++!1635 input!2705 suffix!1342))))

(declare-fun b!591344 () Bool)

(declare-fun e!357552 () Bool)

(declare-fun size!4627 (List!5851) Int)

(assert (=> b!591344 (= e!357552 (= (size!4626 (_1!3656 (v!16382 lt!250543))) (size!4627 (originalCharacters!1186 (_1!3656 (v!16382 lt!250543))))))))

(declare-fun b!591346 () Bool)

(declare-fun e!357563 () Bool)

(declare-fun tp_is_empty!3317 () Bool)

(declare-fun tp!184408 () Bool)

(assert (=> b!591346 (= e!357563 (and tp_is_empty!3317 tp!184408))))

(declare-fun e!357556 () Bool)

(assert (=> b!591347 (= e!357556 (and tp!184410 tp!184416))))

(declare-fun b!591348 () Bool)

(declare-fun e!357555 () Bool)

(declare-fun tp!184413 () Bool)

(assert (=> b!591348 (= e!357555 (and tp_is_empty!3317 tp!184413))))

(declare-fun b!591349 () Bool)

(declare-fun res!254936 () Bool)

(assert (=> b!591349 (=> (not res!254936) (not e!357559))))

(declare-fun isEmpty!4218 (List!5852) Bool)

(assert (=> b!591349 (= res!254936 (not (isEmpty!4218 rules!3103)))))

(declare-fun b!591350 () Bool)

(assert (=> b!591350 (= e!357558 (not true))))

(assert (=> b!591350 e!357552))

(declare-fun res!254934 () Bool)

(assert (=> b!591350 (=> (not res!254934) (not e!357552))))

(declare-fun lt!250542 () List!5851)

(declare-fun apply!1400 (TokenValueInjection!2110 BalanceConc!3736) TokenValue!1171)

(declare-fun seqFromList!1323 (List!5851) BalanceConc!3736)

(assert (=> b!591350 (= res!254934 (= (value!37556 (_1!3656 (v!16382 lt!250543))) (apply!1400 (transformation!1147 (rule!1915 (_1!3656 (v!16382 lt!250543)))) (seqFromList!1323 lt!250542))))))

(declare-datatypes ((Unit!10609 0))(
  ( (Unit!10610) )
))
(declare-fun lt!250535 () Unit!10609)

(declare-fun token!491 () Token!2030)

(declare-fun lemmaInv!255 (TokenValueInjection!2110) Unit!10609)

(assert (=> b!591350 (= lt!250535 (lemmaInv!255 (transformation!1147 (rule!1915 token!491))))))

(declare-fun lt!250549 () Unit!10609)

(assert (=> b!591350 (= lt!250549 (lemmaInv!255 (transformation!1147 (rule!1915 (_1!3656 (v!16382 lt!250543))))))))

(declare-fun ruleValid!345 (LexerInterface!1033 Rule!2094) Bool)

(assert (=> b!591350 (ruleValid!345 thiss!22590 (rule!1915 token!491))))

(declare-fun lt!250540 () Unit!10609)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!192 (LexerInterface!1033 Rule!2094 List!5852) Unit!10609)

(assert (=> b!591350 (= lt!250540 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!192 thiss!22590 (rule!1915 token!491) rules!3103))))

(assert (=> b!591350 (ruleValid!345 thiss!22590 (rule!1915 (_1!3656 (v!16382 lt!250543))))))

(declare-fun lt!250552 () Unit!10609)

(assert (=> b!591350 (= lt!250552 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!192 thiss!22590 (rule!1915 (_1!3656 (v!16382 lt!250543))) rules!3103))))

(declare-fun isPrefix!775 (List!5851 List!5851) Bool)

(assert (=> b!591350 (isPrefix!775 input!2705 input!2705)))

(declare-fun lt!250548 () Unit!10609)

(declare-fun lemmaIsPrefixRefl!511 (List!5851 List!5851) Unit!10609)

(assert (=> b!591350 (= lt!250548 (lemmaIsPrefixRefl!511 input!2705 input!2705))))

(declare-fun lt!250545 () List!5851)

(assert (=> b!591350 (= (_2!3656 (v!16382 lt!250543)) lt!250545)))

(declare-fun lt!250550 () Unit!10609)

(declare-fun lemmaSamePrefixThenSameSuffix!488 (List!5851 List!5851 List!5851 List!5851 List!5851) Unit!10609)

(assert (=> b!591350 (= lt!250550 (lemmaSamePrefixThenSameSuffix!488 lt!250542 (_2!3656 (v!16382 lt!250543)) lt!250542 lt!250545 input!2705))))

(declare-fun getSuffix!292 (List!5851 List!5851) List!5851)

(assert (=> b!591350 (= lt!250545 (getSuffix!292 input!2705 lt!250542))))

(assert (=> b!591350 (isPrefix!775 lt!250542 (++!1635 lt!250542 (_2!3656 (v!16382 lt!250543))))))

(declare-fun lt!250541 () Unit!10609)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!620 (List!5851 List!5851) Unit!10609)

(assert (=> b!591350 (= lt!250541 (lemmaConcatTwoListThenFirstIsPrefix!620 lt!250542 (_2!3656 (v!16382 lt!250543))))))

(declare-fun lt!250544 () Unit!10609)

(declare-fun lemmaCharactersSize!206 (Token!2030) Unit!10609)

(assert (=> b!591350 (= lt!250544 (lemmaCharactersSize!206 token!491))))

(declare-fun lt!250536 () Unit!10609)

(assert (=> b!591350 (= lt!250536 (lemmaCharactersSize!206 (_1!3656 (v!16382 lt!250543))))))

(declare-fun lt!250538 () Unit!10609)

(declare-fun e!357557 () Unit!10609)

(assert (=> b!591350 (= lt!250538 e!357557)))

(declare-fun c!110314 () Bool)

(assert (=> b!591350 (= c!110314 (> (size!4627 lt!250542) (size!4627 lt!250551)))))

(declare-fun list!2444 (BalanceConc!3736) List!5851)

(declare-fun charsOf!776 (Token!2030) BalanceConc!3736)

(assert (=> b!591350 (= lt!250542 (list!2444 (charsOf!776 (_1!3656 (v!16382 lt!250543)))))))

(assert (=> b!591350 (= lt!250543 (Some!1497 (v!16382 lt!250543)))))

(declare-fun lt!250537 () Unit!10609)

(declare-fun lemmaConcatSameAndSameSizesThenSameLists!220 (List!5851 List!5851 List!5851 List!5851) Unit!10609)

(assert (=> b!591350 (= lt!250537 (lemmaConcatSameAndSameSizesThenSameLists!220 lt!250551 suffix!1342 input!2705 suffix!1342))))

(declare-fun tp!184411 () Bool)

(declare-fun b!591351 () Bool)

(declare-fun e!357567 () Bool)

(assert (=> b!591351 (= e!357567 (and tp!184411 (inv!7392 (tag!1409 (rule!1915 token!491))) (inv!7395 (transformation!1147 (rule!1915 token!491))) e!357556))))

(declare-fun b!591352 () Bool)

(assert (=> b!591352 (= e!357565 e!357568)))

(declare-fun res!254933 () Bool)

(assert (=> b!591352 (=> (not res!254933) (not e!357568))))

(declare-fun lt!250539 () tuple2!6784)

(assert (=> b!591352 (= res!254933 (and (= (_1!3656 lt!250539) token!491) (= (_2!3656 lt!250539) suffix!1342)))))

(declare-fun get!2235 (Option!1498) tuple2!6784)

(assert (=> b!591352 (= lt!250539 (get!2235 lt!250546))))

(declare-fun b!591353 () Bool)

(declare-fun Unit!10611 () Unit!10609)

(assert (=> b!591353 (= e!357557 Unit!10611)))

(assert (=> b!591353 false))

(declare-fun e!357560 () Bool)

(declare-fun tp!184409 () Bool)

(declare-fun b!591354 () Bool)

(declare-fun inv!21 (TokenValue!1171) Bool)

(assert (=> b!591354 (= e!357560 (and (inv!21 (value!37556 token!491)) e!357567 tp!184409))))

(assert (=> b!591355 (= e!357562 (and tp!184407 tp!184415))))

(declare-fun b!591356 () Bool)

(declare-fun e!357564 () Bool)

(declare-fun tp!184414 () Bool)

(assert (=> b!591356 (= e!357564 (and e!357553 tp!184414))))

(declare-fun b!591357 () Bool)

(assert (=> b!591357 (= e!357559 e!357566)))

(declare-fun res!254931 () Bool)

(assert (=> b!591357 (=> (not res!254931) (not e!357566))))

(assert (=> b!591357 (= res!254931 (= lt!250551 input!2705))))

(assert (=> b!591357 (= lt!250551 (list!2444 (charsOf!776 token!491)))))

(declare-fun b!591345 () Bool)

(declare-fun Unit!10612 () Unit!10609)

(assert (=> b!591345 (= e!357557 Unit!10612)))

(declare-fun res!254940 () Bool)

(assert (=> start!55468 (=> (not res!254940) (not e!357559))))

(assert (=> start!55468 (= res!254940 ((_ is Lexer!1031) thiss!22590))))

(assert (=> start!55468 e!357559))

(assert (=> start!55468 e!357563))

(assert (=> start!55468 e!357564))

(declare-fun inv!7396 (Token!2030) Bool)

(assert (=> start!55468 (and (inv!7396 token!491) e!357560)))

(assert (=> start!55468 true))

(assert (=> start!55468 e!357555))

(assert (= (and start!55468 res!254940) b!591349))

(assert (= (and b!591349 res!254936) b!591340))

(assert (= (and b!591340 res!254939) b!591342))

(assert (= (and b!591342 res!254938) b!591357))

(assert (= (and b!591357 res!254931) b!591343))

(assert (= (and b!591343 res!254932) b!591352))

(assert (= (and b!591352 res!254933) b!591338))

(assert (= (and b!591338 res!254935) b!591339))

(assert (= (and b!591339 res!254937) b!591350))

(assert (= (and b!591350 c!110314) b!591353))

(assert (= (and b!591350 (not c!110314)) b!591345))

(assert (= (and b!591350 res!254934) b!591344))

(assert (= (and start!55468 ((_ is Cons!5841) suffix!1342)) b!591346))

(assert (= b!591341 b!591355))

(assert (= b!591356 b!591341))

(assert (= (and start!55468 ((_ is Cons!5842) rules!3103)) b!591356))

(assert (= b!591351 b!591347))

(assert (= b!591354 b!591351))

(assert (= start!55468 b!591354))

(assert (= (and start!55468 ((_ is Cons!5841) input!2705)) b!591348))

(declare-fun m!852593 () Bool)

(assert (=> b!591343 m!852593))

(declare-fun m!852595 () Bool)

(assert (=> b!591343 m!852595))

(declare-fun m!852597 () Bool)

(assert (=> b!591343 m!852597))

(declare-fun m!852599 () Bool)

(assert (=> b!591339 m!852599))

(declare-fun m!852601 () Bool)

(assert (=> b!591349 m!852601))

(declare-fun m!852603 () Bool)

(assert (=> b!591340 m!852603))

(declare-fun m!852605 () Bool)

(assert (=> b!591354 m!852605))

(declare-fun m!852607 () Bool)

(assert (=> start!55468 m!852607))

(declare-fun m!852609 () Bool)

(assert (=> b!591342 m!852609))

(declare-fun m!852611 () Bool)

(assert (=> b!591344 m!852611))

(declare-fun m!852613 () Bool)

(assert (=> b!591341 m!852613))

(declare-fun m!852615 () Bool)

(assert (=> b!591341 m!852615))

(declare-fun m!852617 () Bool)

(assert (=> b!591351 m!852617))

(declare-fun m!852619 () Bool)

(assert (=> b!591351 m!852619))

(declare-fun m!852621 () Bool)

(assert (=> b!591350 m!852621))

(declare-fun m!852623 () Bool)

(assert (=> b!591350 m!852623))

(declare-fun m!852625 () Bool)

(assert (=> b!591350 m!852625))

(declare-fun m!852627 () Bool)

(assert (=> b!591350 m!852627))

(declare-fun m!852629 () Bool)

(assert (=> b!591350 m!852629))

(declare-fun m!852631 () Bool)

(assert (=> b!591350 m!852631))

(declare-fun m!852633 () Bool)

(assert (=> b!591350 m!852633))

(declare-fun m!852635 () Bool)

(assert (=> b!591350 m!852635))

(declare-fun m!852637 () Bool)

(assert (=> b!591350 m!852637))

(declare-fun m!852639 () Bool)

(assert (=> b!591350 m!852639))

(declare-fun m!852641 () Bool)

(assert (=> b!591350 m!852641))

(assert (=> b!591350 m!852635))

(declare-fun m!852643 () Bool)

(assert (=> b!591350 m!852643))

(declare-fun m!852645 () Bool)

(assert (=> b!591350 m!852645))

(declare-fun m!852647 () Bool)

(assert (=> b!591350 m!852647))

(declare-fun m!852649 () Bool)

(assert (=> b!591350 m!852649))

(declare-fun m!852651 () Bool)

(assert (=> b!591350 m!852651))

(declare-fun m!852653 () Bool)

(assert (=> b!591350 m!852653))

(declare-fun m!852655 () Bool)

(assert (=> b!591350 m!852655))

(assert (=> b!591350 m!852623))

(declare-fun m!852657 () Bool)

(assert (=> b!591350 m!852657))

(declare-fun m!852659 () Bool)

(assert (=> b!591350 m!852659))

(declare-fun m!852661 () Bool)

(assert (=> b!591350 m!852661))

(declare-fun m!852663 () Bool)

(assert (=> b!591350 m!852663))

(assert (=> b!591350 m!852629))

(declare-fun m!852665 () Bool)

(assert (=> b!591357 m!852665))

(assert (=> b!591357 m!852665))

(declare-fun m!852667 () Bool)

(assert (=> b!591357 m!852667))

(declare-fun m!852669 () Bool)

(assert (=> b!591352 m!852669))

(declare-fun m!852671 () Bool)

(assert (=> b!591338 m!852671))

(check-sat (not b!591338) (not b!591342) (not b!591344) (not b!591339) (not b!591349) (not b_next!16615) b_and!58281 b_and!58277 (not b!591351) (not b!591354) (not b!591348) (not b!591341) (not b_next!16617) (not b_next!16619) (not b!591352) (not b!591357) (not b!591343) tp_is_empty!3317 (not b!591350) (not b!591346) b_and!58279 (not b_next!16613) (not b!591356) (not b!591340) b_and!58275 (not start!55468))
(check-sat (not b_next!16615) b_and!58281 b_and!58277 b_and!58275 (not b_next!16617) (not b_next!16619) b_and!58279 (not b_next!16613))
