; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!193956 () Bool)

(assert start!193956)

(declare-fun b!1932537 () Bool)

(declare-fun b_free!55369 () Bool)

(declare-fun b_next!56073 () Bool)

(assert (=> b!1932537 (= b_free!55369 (not b_next!56073))))

(declare-fun tp!551526 () Bool)

(declare-fun b_and!152099 () Bool)

(assert (=> b!1932537 (= tp!551526 b_and!152099)))

(declare-fun b_free!55371 () Bool)

(declare-fun b_next!56075 () Bool)

(assert (=> b!1932537 (= b_free!55371 (not b_next!56075))))

(declare-fun tp!551514 () Bool)

(declare-fun b_and!152101 () Bool)

(assert (=> b!1932537 (= tp!551514 b_and!152101)))

(declare-fun b!1932553 () Bool)

(declare-fun b_free!55373 () Bool)

(declare-fun b_next!56077 () Bool)

(assert (=> b!1932553 (= b_free!55373 (not b_next!56077))))

(declare-fun tp!551519 () Bool)

(declare-fun b_and!152103 () Bool)

(assert (=> b!1932553 (= tp!551519 b_and!152103)))

(declare-fun b_free!55375 () Bool)

(declare-fun b_next!56079 () Bool)

(assert (=> b!1932553 (= b_free!55375 (not b_next!56079))))

(declare-fun tp!551521 () Bool)

(declare-fun b_and!152105 () Bool)

(assert (=> b!1932553 (= tp!551521 b_and!152105)))

(declare-fun b!1932535 () Bool)

(declare-fun b_free!55377 () Bool)

(declare-fun b_next!56081 () Bool)

(assert (=> b!1932535 (= b_free!55377 (not b_next!56081))))

(declare-fun tp!551523 () Bool)

(declare-fun b_and!152107 () Bool)

(assert (=> b!1932535 (= tp!551523 b_and!152107)))

(declare-fun b_free!55379 () Bool)

(declare-fun b_next!56083 () Bool)

(assert (=> b!1932535 (= b_free!55379 (not b_next!56083))))

(declare-fun tp!551517 () Bool)

(declare-fun b_and!152109 () Bool)

(assert (=> b!1932535 (= tp!551517 b_and!152109)))

(declare-fun tp!551518 () Bool)

(declare-fun e!1235215 () Bool)

(declare-fun b!1932530 () Bool)

(declare-fun e!1235213 () Bool)

(declare-datatypes ((List!22046 0))(
  ( (Nil!21964) (Cons!21964 (h!27365 (_ BitVec 16)) (t!180473 List!22046)) )
))
(declare-datatypes ((TokenValue!4076 0))(
  ( (FloatLiteralValue!8152 (text!28977 List!22046)) (TokenValueExt!4075 (__x!13650 Int)) (Broken!20380 (value!123855 List!22046)) (Object!4157) (End!4076) (Def!4076) (Underscore!4076) (Match!4076) (Else!4076) (Error!4076) (Case!4076) (If!4076) (Extends!4076) (Abstract!4076) (Class!4076) (Val!4076) (DelimiterValue!8152 (del!4136 List!22046)) (KeywordValue!4082 (value!123856 List!22046)) (CommentValue!8152 (value!123857 List!22046)) (WhitespaceValue!8152 (value!123858 List!22046)) (IndentationValue!4076 (value!123859 List!22046)) (String!25497) (Int32!4076) (Broken!20381 (value!123860 List!22046)) (Boolean!4077) (Unit!36329) (OperatorValue!4079 (op!4136 List!22046)) (IdentifierValue!8152 (value!123861 List!22046)) (IdentifierValue!8153 (value!123862 List!22046)) (WhitespaceValue!8153 (value!123863 List!22046)) (True!8152) (False!8152) (Broken!20382 (value!123864 List!22046)) (Broken!20383 (value!123865 List!22046)) (True!8153) (RightBrace!4076) (RightBracket!4076) (Colon!4076) (Null!4076) (Comma!4076) (LeftBracket!4076) (False!8153) (LeftBrace!4076) (ImaginaryLiteralValue!4076 (text!28978 List!22046)) (StringLiteralValue!12228 (value!123866 List!22046)) (EOFValue!4076 (value!123867 List!22046)) (IdentValue!4076 (value!123868 List!22046)) (DelimiterValue!8153 (value!123869 List!22046)) (DedentValue!4076 (value!123870 List!22046)) (NewLineValue!4076 (value!123871 List!22046)) (IntegerValue!12228 (value!123872 (_ BitVec 32)) (text!28979 List!22046)) (IntegerValue!12229 (value!123873 Int) (text!28980 List!22046)) (Times!4076) (Or!4076) (Equal!4076) (Minus!4076) (Broken!20384 (value!123874 List!22046)) (And!4076) (Div!4076) (LessEqual!4076) (Mod!4076) (Concat!9441) (Not!4076) (Plus!4076) (SpaceValue!4076 (value!123875 List!22046)) (IntegerValue!12230 (value!123876 Int) (text!28981 List!22046)) (StringLiteralValue!12229 (text!28982 List!22046)) (FloatLiteralValue!8153 (text!28983 List!22046)) (BytesLiteralValue!4076 (value!123877 List!22046)) (CommentValue!8153 (value!123878 List!22046)) (StringLiteralValue!12230 (value!123879 List!22046)) (ErrorTokenValue!4076 (msg!4137 List!22046)) )
))
(declare-datatypes ((C!10876 0))(
  ( (C!10877 (val!6390 Int)) )
))
(declare-datatypes ((List!22047 0))(
  ( (Nil!21965) (Cons!21965 (h!27366 C!10876) (t!180474 List!22047)) )
))
(declare-datatypes ((String!25498 0))(
  ( (String!25499 (value!123880 String)) )
))
(declare-datatypes ((Regex!5365 0))(
  ( (ElementMatch!5365 (c!314384 C!10876)) (Concat!9442 (regOne!11242 Regex!5365) (regTwo!11242 Regex!5365)) (EmptyExpr!5365) (Star!5365 (reg!5694 Regex!5365)) (EmptyLang!5365) (Union!5365 (regOne!11243 Regex!5365) (regTwo!11243 Regex!5365)) )
))
(declare-datatypes ((IArray!14673 0))(
  ( (IArray!14674 (innerList!7394 List!22047)) )
))
(declare-datatypes ((Conc!7334 0))(
  ( (Node!7334 (left!17474 Conc!7334) (right!17804 Conc!7334) (csize!14898 Int) (cheight!7545 Int)) (Leaf!10767 (xs!10228 IArray!14673) (csize!14899 Int)) (Empty!7334) )
))
(declare-datatypes ((BalanceConc!14484 0))(
  ( (BalanceConc!14485 (c!314385 Conc!7334)) )
))
(declare-datatypes ((TokenValueInjection!7736 0))(
  ( (TokenValueInjection!7737 (toValue!5581 Int) (toChars!5440 Int)) )
))
(declare-datatypes ((Rule!7680 0))(
  ( (Rule!7681 (regex!3940 Regex!5365) (tag!4392 String!25498) (isSeparator!3940 Bool) (transformation!3940 TokenValueInjection!7736)) )
))
(declare-datatypes ((Token!7432 0))(
  ( (Token!7433 (value!123881 TokenValue!4076) (rule!6149 Rule!7680) (size!17140 Int) (originalCharacters!4747 List!22047)) )
))
(declare-datatypes ((List!22048 0))(
  ( (Nil!21966) (Cons!21966 (h!27367 Token!7432) (t!180475 List!22048)) )
))
(declare-fun tokens!598 () List!22048)

(declare-fun inv!29056 (String!25498) Bool)

(declare-fun inv!29059 (TokenValueInjection!7736) Bool)

(assert (=> b!1932530 (= e!1235215 (and tp!551518 (inv!29056 (tag!4392 (rule!6149 (h!27367 tokens!598)))) (inv!29059 (transformation!3940 (rule!6149 (h!27367 tokens!598)))) e!1235213))))

(declare-fun b!1932531 () Bool)

(declare-fun e!1235204 () Bool)

(declare-datatypes ((tuple2!20590 0))(
  ( (tuple2!20591 (_1!11764 Token!7432) (_2!11764 List!22047)) )
))
(declare-datatypes ((Option!4557 0))(
  ( (None!4556) (Some!4556 (v!26667 tuple2!20590)) )
))
(declare-fun lt!740727 () Option!4557)

(declare-fun get!6922 (Option!4557) tuple2!20590)

(assert (=> b!1932531 (= e!1235204 (= (_1!11764 (get!6922 lt!740727)) (h!27367 tokens!598)))))

(declare-fun lt!740724 () List!22047)

(declare-fun lt!740723 () List!22047)

(declare-fun b!1932532 () Bool)

(declare-fun e!1235214 () Bool)

(declare-fun lt!740728 () List!22047)

(assert (=> b!1932532 (= e!1235214 (or (not (= lt!740723 lt!740728)) (not (= lt!740728 lt!740724)) (= lt!740723 lt!740724)))))

(declare-datatypes ((LexerInterface!3553 0))(
  ( (LexerInterfaceExt!3550 (__x!13651 Int)) (Lexer!3551) )
))
(declare-fun thiss!23328 () LexerInterface!3553)

(declare-fun printList!1088 (LexerInterface!3553 List!22048) List!22047)

(assert (=> b!1932532 (= lt!740728 (printList!1088 thiss!23328 (Cons!21966 (h!27367 tokens!598) Nil!21966)))))

(declare-fun lt!740738 () BalanceConc!14484)

(declare-fun list!8897 (BalanceConc!14484) List!22047)

(assert (=> b!1932532 (= lt!740723 (list!8897 lt!740738))))

(declare-datatypes ((IArray!14675 0))(
  ( (IArray!14676 (innerList!7395 List!22048)) )
))
(declare-datatypes ((Conc!7335 0))(
  ( (Node!7335 (left!17475 Conc!7335) (right!17805 Conc!7335) (csize!14900 Int) (cheight!7546 Int)) (Leaf!10768 (xs!10229 IArray!14675) (csize!14901 Int)) (Empty!7335) )
))
(declare-datatypes ((BalanceConc!14486 0))(
  ( (BalanceConc!14487 (c!314386 Conc!7335)) )
))
(declare-fun lt!740726 () BalanceConc!14486)

(declare-fun printTailRec!1029 (LexerInterface!3553 BalanceConc!14486 Int BalanceConc!14484) BalanceConc!14484)

(assert (=> b!1932532 (= lt!740738 (printTailRec!1029 thiss!23328 lt!740726 0 (BalanceConc!14485 Empty!7334)))))

(declare-fun print!1523 (LexerInterface!3553 BalanceConc!14486) BalanceConc!14484)

(assert (=> b!1932532 (= lt!740738 (print!1523 thiss!23328 lt!740726))))

(declare-fun singletonSeq!1924 (Token!7432) BalanceConc!14486)

(assert (=> b!1932532 (= lt!740726 (singletonSeq!1924 (h!27367 tokens!598)))))

(declare-fun b!1932533 () Bool)

(declare-fun e!1235201 () Bool)

(declare-fun separatorToken!354 () Token!7432)

(declare-fun lt!740735 () Rule!7680)

(assert (=> b!1932533 (= e!1235201 (= (rule!6149 separatorToken!354) lt!740735))))

(declare-fun e!1235198 () Bool)

(declare-fun b!1932534 () Bool)

(declare-fun tp!551520 () Bool)

(declare-fun e!1235217 () Bool)

(declare-fun inv!21 (TokenValue!4076) Bool)

(assert (=> b!1932534 (= e!1235217 (and (inv!21 (value!123881 separatorToken!354)) e!1235198 tp!551520))))

(assert (=> b!1932535 (= e!1235213 (and tp!551523 tp!551517))))

(declare-fun b!1932536 () Bool)

(declare-fun res!864040 () Bool)

(declare-fun e!1235199 () Bool)

(assert (=> b!1932536 (=> (not res!864040) (not e!1235199))))

(assert (=> b!1932536 (= res!864040 (isSeparator!3940 (rule!6149 separatorToken!354)))))

(declare-fun e!1235200 () Bool)

(assert (=> b!1932537 (= e!1235200 (and tp!551526 tp!551514))))

(declare-fun b!1932538 () Bool)

(declare-fun res!864028 () Bool)

(assert (=> b!1932538 (=> (not res!864028) (not e!1235199))))

(get-info :version)

(assert (=> b!1932538 (= res!864028 ((_ is Cons!21966) tokens!598))))

(declare-fun b!1932539 () Bool)

(declare-fun res!864034 () Bool)

(assert (=> b!1932539 (=> (not res!864034) (not e!1235199))))

(declare-datatypes ((List!22049 0))(
  ( (Nil!21967) (Cons!21967 (h!27368 Rule!7680) (t!180476 List!22049)) )
))
(declare-fun rules!3198 () List!22049)

(declare-fun rulesInvariant!3160 (LexerInterface!3553 List!22049) Bool)

(assert (=> b!1932539 (= res!864034 (rulesInvariant!3160 thiss!23328 rules!3198))))

(declare-fun res!864035 () Bool)

(assert (=> start!193956 (=> (not res!864035) (not e!1235199))))

(assert (=> start!193956 (= res!864035 ((_ is Lexer!3551) thiss!23328))))

(assert (=> start!193956 e!1235199))

(assert (=> start!193956 true))

(declare-fun e!1235211 () Bool)

(assert (=> start!193956 e!1235211))

(declare-fun e!1235210 () Bool)

(assert (=> start!193956 e!1235210))

(declare-fun inv!29060 (Token!7432) Bool)

(assert (=> start!193956 (and (inv!29060 separatorToken!354) e!1235217)))

(declare-fun b!1932540 () Bool)

(assert (=> b!1932540 (= e!1235199 (not e!1235214))))

(declare-fun res!864031 () Bool)

(assert (=> b!1932540 (=> res!864031 e!1235214)))

(declare-fun lt!740733 () Bool)

(declare-fun lt!740739 () Option!4557)

(assert (=> b!1932540 (= res!864031 (or (and (not lt!740733) (= (_1!11764 (v!26667 lt!740739)) (h!27367 tokens!598))) (and (not lt!740733) (not (= (_1!11764 (v!26667 lt!740739)) (h!27367 tokens!598)))) (not ((_ is None!4556) lt!740739))))))

(assert (=> b!1932540 (= lt!740733 (not ((_ is Some!4556) lt!740739)))))

(declare-fun maxPrefix!1991 (LexerInterface!3553 List!22049 List!22047) Option!4557)

(declare-fun ++!5899 (List!22047 List!22047) List!22047)

(declare-fun printWithSeparatorTokenWhenNeededList!592 (LexerInterface!3553 List!22049 List!22048 Token!7432) List!22047)

(assert (=> b!1932540 (= lt!740739 (maxPrefix!1991 thiss!23328 rules!3198 (++!5899 lt!740724 (printWithSeparatorTokenWhenNeededList!592 thiss!23328 rules!3198 (t!180475 tokens!598) separatorToken!354))))))

(declare-fun e!1235212 () Bool)

(assert (=> b!1932540 e!1235212))

(declare-fun res!864041 () Bool)

(assert (=> b!1932540 (=> (not res!864041) (not e!1235212))))

(declare-datatypes ((Option!4558 0))(
  ( (None!4557) (Some!4557 (v!26668 Rule!7680)) )
))
(declare-fun lt!740734 () Option!4558)

(declare-fun isDefined!3849 (Option!4558) Bool)

(assert (=> b!1932540 (= res!864041 (isDefined!3849 lt!740734))))

(declare-fun getRuleFromTag!761 (LexerInterface!3553 List!22049 String!25498) Option!4558)

(assert (=> b!1932540 (= lt!740734 (getRuleFromTag!761 thiss!23328 rules!3198 (tag!4392 (rule!6149 (h!27367 tokens!598)))))))

(declare-datatypes ((Unit!36330 0))(
  ( (Unit!36331) )
))
(declare-fun lt!740730 () Unit!36330)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!761 (LexerInterface!3553 List!22049 List!22047 Token!7432) Unit!36330)

(assert (=> b!1932540 (= lt!740730 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!761 thiss!23328 rules!3198 lt!740724 (h!27367 tokens!598)))))

(assert (=> b!1932540 e!1235204))

(declare-fun res!864038 () Bool)

(assert (=> b!1932540 (=> (not res!864038) (not e!1235204))))

(declare-fun isDefined!3850 (Option!4557) Bool)

(assert (=> b!1932540 (= res!864038 (isDefined!3850 lt!740727))))

(assert (=> b!1932540 (= lt!740727 (maxPrefix!1991 thiss!23328 rules!3198 lt!740724))))

(declare-fun lt!740725 () BalanceConc!14484)

(assert (=> b!1932540 (= lt!740724 (list!8897 lt!740725))))

(declare-fun e!1235208 () Bool)

(assert (=> b!1932540 e!1235208))

(declare-fun res!864029 () Bool)

(assert (=> b!1932540 (=> (not res!864029) (not e!1235208))))

(declare-fun lt!740732 () Option!4558)

(assert (=> b!1932540 (= res!864029 (isDefined!3849 lt!740732))))

(assert (=> b!1932540 (= lt!740732 (getRuleFromTag!761 thiss!23328 rules!3198 (tag!4392 (rule!6149 separatorToken!354))))))

(declare-fun lt!740740 () Unit!36330)

(declare-fun lt!740729 () List!22047)

(assert (=> b!1932540 (= lt!740740 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!761 thiss!23328 rules!3198 lt!740729 separatorToken!354))))

(declare-fun charsOf!2480 (Token!7432) BalanceConc!14484)

(assert (=> b!1932540 (= lt!740729 (list!8897 (charsOf!2480 separatorToken!354)))))

(declare-fun lt!740736 () Unit!36330)

(declare-fun lemmaEqSameImage!626 (TokenValueInjection!7736 BalanceConc!14484 BalanceConc!14484) Unit!36330)

(declare-fun seqFromList!2794 (List!22047) BalanceConc!14484)

(assert (=> b!1932540 (= lt!740736 (lemmaEqSameImage!626 (transformation!3940 (rule!6149 (h!27367 tokens!598))) lt!740725 (seqFromList!2794 (originalCharacters!4747 (h!27367 tokens!598)))))))

(declare-fun lt!740731 () Unit!36330)

(declare-fun lemmaSemiInverse!897 (TokenValueInjection!7736 BalanceConc!14484) Unit!36330)

(assert (=> b!1932540 (= lt!740731 (lemmaSemiInverse!897 (transformation!3940 (rule!6149 (h!27367 tokens!598))) lt!740725))))

(assert (=> b!1932540 (= lt!740725 (charsOf!2480 (h!27367 tokens!598)))))

(declare-fun b!1932541 () Bool)

(declare-fun res!864032 () Bool)

(assert (=> b!1932541 (=> (not res!864032) (not e!1235199))))

(declare-fun sepAndNonSepRulesDisjointChars!1038 (List!22049 List!22049) Bool)

(assert (=> b!1932541 (= res!864032 (sepAndNonSepRulesDisjointChars!1038 rules!3198 rules!3198))))

(declare-fun b!1932542 () Bool)

(declare-fun res!864036 () Bool)

(assert (=> b!1932542 (=> (not res!864036) (not e!1235199))))

(declare-fun rulesProduceIndividualToken!1725 (LexerInterface!3553 List!22049 Token!7432) Bool)

(assert (=> b!1932542 (= res!864036 (rulesProduceIndividualToken!1725 thiss!23328 rules!3198 separatorToken!354))))

(declare-fun tp!551525 () Bool)

(declare-fun e!1235209 () Bool)

(declare-fun b!1932543 () Bool)

(assert (=> b!1932543 (= e!1235209 (and tp!551525 (inv!29056 (tag!4392 (h!27368 rules!3198))) (inv!29059 (transformation!3940 (h!27368 rules!3198))) e!1235200))))

(declare-fun b!1932544 () Bool)

(declare-fun res!864037 () Bool)

(assert (=> b!1932544 (=> (not res!864037) (not e!1235199))))

(declare-fun isEmpty!13550 (List!22049) Bool)

(assert (=> b!1932544 (= res!864037 (not (isEmpty!13550 rules!3198)))))

(declare-fun b!1932545 () Bool)

(declare-fun tp!551515 () Bool)

(assert (=> b!1932545 (= e!1235211 (and e!1235209 tp!551515))))

(declare-fun tp!551516 () Bool)

(declare-fun b!1932546 () Bool)

(declare-fun e!1235202 () Bool)

(assert (=> b!1932546 (= e!1235198 (and tp!551516 (inv!29056 (tag!4392 (rule!6149 separatorToken!354))) (inv!29059 (transformation!3940 (rule!6149 separatorToken!354))) e!1235202))))

(declare-fun b!1932547 () Bool)

(declare-fun e!1235207 () Bool)

(assert (=> b!1932547 (= e!1235212 e!1235207)))

(declare-fun res!864030 () Bool)

(assert (=> b!1932547 (=> (not res!864030) (not e!1235207))))

(declare-fun lt!740737 () Rule!7680)

(declare-fun matchR!2633 (Regex!5365 List!22047) Bool)

(assert (=> b!1932547 (= res!864030 (matchR!2633 (regex!3940 lt!740737) lt!740724))))

(declare-fun get!6923 (Option!4558) Rule!7680)

(assert (=> b!1932547 (= lt!740737 (get!6923 lt!740734))))

(declare-fun b!1932548 () Bool)

(declare-fun e!1235218 () Bool)

(declare-fun tp!551522 () Bool)

(assert (=> b!1932548 (= e!1235218 (and (inv!21 (value!123881 (h!27367 tokens!598))) e!1235215 tp!551522))))

(declare-fun tp!551524 () Bool)

(declare-fun b!1932549 () Bool)

(assert (=> b!1932549 (= e!1235210 (and (inv!29060 (h!27367 tokens!598)) e!1235218 tp!551524))))

(declare-fun b!1932550 () Bool)

(assert (=> b!1932550 (= e!1235207 (= (rule!6149 (h!27367 tokens!598)) lt!740737))))

(declare-fun b!1932551 () Bool)

(declare-fun res!864033 () Bool)

(assert (=> b!1932551 (=> (not res!864033) (not e!1235199))))

(declare-fun lambda!75335 () Int)

(declare-fun forall!4646 (List!22048 Int) Bool)

(assert (=> b!1932551 (= res!864033 (forall!4646 tokens!598 lambda!75335))))

(declare-fun b!1932552 () Bool)

(assert (=> b!1932552 (= e!1235208 e!1235201)))

(declare-fun res!864039 () Bool)

(assert (=> b!1932552 (=> (not res!864039) (not e!1235201))))

(assert (=> b!1932552 (= res!864039 (matchR!2633 (regex!3940 lt!740735) lt!740729))))

(assert (=> b!1932552 (= lt!740735 (get!6923 lt!740732))))

(assert (=> b!1932553 (= e!1235202 (and tp!551519 tp!551521))))

(declare-fun b!1932554 () Bool)

(declare-fun res!864042 () Bool)

(assert (=> b!1932554 (=> (not res!864042) (not e!1235199))))

(declare-fun rulesProduceEachTokenIndividuallyList!1284 (LexerInterface!3553 List!22049 List!22048) Bool)

(assert (=> b!1932554 (= res!864042 (rulesProduceEachTokenIndividuallyList!1284 thiss!23328 rules!3198 tokens!598))))

(assert (= (and start!193956 res!864035) b!1932544))

(assert (= (and b!1932544 res!864037) b!1932539))

(assert (= (and b!1932539 res!864034) b!1932554))

(assert (= (and b!1932554 res!864042) b!1932542))

(assert (= (and b!1932542 res!864036) b!1932536))

(assert (= (and b!1932536 res!864040) b!1932551))

(assert (= (and b!1932551 res!864033) b!1932541))

(assert (= (and b!1932541 res!864032) b!1932538))

(assert (= (and b!1932538 res!864028) b!1932540))

(assert (= (and b!1932540 res!864029) b!1932552))

(assert (= (and b!1932552 res!864039) b!1932533))

(assert (= (and b!1932540 res!864038) b!1932531))

(assert (= (and b!1932540 res!864041) b!1932547))

(assert (= (and b!1932547 res!864030) b!1932550))

(assert (= (and b!1932540 (not res!864031)) b!1932532))

(assert (= b!1932543 b!1932537))

(assert (= b!1932545 b!1932543))

(assert (= (and start!193956 ((_ is Cons!21967) rules!3198)) b!1932545))

(assert (= b!1932530 b!1932535))

(assert (= b!1932548 b!1932530))

(assert (= b!1932549 b!1932548))

(assert (= (and start!193956 ((_ is Cons!21966) tokens!598)) b!1932549))

(assert (= b!1932546 b!1932553))

(assert (= b!1932534 b!1932546))

(assert (= start!193956 b!1932534))

(declare-fun m!2370981 () Bool)

(assert (=> b!1932540 m!2370981))

(declare-fun m!2370983 () Bool)

(assert (=> b!1932540 m!2370983))

(declare-fun m!2370985 () Bool)

(assert (=> b!1932540 m!2370985))

(declare-fun m!2370987 () Bool)

(assert (=> b!1932540 m!2370987))

(declare-fun m!2370989 () Bool)

(assert (=> b!1932540 m!2370989))

(declare-fun m!2370991 () Bool)

(assert (=> b!1932540 m!2370991))

(declare-fun m!2370993 () Bool)

(assert (=> b!1932540 m!2370993))

(declare-fun m!2370995 () Bool)

(assert (=> b!1932540 m!2370995))

(declare-fun m!2370997 () Bool)

(assert (=> b!1932540 m!2370997))

(declare-fun m!2370999 () Bool)

(assert (=> b!1932540 m!2370999))

(declare-fun m!2371001 () Bool)

(assert (=> b!1932540 m!2371001))

(declare-fun m!2371003 () Bool)

(assert (=> b!1932540 m!2371003))

(declare-fun m!2371005 () Bool)

(assert (=> b!1932540 m!2371005))

(declare-fun m!2371007 () Bool)

(assert (=> b!1932540 m!2371007))

(assert (=> b!1932540 m!2370985))

(declare-fun m!2371009 () Bool)

(assert (=> b!1932540 m!2371009))

(assert (=> b!1932540 m!2370997))

(declare-fun m!2371011 () Bool)

(assert (=> b!1932540 m!2371011))

(assert (=> b!1932540 m!2371011))

(declare-fun m!2371013 () Bool)

(assert (=> b!1932540 m!2371013))

(assert (=> b!1932540 m!2370999))

(declare-fun m!2371015 () Bool)

(assert (=> b!1932540 m!2371015))

(declare-fun m!2371017 () Bool)

(assert (=> b!1932531 m!2371017))

(declare-fun m!2371019 () Bool)

(assert (=> b!1932549 m!2371019))

(declare-fun m!2371021 () Bool)

(assert (=> b!1932541 m!2371021))

(declare-fun m!2371023 () Bool)

(assert (=> b!1932539 m!2371023))

(declare-fun m!2371025 () Bool)

(assert (=> start!193956 m!2371025))

(declare-fun m!2371027 () Bool)

(assert (=> b!1932552 m!2371027))

(declare-fun m!2371029 () Bool)

(assert (=> b!1932552 m!2371029))

(declare-fun m!2371031 () Bool)

(assert (=> b!1932547 m!2371031))

(declare-fun m!2371033 () Bool)

(assert (=> b!1932547 m!2371033))

(declare-fun m!2371035 () Bool)

(assert (=> b!1932530 m!2371035))

(declare-fun m!2371037 () Bool)

(assert (=> b!1932530 m!2371037))

(declare-fun m!2371039 () Bool)

(assert (=> b!1932542 m!2371039))

(declare-fun m!2371041 () Bool)

(assert (=> b!1932534 m!2371041))

(declare-fun m!2371043 () Bool)

(assert (=> b!1932543 m!2371043))

(declare-fun m!2371045 () Bool)

(assert (=> b!1932543 m!2371045))

(declare-fun m!2371047 () Bool)

(assert (=> b!1932544 m!2371047))

(declare-fun m!2371049 () Bool)

(assert (=> b!1932554 m!2371049))

(declare-fun m!2371051 () Bool)

(assert (=> b!1932532 m!2371051))

(declare-fun m!2371053 () Bool)

(assert (=> b!1932532 m!2371053))

(declare-fun m!2371055 () Bool)

(assert (=> b!1932532 m!2371055))

(declare-fun m!2371057 () Bool)

(assert (=> b!1932532 m!2371057))

(declare-fun m!2371059 () Bool)

(assert (=> b!1932532 m!2371059))

(declare-fun m!2371061 () Bool)

(assert (=> b!1932551 m!2371061))

(declare-fun m!2371063 () Bool)

(assert (=> b!1932546 m!2371063))

(declare-fun m!2371065 () Bool)

(assert (=> b!1932546 m!2371065))

(declare-fun m!2371067 () Bool)

(assert (=> b!1932548 m!2371067))

(check-sat (not b!1932543) (not b!1932548) (not b!1932544) (not b_next!56081) (not b!1932551) (not b_next!56075) (not b!1932549) (not b!1932534) (not b_next!56083) b_and!152107 b_and!152105 (not b!1932554) (not b!1932542) (not b!1932539) b_and!152109 (not b!1932552) (not b!1932530) (not b_next!56079) (not b_next!56077) (not start!193956) (not b!1932545) b_and!152101 (not b_next!56073) (not b!1932547) b_and!152099 (not b!1932532) (not b!1932541) (not b!1932540) (not b!1932531) b_and!152103 (not b!1932546))
(check-sat b_and!152105 b_and!152109 (not b_next!56079) (not b_next!56077) (not b_next!56081) b_and!152101 (not b_next!56075) (not b_next!56073) b_and!152099 b_and!152103 (not b_next!56083) b_and!152107)
