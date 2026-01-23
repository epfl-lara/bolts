; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!394730 () Bool)

(assert start!394730)

(declare-fun b!4148576 () Bool)

(declare-fun b_free!118483 () Bool)

(declare-fun b_next!119187 () Bool)

(assert (=> b!4148576 (= b_free!118483 (not b_next!119187))))

(declare-fun tp!1264581 () Bool)

(declare-fun b_and!322593 () Bool)

(assert (=> b!4148576 (= tp!1264581 b_and!322593)))

(declare-fun b_free!118485 () Bool)

(declare-fun b_next!119189 () Bool)

(assert (=> b!4148576 (= b_free!118485 (not b_next!119189))))

(declare-fun tp!1264578 () Bool)

(declare-fun b_and!322595 () Bool)

(assert (=> b!4148576 (= tp!1264578 b_and!322595)))

(declare-fun b!4148574 () Bool)

(declare-fun b_free!118487 () Bool)

(declare-fun b_next!119191 () Bool)

(assert (=> b!4148574 (= b_free!118487 (not b_next!119191))))

(declare-fun tp!1264577 () Bool)

(declare-fun b_and!322597 () Bool)

(assert (=> b!4148574 (= tp!1264577 b_and!322597)))

(declare-fun b_free!118489 () Bool)

(declare-fun b_next!119193 () Bool)

(assert (=> b!4148574 (= b_free!118489 (not b_next!119193))))

(declare-fun tp!1264576 () Bool)

(declare-fun b_and!322599 () Bool)

(assert (=> b!4148574 (= tp!1264576 b_and!322599)))

(declare-fun b!4148556 () Bool)

(declare-fun b_free!118491 () Bool)

(declare-fun b_next!119195 () Bool)

(assert (=> b!4148556 (= b_free!118491 (not b_next!119195))))

(declare-fun tp!1264586 () Bool)

(declare-fun b_and!322601 () Bool)

(assert (=> b!4148556 (= tp!1264586 b_and!322601)))

(declare-fun b_free!118493 () Bool)

(declare-fun b_next!119197 () Bool)

(assert (=> b!4148556 (= b_free!118493 (not b_next!119197))))

(declare-fun tp!1264584 () Bool)

(declare-fun b_and!322603 () Bool)

(assert (=> b!4148556 (= tp!1264584 b_and!322603)))

(declare-fun b!4148553 () Bool)

(declare-fun res!1698408 () Bool)

(declare-fun e!2574038 () Bool)

(assert (=> b!4148553 (=> (not res!1698408) (not e!2574038))))

(declare-datatypes ((List!45174 0))(
  ( (Nil!45050) (Cons!45050 (h!50470 (_ BitVec 16)) (t!342981 List!45174)) )
))
(declare-datatypes ((TokenValue!7646 0))(
  ( (FloatLiteralValue!15292 (text!53967 List!45174)) (TokenValueExt!7645 (__x!27509 Int)) (Broken!38230 (value!231884 List!45174)) (Object!7769) (End!7646) (Def!7646) (Underscore!7646) (Match!7646) (Else!7646) (Error!7646) (Case!7646) (If!7646) (Extends!7646) (Abstract!7646) (Class!7646) (Val!7646) (DelimiterValue!15292 (del!7706 List!45174)) (KeywordValue!7652 (value!231885 List!45174)) (CommentValue!15292 (value!231886 List!45174)) (WhitespaceValue!15292 (value!231887 List!45174)) (IndentationValue!7646 (value!231888 List!45174)) (String!51979) (Int32!7646) (Broken!38231 (value!231889 List!45174)) (Boolean!7647) (Unit!64330) (OperatorValue!7649 (op!7706 List!45174)) (IdentifierValue!15292 (value!231890 List!45174)) (IdentifierValue!15293 (value!231891 List!45174)) (WhitespaceValue!15293 (value!231892 List!45174)) (True!15292) (False!15292) (Broken!38232 (value!231893 List!45174)) (Broken!38233 (value!231894 List!45174)) (True!15293) (RightBrace!7646) (RightBracket!7646) (Colon!7646) (Null!7646) (Comma!7646) (LeftBracket!7646) (False!15293) (LeftBrace!7646) (ImaginaryLiteralValue!7646 (text!53968 List!45174)) (StringLiteralValue!22938 (value!231895 List!45174)) (EOFValue!7646 (value!231896 List!45174)) (IdentValue!7646 (value!231897 List!45174)) (DelimiterValue!15293 (value!231898 List!45174)) (DedentValue!7646 (value!231899 List!45174)) (NewLineValue!7646 (value!231900 List!45174)) (IntegerValue!22938 (value!231901 (_ BitVec 32)) (text!53969 List!45174)) (IntegerValue!22939 (value!231902 Int) (text!53970 List!45174)) (Times!7646) (Or!7646) (Equal!7646) (Minus!7646) (Broken!38234 (value!231903 List!45174)) (And!7646) (Div!7646) (LessEqual!7646) (Mod!7646) (Concat!19967) (Not!7646) (Plus!7646) (SpaceValue!7646 (value!231904 List!45174)) (IntegerValue!22940 (value!231905 Int) (text!53971 List!45174)) (StringLiteralValue!22939 (text!53972 List!45174)) (FloatLiteralValue!15293 (text!53973 List!45174)) (BytesLiteralValue!7646 (value!231906 List!45174)) (CommentValue!15293 (value!231907 List!45174)) (StringLiteralValue!22940 (value!231908 List!45174)) (ErrorTokenValue!7646 (msg!7707 List!45174)) )
))
(declare-datatypes ((String!51980 0))(
  ( (String!51981 (value!231909 String)) )
))
(declare-datatypes ((C!24828 0))(
  ( (C!24829 (val!14524 Int)) )
))
(declare-datatypes ((List!45175 0))(
  ( (Nil!45051) (Cons!45051 (h!50471 C!24828) (t!342982 List!45175)) )
))
(declare-datatypes ((IArray!27259 0))(
  ( (IArray!27260 (innerList!13687 List!45175)) )
))
(declare-datatypes ((Conc!13627 0))(
  ( (Node!13627 (left!33729 Conc!13627) (right!34059 Conc!13627) (csize!27484 Int) (cheight!13838 Int)) (Leaf!21050 (xs!16933 IArray!27259) (csize!27485 Int)) (Empty!13627) )
))
(declare-datatypes ((BalanceConc!26848 0))(
  ( (BalanceConc!26849 (c!710656 Conc!13627)) )
))
(declare-datatypes ((Regex!12321 0))(
  ( (ElementMatch!12321 (c!710657 C!24828)) (Concat!19968 (regOne!25154 Regex!12321) (regTwo!25154 Regex!12321)) (EmptyExpr!12321) (Star!12321 (reg!12650 Regex!12321)) (EmptyLang!12321) (Union!12321 (regOne!25155 Regex!12321) (regTwo!25155 Regex!12321)) )
))
(declare-datatypes ((TokenValueInjection!14720 0))(
  ( (TokenValueInjection!14721 (toValue!10080 Int) (toChars!9939 Int)) )
))
(declare-datatypes ((Rule!14632 0))(
  ( (Rule!14633 (regex!7416 Regex!12321) (tag!8276 String!51980) (isSeparator!7416 Bool) (transformation!7416 TokenValueInjection!14720)) )
))
(declare-datatypes ((List!45176 0))(
  ( (Nil!45052) (Cons!45052 (h!50472 Rule!14632) (t!342983 List!45176)) )
))
(declare-fun rules!3756 () List!45176)

(declare-fun rBis!149 () Rule!14632)

(declare-fun contains!9098 (List!45176 Rule!14632) Bool)

(assert (=> b!4148553 (= res!1698408 (contains!9098 rules!3756 rBis!149))))

(declare-fun b!4148554 () Bool)

(declare-fun res!1698403 () Bool)

(declare-fun e!2574032 () Bool)

(assert (=> b!4148554 (=> (not res!1698403) (not e!2574032))))

(declare-fun r!4008 () Rule!14632)

(declare-fun getIndex!762 (List!45176 Rule!14632) Int)

(assert (=> b!4148554 (= res!1698403 (< (getIndex!762 rules!3756 rBis!149) (getIndex!762 rules!3756 r!4008)))))

(declare-fun b!4148555 () Bool)

(declare-fun res!1698406 () Bool)

(assert (=> b!4148555 (=> (not res!1698406) (not e!2574038))))

(declare-datatypes ((LexerInterface!7005 0))(
  ( (LexerInterfaceExt!7002 (__x!27510 Int)) (Lexer!7003) )
))
(declare-fun thiss!25645 () LexerInterface!7005)

(declare-fun rulesInvariant!6302 (LexerInterface!7005 List!45176) Bool)

(assert (=> b!4148555 (= res!1698406 (rulesInvariant!6302 thiss!25645 rules!3756))))

(declare-fun e!2574028 () Bool)

(assert (=> b!4148556 (= e!2574028 (and tp!1264586 tp!1264584))))

(declare-fun b!4148557 () Bool)

(declare-fun e!2574041 () Bool)

(declare-fun tp_is_empty!21565 () Bool)

(declare-fun tp!1264575 () Bool)

(assert (=> b!4148557 (= e!2574041 (and tp_is_empty!21565 tp!1264575))))

(declare-fun b!4148558 () Bool)

(assert (=> b!4148558 (= e!2574038 e!2574032)))

(declare-fun res!1698404 () Bool)

(assert (=> b!4148558 (=> (not res!1698404) (not e!2574032))))

(declare-fun input!3238 () List!45175)

(declare-fun p!2912 () List!45175)

(declare-fun lt!1479664 () BalanceConc!26848)

(declare-datatypes ((Token!13762 0))(
  ( (Token!13763 (value!231910 TokenValue!7646) (rule!10546 Rule!14632) (size!33397 Int) (originalCharacters!7912 List!45175)) )
))
(declare-datatypes ((tuple2!43414 0))(
  ( (tuple2!43415 (_1!24841 Token!13762) (_2!24841 List!45175)) )
))
(declare-datatypes ((Option!9722 0))(
  ( (None!9721) (Some!9721 (v!40379 tuple2!43414)) )
))
(declare-fun maxPrefix!4195 (LexerInterface!7005 List!45176 List!45175) Option!9722)

(declare-fun apply!10489 (TokenValueInjection!14720 BalanceConc!26848) TokenValue!7646)

(declare-fun size!33398 (List!45175) Int)

(declare-fun getSuffix!2678 (List!45175 List!45175) List!45175)

(assert (=> b!4148558 (= res!1698404 (= (maxPrefix!4195 thiss!25645 rules!3756 input!3238) (Some!9721 (tuple2!43415 (Token!13763 (apply!10489 (transformation!7416 r!4008) lt!1479664) r!4008 (size!33398 p!2912) p!2912) (getSuffix!2678 input!3238 p!2912)))))))

(declare-datatypes ((Unit!64331 0))(
  ( (Unit!64332) )
))
(declare-fun lt!1479665 () Unit!64331)

(declare-fun lemmaSemiInverse!2274 (TokenValueInjection!14720 BalanceConc!26848) Unit!64331)

(assert (=> b!4148558 (= lt!1479665 (lemmaSemiInverse!2274 (transformation!7416 r!4008) lt!1479664))))

(declare-fun seqFromList!5533 (List!45175) BalanceConc!26848)

(assert (=> b!4148558 (= lt!1479664 (seqFromList!5533 p!2912))))

(declare-fun b!4148559 () Bool)

(declare-fun res!1698396 () Bool)

(assert (=> b!4148559 (=> (not res!1698396) (not e!2574038))))

(declare-fun isEmpty!26892 (List!45176) Bool)

(assert (=> b!4148559 (= res!1698396 (not (isEmpty!26892 rules!3756)))))

(declare-fun b!4148560 () Bool)

(declare-fun res!1698402 () Bool)

(assert (=> b!4148560 (=> (not res!1698402) (not e!2574038))))

(assert (=> b!4148560 (= res!1698402 (contains!9098 rules!3756 r!4008))))

(declare-fun b!4148561 () Bool)

(declare-fun e!2574029 () Bool)

(declare-fun tp!1264579 () Bool)

(assert (=> b!4148561 (= e!2574029 (and tp_is_empty!21565 tp!1264579))))

(declare-fun b!4148562 () Bool)

(declare-fun res!1698409 () Bool)

(assert (=> b!4148562 (=> (not res!1698409) (not e!2574038))))

(declare-fun isEmpty!26893 (List!45175) Bool)

(assert (=> b!4148562 (= res!1698409 (not (isEmpty!26893 p!2912)))))

(declare-fun res!1698407 () Bool)

(assert (=> start!394730 (=> (not res!1698407) (not e!2574038))))

(get-info :version)

(assert (=> start!394730 (= res!1698407 ((_ is Lexer!7003) thiss!25645))))

(assert (=> start!394730 e!2574038))

(declare-fun e!2574027 () Bool)

(assert (=> start!394730 e!2574027))

(assert (=> start!394730 e!2574029))

(assert (=> start!394730 true))

(declare-fun e!2574031 () Bool)

(assert (=> start!394730 e!2574031))

(assert (=> start!394730 e!2574041))

(declare-fun e!2574040 () Bool)

(assert (=> start!394730 e!2574040))

(declare-fun b!4148563 () Bool)

(declare-fun e!2574030 () Bool)

(declare-datatypes ((List!45177 0))(
  ( (Nil!45053) (Cons!45053 (h!50473 String!51980) (t!342984 List!45177)) )
))
(declare-fun noDuplicateTag!3003 (LexerInterface!7005 List!45176 List!45177) Bool)

(declare-fun noDuplicateTag$default$2!18 (LexerInterface!7005) List!45177)

(assert (=> b!4148563 (= e!2574030 (noDuplicateTag!3003 thiss!25645 rules!3756 (noDuplicateTag$default$2!18 thiss!25645)))))

(declare-fun b!4148564 () Bool)

(declare-fun res!1698400 () Bool)

(assert (=> b!4148564 (=> (not res!1698400) (not e!2574032))))

(declare-fun matchR!6150 (Regex!12321 List!45175) Bool)

(assert (=> b!4148564 (= res!1698400 (matchR!6150 (regex!7416 r!4008) p!2912))))

(declare-fun b!4148565 () Bool)

(declare-fun res!1698405 () Bool)

(assert (=> b!4148565 (=> (not res!1698405) (not e!2574032))))

(declare-fun ruleValid!3222 (LexerInterface!7005 Rule!14632) Bool)

(assert (=> b!4148565 (= res!1698405 (ruleValid!3222 thiss!25645 r!4008))))

(declare-fun b!4148566 () Bool)

(declare-fun e!2574039 () Bool)

(assert (=> b!4148566 (= e!2574039 e!2574030)))

(declare-fun res!1698410 () Bool)

(assert (=> b!4148566 (=> res!1698410 e!2574030)))

(assert (=> b!4148566 (= res!1698410 (not (contains!9098 rules!3756 (h!50472 rules!3756))))))

(assert (=> b!4148566 (rulesInvariant!6302 thiss!25645 (t!342983 rules!3756))))

(declare-fun lt!1479663 () Unit!64331)

(declare-fun lemmaInvariantOnRulesThenOnTail!828 (LexerInterface!7005 Rule!14632 List!45176) Unit!64331)

(assert (=> b!4148566 (= lt!1479663 (lemmaInvariantOnRulesThenOnTail!828 thiss!25645 (h!50472 rules!3756) (t!342983 rules!3756)))))

(declare-fun lt!1479667 () Option!9722)

(assert (=> b!4148566 (= lt!1479667 (maxPrefix!4195 thiss!25645 (t!342983 rules!3756) input!3238))))

(declare-fun lt!1479662 () Option!9722)

(declare-fun maxPrefixOneRule!3134 (LexerInterface!7005 Rule!14632 List!45175) Option!9722)

(assert (=> b!4148566 (= lt!1479662 (maxPrefixOneRule!3134 thiss!25645 (h!50472 rules!3756) input!3238))))

(declare-fun b!4148567 () Bool)

(declare-fun res!1698398 () Bool)

(assert (=> b!4148567 (=> res!1698398 e!2574039)))

(assert (=> b!4148567 (= res!1698398 (not (contains!9098 (t!342983 rules!3756) r!4008)))))

(declare-fun b!4148568 () Bool)

(assert (=> b!4148568 (= e!2574032 (not e!2574039))))

(declare-fun res!1698401 () Bool)

(assert (=> b!4148568 (=> res!1698401 e!2574039)))

(assert (=> b!4148568 (= res!1698401 (or (and ((_ is Cons!45052) rules!3756) (= (h!50472 rules!3756) rBis!149)) (not ((_ is Cons!45052) rules!3756)) (= (h!50472 rules!3756) rBis!149)))))

(declare-fun lt!1479666 () Unit!64331)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2262 (LexerInterface!7005 Rule!14632 List!45176) Unit!64331)

(assert (=> b!4148568 (= lt!1479666 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2262 thiss!25645 r!4008 rules!3756))))

(assert (=> b!4148568 (ruleValid!3222 thiss!25645 rBis!149)))

(declare-fun lt!1479668 () Unit!64331)

(assert (=> b!4148568 (= lt!1479668 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2262 thiss!25645 rBis!149 rules!3756))))

(declare-fun b!4148569 () Bool)

(declare-fun e!2574035 () Bool)

(declare-fun tp!1264583 () Bool)

(declare-fun inv!59657 (String!51980) Bool)

(declare-fun inv!59659 (TokenValueInjection!14720) Bool)

(assert (=> b!4148569 (= e!2574040 (and tp!1264583 (inv!59657 (tag!8276 rBis!149)) (inv!59659 (transformation!7416 rBis!149)) e!2574035))))

(declare-fun tp!1264582 () Bool)

(declare-fun b!4148570 () Bool)

(assert (=> b!4148570 (= e!2574031 (and tp!1264582 (inv!59657 (tag!8276 r!4008)) (inv!59659 (transformation!7416 r!4008)) e!2574028))))

(declare-fun b!4148571 () Bool)

(declare-fun res!1698397 () Bool)

(assert (=> b!4148571 (=> res!1698397 e!2574039)))

(assert (=> b!4148571 (= res!1698397 (not (contains!9098 (t!342983 rules!3756) rBis!149)))))

(declare-fun e!2574034 () Bool)

(declare-fun tp!1264580 () Bool)

(declare-fun e!2574033 () Bool)

(declare-fun b!4148572 () Bool)

(assert (=> b!4148572 (= e!2574033 (and tp!1264580 (inv!59657 (tag!8276 (h!50472 rules!3756))) (inv!59659 (transformation!7416 (h!50472 rules!3756))) e!2574034))))

(declare-fun b!4148573 () Bool)

(declare-fun tp!1264585 () Bool)

(assert (=> b!4148573 (= e!2574027 (and e!2574033 tp!1264585))))

(assert (=> b!4148574 (= e!2574035 (and tp!1264577 tp!1264576))))

(declare-fun b!4148575 () Bool)

(declare-fun res!1698399 () Bool)

(assert (=> b!4148575 (=> (not res!1698399) (not e!2574038))))

(declare-fun isPrefix!4351 (List!45175 List!45175) Bool)

(assert (=> b!4148575 (= res!1698399 (isPrefix!4351 p!2912 input!3238))))

(assert (=> b!4148576 (= e!2574034 (and tp!1264581 tp!1264578))))

(assert (= (and start!394730 res!1698407) b!4148575))

(assert (= (and b!4148575 res!1698399) b!4148559))

(assert (= (and b!4148559 res!1698396) b!4148555))

(assert (= (and b!4148555 res!1698406) b!4148560))

(assert (= (and b!4148560 res!1698402) b!4148553))

(assert (= (and b!4148553 res!1698408) b!4148562))

(assert (= (and b!4148562 res!1698409) b!4148558))

(assert (= (and b!4148558 res!1698404) b!4148564))

(assert (= (and b!4148564 res!1698400) b!4148554))

(assert (= (and b!4148554 res!1698403) b!4148565))

(assert (= (and b!4148565 res!1698405) b!4148568))

(assert (= (and b!4148568 (not res!1698401)) b!4148567))

(assert (= (and b!4148567 (not res!1698398)) b!4148571))

(assert (= (and b!4148571 (not res!1698397)) b!4148566))

(assert (= (and b!4148566 (not res!1698410)) b!4148563))

(assert (= b!4148572 b!4148576))

(assert (= b!4148573 b!4148572))

(assert (= (and start!394730 ((_ is Cons!45052) rules!3756)) b!4148573))

(assert (= (and start!394730 ((_ is Cons!45051) p!2912)) b!4148561))

(assert (= b!4148570 b!4148556))

(assert (= start!394730 b!4148570))

(assert (= (and start!394730 ((_ is Cons!45051) input!3238)) b!4148557))

(assert (= b!4148569 b!4148574))

(assert (= start!394730 b!4148569))

(declare-fun m!4744337 () Bool)

(assert (=> b!4148566 m!4744337))

(declare-fun m!4744339 () Bool)

(assert (=> b!4148566 m!4744339))

(declare-fun m!4744341 () Bool)

(assert (=> b!4148566 m!4744341))

(declare-fun m!4744343 () Bool)

(assert (=> b!4148566 m!4744343))

(declare-fun m!4744345 () Bool)

(assert (=> b!4148566 m!4744345))

(declare-fun m!4744347 () Bool)

(assert (=> b!4148553 m!4744347))

(declare-fun m!4744349 () Bool)

(assert (=> b!4148559 m!4744349))

(declare-fun m!4744351 () Bool)

(assert (=> b!4148558 m!4744351))

(declare-fun m!4744353 () Bool)

(assert (=> b!4148558 m!4744353))

(declare-fun m!4744355 () Bool)

(assert (=> b!4148558 m!4744355))

(declare-fun m!4744357 () Bool)

(assert (=> b!4148558 m!4744357))

(declare-fun m!4744359 () Bool)

(assert (=> b!4148558 m!4744359))

(declare-fun m!4744361 () Bool)

(assert (=> b!4148558 m!4744361))

(declare-fun m!4744363 () Bool)

(assert (=> b!4148567 m!4744363))

(declare-fun m!4744365 () Bool)

(assert (=> b!4148571 m!4744365))

(declare-fun m!4744367 () Bool)

(assert (=> b!4148554 m!4744367))

(declare-fun m!4744369 () Bool)

(assert (=> b!4148554 m!4744369))

(declare-fun m!4744371 () Bool)

(assert (=> b!4148560 m!4744371))

(declare-fun m!4744373 () Bool)

(assert (=> b!4148555 m!4744373))

(declare-fun m!4744375 () Bool)

(assert (=> b!4148568 m!4744375))

(declare-fun m!4744377 () Bool)

(assert (=> b!4148568 m!4744377))

(declare-fun m!4744379 () Bool)

(assert (=> b!4148568 m!4744379))

(declare-fun m!4744381 () Bool)

(assert (=> b!4148563 m!4744381))

(assert (=> b!4148563 m!4744381))

(declare-fun m!4744383 () Bool)

(assert (=> b!4148563 m!4744383))

(declare-fun m!4744385 () Bool)

(assert (=> b!4148570 m!4744385))

(declare-fun m!4744387 () Bool)

(assert (=> b!4148570 m!4744387))

(declare-fun m!4744389 () Bool)

(assert (=> b!4148575 m!4744389))

(declare-fun m!4744391 () Bool)

(assert (=> b!4148569 m!4744391))

(declare-fun m!4744393 () Bool)

(assert (=> b!4148569 m!4744393))

(declare-fun m!4744395 () Bool)

(assert (=> b!4148572 m!4744395))

(declare-fun m!4744397 () Bool)

(assert (=> b!4148572 m!4744397))

(declare-fun m!4744399 () Bool)

(assert (=> b!4148562 m!4744399))

(declare-fun m!4744401 () Bool)

(assert (=> b!4148564 m!4744401))

(declare-fun m!4744403 () Bool)

(assert (=> b!4148565 m!4744403))

(check-sat (not b!4148553) (not b!4148565) (not b_next!119189) (not b_next!119191) (not b!4148573) (not b!4148561) (not b_next!119193) b_and!322601 (not b!4148555) (not b!4148572) (not b_next!119187) (not b!4148566) (not b!4148563) (not b!4148564) b_and!322603 b_and!322597 b_and!322595 b_and!322599 (not b!4148570) (not b!4148569) (not b!4148558) b_and!322593 (not b!4148567) (not b!4148557) tp_is_empty!21565 (not b!4148575) (not b_next!119195) (not b!4148554) (not b_next!119197) (not b!4148568) (not b!4148560) (not b!4148562) (not b!4148571) (not b!4148559))
(check-sat (not b_next!119189) (not b_next!119191) b_and!322593 (not b_next!119193) b_and!322601 (not b_next!119187) (not b_next!119195) (not b_next!119197) b_and!322603 b_and!322597 b_and!322595 b_and!322599)
(get-model)

(declare-fun d!1227415 () Bool)

(declare-fun lt!1479671 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!6969 (List!45176) (InoxSet Rule!14632))

(assert (=> d!1227415 (= lt!1479671 (select (content!6969 rules!3756) r!4008))))

(declare-fun e!2574047 () Bool)

(assert (=> d!1227415 (= lt!1479671 e!2574047)))

(declare-fun res!1698426 () Bool)

(assert (=> d!1227415 (=> (not res!1698426) (not e!2574047))))

(assert (=> d!1227415 (= res!1698426 ((_ is Cons!45052) rules!3756))))

(assert (=> d!1227415 (= (contains!9098 rules!3756 r!4008) lt!1479671)))

(declare-fun b!4148581 () Bool)

(declare-fun e!2574048 () Bool)

(assert (=> b!4148581 (= e!2574047 e!2574048)))

(declare-fun res!1698425 () Bool)

(assert (=> b!4148581 (=> res!1698425 e!2574048)))

(assert (=> b!4148581 (= res!1698425 (= (h!50472 rules!3756) r!4008))))

(declare-fun b!4148582 () Bool)

(assert (=> b!4148582 (= e!2574048 (contains!9098 (t!342983 rules!3756) r!4008))))

(assert (= (and d!1227415 res!1698426) b!4148581))

(assert (= (and b!4148581 (not res!1698425)) b!4148582))

(declare-fun m!4744405 () Bool)

(assert (=> d!1227415 m!4744405))

(declare-fun m!4744407 () Bool)

(assert (=> d!1227415 m!4744407))

(assert (=> b!4148582 m!4744363))

(assert (=> b!4148560 d!1227415))

(declare-fun d!1227419 () Bool)

(declare-fun lt!1479672 () Bool)

(assert (=> d!1227419 (= lt!1479672 (select (content!6969 (t!342983 rules!3756)) rBis!149))))

(declare-fun e!2574049 () Bool)

(assert (=> d!1227419 (= lt!1479672 e!2574049)))

(declare-fun res!1698428 () Bool)

(assert (=> d!1227419 (=> (not res!1698428) (not e!2574049))))

(assert (=> d!1227419 (= res!1698428 ((_ is Cons!45052) (t!342983 rules!3756)))))

(assert (=> d!1227419 (= (contains!9098 (t!342983 rules!3756) rBis!149) lt!1479672)))

(declare-fun b!4148583 () Bool)

(declare-fun e!2574050 () Bool)

(assert (=> b!4148583 (= e!2574049 e!2574050)))

(declare-fun res!1698427 () Bool)

(assert (=> b!4148583 (=> res!1698427 e!2574050)))

(assert (=> b!4148583 (= res!1698427 (= (h!50472 (t!342983 rules!3756)) rBis!149))))

(declare-fun b!4148584 () Bool)

(assert (=> b!4148584 (= e!2574050 (contains!9098 (t!342983 (t!342983 rules!3756)) rBis!149))))

(assert (= (and d!1227419 res!1698428) b!4148583))

(assert (= (and b!4148583 (not res!1698427)) b!4148584))

(declare-fun m!4744409 () Bool)

(assert (=> d!1227419 m!4744409))

(declare-fun m!4744411 () Bool)

(assert (=> d!1227419 m!4744411))

(declare-fun m!4744413 () Bool)

(assert (=> b!4148584 m!4744413))

(assert (=> b!4148571 d!1227419))

(declare-fun d!1227421 () Bool)

(assert (=> d!1227421 (= (inv!59657 (tag!8276 (h!50472 rules!3756))) (= (mod (str.len (value!231909 (tag!8276 (h!50472 rules!3756)))) 2) 0))))

(assert (=> b!4148572 d!1227421))

(declare-fun d!1227423 () Bool)

(declare-fun res!1698437 () Bool)

(declare-fun e!2574059 () Bool)

(assert (=> d!1227423 (=> (not res!1698437) (not e!2574059))))

(declare-fun semiInverseModEq!3207 (Int Int) Bool)

(assert (=> d!1227423 (= res!1698437 (semiInverseModEq!3207 (toChars!9939 (transformation!7416 (h!50472 rules!3756))) (toValue!10080 (transformation!7416 (h!50472 rules!3756)))))))

(assert (=> d!1227423 (= (inv!59659 (transformation!7416 (h!50472 rules!3756))) e!2574059)))

(declare-fun b!4148593 () Bool)

(declare-fun equivClasses!3106 (Int Int) Bool)

(assert (=> b!4148593 (= e!2574059 (equivClasses!3106 (toChars!9939 (transformation!7416 (h!50472 rules!3756))) (toValue!10080 (transformation!7416 (h!50472 rules!3756)))))))

(assert (= (and d!1227423 res!1698437) b!4148593))

(declare-fun m!4744421 () Bool)

(assert (=> d!1227423 m!4744421))

(declare-fun m!4744423 () Bool)

(assert (=> b!4148593 m!4744423))

(assert (=> b!4148572 d!1227423))

(declare-fun d!1227427 () Bool)

(assert (=> d!1227427 (= (isEmpty!26893 p!2912) ((_ is Nil!45051) p!2912))))

(assert (=> b!4148562 d!1227427))

(declare-fun d!1227429 () Bool)

(declare-fun res!1698442 () Bool)

(declare-fun e!2574073 () Bool)

(assert (=> d!1227429 (=> res!1698442 e!2574073)))

(assert (=> d!1227429 (= res!1698442 ((_ is Nil!45052) rules!3756))))

(assert (=> d!1227429 (= (noDuplicateTag!3003 thiss!25645 rules!3756 (noDuplicateTag$default$2!18 thiss!25645)) e!2574073)))

(declare-fun b!4148614 () Bool)

(declare-fun e!2574074 () Bool)

(assert (=> b!4148614 (= e!2574073 e!2574074)))

(declare-fun res!1698443 () Bool)

(assert (=> b!4148614 (=> (not res!1698443) (not e!2574074))))

(declare-fun contains!9099 (List!45177 String!51980) Bool)

(assert (=> b!4148614 (= res!1698443 (not (contains!9099 (noDuplicateTag$default$2!18 thiss!25645) (tag!8276 (h!50472 rules!3756)))))))

(declare-fun b!4148615 () Bool)

(assert (=> b!4148615 (= e!2574074 (noDuplicateTag!3003 thiss!25645 (t!342983 rules!3756) (Cons!45053 (tag!8276 (h!50472 rules!3756)) (noDuplicateTag$default$2!18 thiss!25645))))))

(assert (= (and d!1227429 (not res!1698442)) b!4148614))

(assert (= (and b!4148614 res!1698443) b!4148615))

(assert (=> b!4148614 m!4744381))

(declare-fun m!4744429 () Bool)

(assert (=> b!4148614 m!4744429))

(declare-fun m!4744431 () Bool)

(assert (=> b!4148615 m!4744431))

(assert (=> b!4148563 d!1227429))

(declare-fun d!1227435 () Bool)

(assert (=> d!1227435 (= (noDuplicateTag$default$2!18 thiss!25645) Nil!45053)))

(assert (=> b!4148563 d!1227435))

(declare-fun d!1227437 () Bool)

(declare-fun lt!1479682 () Bool)

(assert (=> d!1227437 (= lt!1479682 (select (content!6969 rules!3756) rBis!149))))

(declare-fun e!2574075 () Bool)

(assert (=> d!1227437 (= lt!1479682 e!2574075)))

(declare-fun res!1698445 () Bool)

(assert (=> d!1227437 (=> (not res!1698445) (not e!2574075))))

(assert (=> d!1227437 (= res!1698445 ((_ is Cons!45052) rules!3756))))

(assert (=> d!1227437 (= (contains!9098 rules!3756 rBis!149) lt!1479682)))

(declare-fun b!4148616 () Bool)

(declare-fun e!2574076 () Bool)

(assert (=> b!4148616 (= e!2574075 e!2574076)))

(declare-fun res!1698444 () Bool)

(assert (=> b!4148616 (=> res!1698444 e!2574076)))

(assert (=> b!4148616 (= res!1698444 (= (h!50472 rules!3756) rBis!149))))

(declare-fun b!4148617 () Bool)

(assert (=> b!4148617 (= e!2574076 (contains!9098 (t!342983 rules!3756) rBis!149))))

(assert (= (and d!1227437 res!1698445) b!4148616))

(assert (= (and b!4148616 (not res!1698444)) b!4148617))

(assert (=> d!1227437 m!4744405))

(declare-fun m!4744433 () Bool)

(assert (=> d!1227437 m!4744433))

(assert (=> b!4148617 m!4744365))

(assert (=> b!4148553 d!1227437))

(declare-fun b!4148673 () Bool)

(declare-fun e!2574118 () Bool)

(declare-fun e!2574114 () Bool)

(assert (=> b!4148673 (= e!2574118 e!2574114)))

(declare-fun c!710674 () Bool)

(assert (=> b!4148673 (= c!710674 ((_ is EmptyLang!12321) (regex!7416 r!4008)))))

(declare-fun b!4148674 () Bool)

(declare-fun lt!1479693 () Bool)

(assert (=> b!4148674 (= e!2574114 (not lt!1479693))))

(declare-fun b!4148675 () Bool)

(declare-fun e!2574117 () Bool)

(declare-fun derivativeStep!3736 (Regex!12321 C!24828) Regex!12321)

(declare-fun head!8756 (List!45175) C!24828)

(declare-fun tail!6597 (List!45175) List!45175)

(assert (=> b!4148675 (= e!2574117 (matchR!6150 (derivativeStep!3736 (regex!7416 r!4008) (head!8756 p!2912)) (tail!6597 p!2912)))))

(declare-fun b!4148676 () Bool)

(declare-fun call!290685 () Bool)

(assert (=> b!4148676 (= e!2574118 (= lt!1479693 call!290685))))

(declare-fun d!1227439 () Bool)

(assert (=> d!1227439 e!2574118))

(declare-fun c!710672 () Bool)

(assert (=> d!1227439 (= c!710672 ((_ is EmptyExpr!12321) (regex!7416 r!4008)))))

(assert (=> d!1227439 (= lt!1479693 e!2574117)))

(declare-fun c!710673 () Bool)

(assert (=> d!1227439 (= c!710673 (isEmpty!26893 p!2912))))

(declare-fun validRegex!5553 (Regex!12321) Bool)

(assert (=> d!1227439 (validRegex!5553 (regex!7416 r!4008))))

(assert (=> d!1227439 (= (matchR!6150 (regex!7416 r!4008) p!2912) lt!1479693)))

(declare-fun b!4148677 () Bool)

(declare-fun res!1698489 () Bool)

(declare-fun e!2574116 () Bool)

(assert (=> b!4148677 (=> res!1698489 e!2574116)))

(assert (=> b!4148677 (= res!1698489 (not (isEmpty!26893 (tail!6597 p!2912))))))

(declare-fun b!4148678 () Bool)

(declare-fun nullable!4343 (Regex!12321) Bool)

(assert (=> b!4148678 (= e!2574117 (nullable!4343 (regex!7416 r!4008)))))

(declare-fun b!4148679 () Bool)

(declare-fun e!2574115 () Bool)

(assert (=> b!4148679 (= e!2574115 (= (head!8756 p!2912) (c!710657 (regex!7416 r!4008))))))

(declare-fun b!4148680 () Bool)

(declare-fun res!1698492 () Bool)

(assert (=> b!4148680 (=> (not res!1698492) (not e!2574115))))

(assert (=> b!4148680 (= res!1698492 (isEmpty!26893 (tail!6597 p!2912)))))

(declare-fun b!4148681 () Bool)

(declare-fun res!1698490 () Bool)

(declare-fun e!2574113 () Bool)

(assert (=> b!4148681 (=> res!1698490 e!2574113)))

(assert (=> b!4148681 (= res!1698490 (not ((_ is ElementMatch!12321) (regex!7416 r!4008))))))

(assert (=> b!4148681 (= e!2574114 e!2574113)))

(declare-fun b!4148682 () Bool)

(assert (=> b!4148682 (= e!2574116 (not (= (head!8756 p!2912) (c!710657 (regex!7416 r!4008)))))))

(declare-fun b!4148683 () Bool)

(declare-fun res!1698493 () Bool)

(assert (=> b!4148683 (=> res!1698493 e!2574113)))

(assert (=> b!4148683 (= res!1698493 e!2574115)))

(declare-fun res!1698495 () Bool)

(assert (=> b!4148683 (=> (not res!1698495) (not e!2574115))))

(assert (=> b!4148683 (= res!1698495 lt!1479693)))

(declare-fun b!4148684 () Bool)

(declare-fun res!1698491 () Bool)

(assert (=> b!4148684 (=> (not res!1698491) (not e!2574115))))

(assert (=> b!4148684 (= res!1698491 (not call!290685))))

(declare-fun bm!290680 () Bool)

(assert (=> bm!290680 (= call!290685 (isEmpty!26893 p!2912))))

(declare-fun b!4148685 () Bool)

(declare-fun e!2574112 () Bool)

(assert (=> b!4148685 (= e!2574113 e!2574112)))

(declare-fun res!1698494 () Bool)

(assert (=> b!4148685 (=> (not res!1698494) (not e!2574112))))

(assert (=> b!4148685 (= res!1698494 (not lt!1479693))))

(declare-fun b!4148686 () Bool)

(assert (=> b!4148686 (= e!2574112 e!2574116)))

(declare-fun res!1698496 () Bool)

(assert (=> b!4148686 (=> res!1698496 e!2574116)))

(assert (=> b!4148686 (= res!1698496 call!290685)))

(assert (= (and d!1227439 c!710673) b!4148678))

(assert (= (and d!1227439 (not c!710673)) b!4148675))

(assert (= (and d!1227439 c!710672) b!4148676))

(assert (= (and d!1227439 (not c!710672)) b!4148673))

(assert (= (and b!4148673 c!710674) b!4148674))

(assert (= (and b!4148673 (not c!710674)) b!4148681))

(assert (= (and b!4148681 (not res!1698490)) b!4148683))

(assert (= (and b!4148683 res!1698495) b!4148684))

(assert (= (and b!4148684 res!1698491) b!4148680))

(assert (= (and b!4148680 res!1698492) b!4148679))

(assert (= (and b!4148683 (not res!1698493)) b!4148685))

(assert (= (and b!4148685 res!1698494) b!4148686))

(assert (= (and b!4148686 (not res!1698496)) b!4148677))

(assert (= (and b!4148677 (not res!1698489)) b!4148682))

(assert (= (or b!4148676 b!4148684 b!4148686) bm!290680))

(assert (=> d!1227439 m!4744399))

(declare-fun m!4744473 () Bool)

(assert (=> d!1227439 m!4744473))

(assert (=> bm!290680 m!4744399))

(declare-fun m!4744475 () Bool)

(assert (=> b!4148677 m!4744475))

(assert (=> b!4148677 m!4744475))

(declare-fun m!4744477 () Bool)

(assert (=> b!4148677 m!4744477))

(assert (=> b!4148680 m!4744475))

(assert (=> b!4148680 m!4744475))

(assert (=> b!4148680 m!4744477))

(declare-fun m!4744479 () Bool)

(assert (=> b!4148678 m!4744479))

(declare-fun m!4744481 () Bool)

(assert (=> b!4148682 m!4744481))

(assert (=> b!4148679 m!4744481))

(assert (=> b!4148675 m!4744481))

(assert (=> b!4148675 m!4744481))

(declare-fun m!4744483 () Bool)

(assert (=> b!4148675 m!4744483))

(assert (=> b!4148675 m!4744475))

(assert (=> b!4148675 m!4744483))

(assert (=> b!4148675 m!4744475))

(declare-fun m!4744489 () Bool)

(assert (=> b!4148675 m!4744489))

(assert (=> b!4148564 d!1227439))

(declare-fun b!4148703 () Bool)

(declare-fun e!2574130 () Bool)

(assert (=> b!4148703 (= e!2574130 (>= (size!33398 input!3238) (size!33398 p!2912)))))

(declare-fun d!1227465 () Bool)

(assert (=> d!1227465 e!2574130))

(declare-fun res!1698510 () Bool)

(assert (=> d!1227465 (=> res!1698510 e!2574130)))

(declare-fun lt!1479697 () Bool)

(assert (=> d!1227465 (= res!1698510 (not lt!1479697))))

(declare-fun e!2574132 () Bool)

(assert (=> d!1227465 (= lt!1479697 e!2574132)))

(declare-fun res!1698512 () Bool)

(assert (=> d!1227465 (=> res!1698512 e!2574132)))

(assert (=> d!1227465 (= res!1698512 ((_ is Nil!45051) p!2912))))

(assert (=> d!1227465 (= (isPrefix!4351 p!2912 input!3238) lt!1479697)))

(declare-fun b!4148700 () Bool)

(declare-fun e!2574131 () Bool)

(assert (=> b!4148700 (= e!2574132 e!2574131)))

(declare-fun res!1698513 () Bool)

(assert (=> b!4148700 (=> (not res!1698513) (not e!2574131))))

(assert (=> b!4148700 (= res!1698513 (not ((_ is Nil!45051) input!3238)))))

(declare-fun b!4148701 () Bool)

(declare-fun res!1698511 () Bool)

(assert (=> b!4148701 (=> (not res!1698511) (not e!2574131))))

(assert (=> b!4148701 (= res!1698511 (= (head!8756 p!2912) (head!8756 input!3238)))))

(declare-fun b!4148702 () Bool)

(assert (=> b!4148702 (= e!2574131 (isPrefix!4351 (tail!6597 p!2912) (tail!6597 input!3238)))))

(assert (= (and d!1227465 (not res!1698512)) b!4148700))

(assert (= (and b!4148700 res!1698513) b!4148701))

(assert (= (and b!4148701 res!1698511) b!4148702))

(assert (= (and d!1227465 (not res!1698510)) b!4148703))

(declare-fun m!4744491 () Bool)

(assert (=> b!4148703 m!4744491))

(assert (=> b!4148703 m!4744359))

(assert (=> b!4148701 m!4744481))

(declare-fun m!4744493 () Bool)

(assert (=> b!4148701 m!4744493))

(assert (=> b!4148702 m!4744475))

(declare-fun m!4744495 () Bool)

(assert (=> b!4148702 m!4744495))

(assert (=> b!4148702 m!4744475))

(assert (=> b!4148702 m!4744495))

(declare-fun m!4744497 () Bool)

(assert (=> b!4148702 m!4744497))

(assert (=> b!4148575 d!1227465))

(declare-fun d!1227467 () Bool)

(declare-fun lt!1479700 () Int)

(assert (=> d!1227467 (>= lt!1479700 0)))

(declare-fun e!2574138 () Int)

(assert (=> d!1227467 (= lt!1479700 e!2574138)))

(declare-fun c!710680 () Bool)

(assert (=> d!1227467 (= c!710680 (and ((_ is Cons!45052) rules!3756) (= (h!50472 rules!3756) rBis!149)))))

(assert (=> d!1227467 (contains!9098 rules!3756 rBis!149)))

(assert (=> d!1227467 (= (getIndex!762 rules!3756 rBis!149) lt!1479700)))

(declare-fun b!4148712 () Bool)

(assert (=> b!4148712 (= e!2574138 0)))

(declare-fun b!4148713 () Bool)

(declare-fun e!2574139 () Int)

(assert (=> b!4148713 (= e!2574138 e!2574139)))

(declare-fun c!710679 () Bool)

(assert (=> b!4148713 (= c!710679 (and ((_ is Cons!45052) rules!3756) (not (= (h!50472 rules!3756) rBis!149))))))

(declare-fun b!4148715 () Bool)

(assert (=> b!4148715 (= e!2574139 (- 1))))

(declare-fun b!4148714 () Bool)

(assert (=> b!4148714 (= e!2574139 (+ 1 (getIndex!762 (t!342983 rules!3756) rBis!149)))))

(assert (= (and d!1227467 c!710680) b!4148712))

(assert (= (and d!1227467 (not c!710680)) b!4148713))

(assert (= (and b!4148713 c!710679) b!4148714))

(assert (= (and b!4148713 (not c!710679)) b!4148715))

(assert (=> d!1227467 m!4744347))

(declare-fun m!4744499 () Bool)

(assert (=> b!4148714 m!4744499))

(assert (=> b!4148554 d!1227467))

(declare-fun d!1227469 () Bool)

(declare-fun lt!1479701 () Int)

(assert (=> d!1227469 (>= lt!1479701 0)))

(declare-fun e!2574140 () Int)

(assert (=> d!1227469 (= lt!1479701 e!2574140)))

(declare-fun c!710682 () Bool)

(assert (=> d!1227469 (= c!710682 (and ((_ is Cons!45052) rules!3756) (= (h!50472 rules!3756) r!4008)))))

(assert (=> d!1227469 (contains!9098 rules!3756 r!4008)))

(assert (=> d!1227469 (= (getIndex!762 rules!3756 r!4008) lt!1479701)))

(declare-fun b!4148716 () Bool)

(assert (=> b!4148716 (= e!2574140 0)))

(declare-fun b!4148717 () Bool)

(declare-fun e!2574141 () Int)

(assert (=> b!4148717 (= e!2574140 e!2574141)))

(declare-fun c!710681 () Bool)

(assert (=> b!4148717 (= c!710681 (and ((_ is Cons!45052) rules!3756) (not (= (h!50472 rules!3756) r!4008))))))

(declare-fun b!4148719 () Bool)

(assert (=> b!4148719 (= e!2574141 (- 1))))

(declare-fun b!4148718 () Bool)

(assert (=> b!4148718 (= e!2574141 (+ 1 (getIndex!762 (t!342983 rules!3756) r!4008)))))

(assert (= (and d!1227469 c!710682) b!4148716))

(assert (= (and d!1227469 (not c!710682)) b!4148717))

(assert (= (and b!4148717 c!710681) b!4148718))

(assert (= (and b!4148717 (not c!710681)) b!4148719))

(assert (=> d!1227469 m!4744371))

(declare-fun m!4744501 () Bool)

(assert (=> b!4148718 m!4744501))

(assert (=> b!4148554 d!1227469))

(declare-fun d!1227471 () Bool)

(declare-fun res!1698518 () Bool)

(declare-fun e!2574144 () Bool)

(assert (=> d!1227471 (=> (not res!1698518) (not e!2574144))))

(assert (=> d!1227471 (= res!1698518 (validRegex!5553 (regex!7416 r!4008)))))

(assert (=> d!1227471 (= (ruleValid!3222 thiss!25645 r!4008) e!2574144)))

(declare-fun b!4148724 () Bool)

(declare-fun res!1698519 () Bool)

(assert (=> b!4148724 (=> (not res!1698519) (not e!2574144))))

(assert (=> b!4148724 (= res!1698519 (not (nullable!4343 (regex!7416 r!4008))))))

(declare-fun b!4148725 () Bool)

(assert (=> b!4148725 (= e!2574144 (not (= (tag!8276 r!4008) (String!51981 ""))))))

(assert (= (and d!1227471 res!1698518) b!4148724))

(assert (= (and b!4148724 res!1698519) b!4148725))

(assert (=> d!1227471 m!4744473))

(assert (=> b!4148724 m!4744479))

(assert (=> b!4148565 d!1227471))

(declare-fun d!1227473 () Bool)

(declare-fun res!1698522 () Bool)

(declare-fun e!2574147 () Bool)

(assert (=> d!1227473 (=> (not res!1698522) (not e!2574147))))

(declare-fun rulesValid!2920 (LexerInterface!7005 List!45176) Bool)

(assert (=> d!1227473 (= res!1698522 (rulesValid!2920 thiss!25645 rules!3756))))

(assert (=> d!1227473 (= (rulesInvariant!6302 thiss!25645 rules!3756) e!2574147)))

(declare-fun b!4148728 () Bool)

(assert (=> b!4148728 (= e!2574147 (noDuplicateTag!3003 thiss!25645 rules!3756 Nil!45053))))

(assert (= (and d!1227473 res!1698522) b!4148728))

(declare-fun m!4744503 () Bool)

(assert (=> d!1227473 m!4744503))

(declare-fun m!4744505 () Bool)

(assert (=> b!4148728 m!4744505))

(assert (=> b!4148555 d!1227473))

(declare-fun d!1227475 () Bool)

(declare-fun res!1698523 () Bool)

(declare-fun e!2574148 () Bool)

(assert (=> d!1227475 (=> (not res!1698523) (not e!2574148))))

(assert (=> d!1227475 (= res!1698523 (rulesValid!2920 thiss!25645 (t!342983 rules!3756)))))

(assert (=> d!1227475 (= (rulesInvariant!6302 thiss!25645 (t!342983 rules!3756)) e!2574148)))

(declare-fun b!4148729 () Bool)

(assert (=> b!4148729 (= e!2574148 (noDuplicateTag!3003 thiss!25645 (t!342983 rules!3756) Nil!45053))))

(assert (= (and d!1227475 res!1698523) b!4148729))

(declare-fun m!4744507 () Bool)

(assert (=> d!1227475 m!4744507))

(declare-fun m!4744509 () Bool)

(assert (=> b!4148729 m!4744509))

(assert (=> b!4148566 d!1227475))

(declare-fun d!1227477 () Bool)

(declare-fun lt!1479702 () Bool)

(assert (=> d!1227477 (= lt!1479702 (select (content!6969 rules!3756) (h!50472 rules!3756)))))

(declare-fun e!2574149 () Bool)

(assert (=> d!1227477 (= lt!1479702 e!2574149)))

(declare-fun res!1698525 () Bool)

(assert (=> d!1227477 (=> (not res!1698525) (not e!2574149))))

(assert (=> d!1227477 (= res!1698525 ((_ is Cons!45052) rules!3756))))

(assert (=> d!1227477 (= (contains!9098 rules!3756 (h!50472 rules!3756)) lt!1479702)))

(declare-fun b!4148730 () Bool)

(declare-fun e!2574150 () Bool)

(assert (=> b!4148730 (= e!2574149 e!2574150)))

(declare-fun res!1698524 () Bool)

(assert (=> b!4148730 (=> res!1698524 e!2574150)))

(assert (=> b!4148730 (= res!1698524 (= (h!50472 rules!3756) (h!50472 rules!3756)))))

(declare-fun b!4148731 () Bool)

(assert (=> b!4148731 (= e!2574150 (contains!9098 (t!342983 rules!3756) (h!50472 rules!3756)))))

(assert (= (and d!1227477 res!1698525) b!4148730))

(assert (= (and b!4148730 (not res!1698524)) b!4148731))

(assert (=> d!1227477 m!4744405))

(declare-fun m!4744511 () Bool)

(assert (=> d!1227477 m!4744511))

(declare-fun m!4744513 () Bool)

(assert (=> b!4148731 m!4744513))

(assert (=> b!4148566 d!1227477))

(declare-fun b!4148823 () Bool)

(declare-fun e!2574199 () Bool)

(declare-fun lt!1479752 () Option!9722)

(declare-fun get!14711 (Option!9722) tuple2!43414)

(assert (=> b!4148823 (= e!2574199 (= (size!33397 (_1!24841 (get!14711 lt!1479752))) (size!33398 (originalCharacters!7912 (_1!24841 (get!14711 lt!1479752))))))))

(declare-fun b!4148824 () Bool)

(declare-fun res!1698599 () Bool)

(assert (=> b!4148824 (=> (not res!1698599) (not e!2574199))))

(assert (=> b!4148824 (= res!1698599 (< (size!33398 (_2!24841 (get!14711 lt!1479752))) (size!33398 input!3238)))))

(declare-fun b!4148825 () Bool)

(declare-fun e!2574198 () Option!9722)

(assert (=> b!4148825 (= e!2574198 None!9721)))

(declare-fun b!4148826 () Bool)

(declare-fun e!2574197 () Bool)

(declare-datatypes ((tuple2!43418 0))(
  ( (tuple2!43419 (_1!24843 List!45175) (_2!24843 List!45175)) )
))
(declare-fun findLongestMatchInner!1547 (Regex!12321 List!45175 Int List!45175 List!45175 Int) tuple2!43418)

(assert (=> b!4148826 (= e!2574197 (matchR!6150 (regex!7416 (h!50472 rules!3756)) (_1!24843 (findLongestMatchInner!1547 (regex!7416 (h!50472 rules!3756)) Nil!45051 (size!33398 Nil!45051) input!3238 input!3238 (size!33398 input!3238)))))))

(declare-fun d!1227479 () Bool)

(declare-fun e!2574196 () Bool)

(assert (=> d!1227479 e!2574196))

(declare-fun res!1698597 () Bool)

(assert (=> d!1227479 (=> res!1698597 e!2574196)))

(declare-fun isEmpty!26895 (Option!9722) Bool)

(assert (=> d!1227479 (= res!1698597 (isEmpty!26895 lt!1479752))))

(assert (=> d!1227479 (= lt!1479752 e!2574198)))

(declare-fun c!710695 () Bool)

(declare-fun lt!1479754 () tuple2!43418)

(assert (=> d!1227479 (= c!710695 (isEmpty!26893 (_1!24843 lt!1479754)))))

(declare-fun findLongestMatch!1460 (Regex!12321 List!45175) tuple2!43418)

(assert (=> d!1227479 (= lt!1479754 (findLongestMatch!1460 (regex!7416 (h!50472 rules!3756)) input!3238))))

(assert (=> d!1227479 (ruleValid!3222 thiss!25645 (h!50472 rules!3756))))

(assert (=> d!1227479 (= (maxPrefixOneRule!3134 thiss!25645 (h!50472 rules!3756) input!3238) lt!1479752)))

(declare-fun b!4148827 () Bool)

(declare-fun res!1698598 () Bool)

(assert (=> b!4148827 (=> (not res!1698598) (not e!2574199))))

(assert (=> b!4148827 (= res!1698598 (= (rule!10546 (_1!24841 (get!14711 lt!1479752))) (h!50472 rules!3756)))))

(declare-fun b!4148828 () Bool)

(declare-fun res!1698595 () Bool)

(assert (=> b!4148828 (=> (not res!1698595) (not e!2574199))))

(declare-fun ++!11644 (List!45175 List!45175) List!45175)

(declare-fun list!16487 (BalanceConc!26848) List!45175)

(declare-fun charsOf!5007 (Token!13762) BalanceConc!26848)

(assert (=> b!4148828 (= res!1698595 (= (++!11644 (list!16487 (charsOf!5007 (_1!24841 (get!14711 lt!1479752)))) (_2!24841 (get!14711 lt!1479752))) input!3238))))

(declare-fun b!4148829 () Bool)

(declare-fun res!1698594 () Bool)

(assert (=> b!4148829 (=> (not res!1698594) (not e!2574199))))

(assert (=> b!4148829 (= res!1698594 (= (value!231910 (_1!24841 (get!14711 lt!1479752))) (apply!10489 (transformation!7416 (rule!10546 (_1!24841 (get!14711 lt!1479752)))) (seqFromList!5533 (originalCharacters!7912 (_1!24841 (get!14711 lt!1479752)))))))))

(declare-fun b!4148830 () Bool)

(declare-fun size!33400 (BalanceConc!26848) Int)

(assert (=> b!4148830 (= e!2574198 (Some!9721 (tuple2!43415 (Token!13763 (apply!10489 (transformation!7416 (h!50472 rules!3756)) (seqFromList!5533 (_1!24843 lt!1479754))) (h!50472 rules!3756) (size!33400 (seqFromList!5533 (_1!24843 lt!1479754))) (_1!24843 lt!1479754)) (_2!24843 lt!1479754))))))

(declare-fun lt!1479753 () Unit!64331)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!1520 (Regex!12321 List!45175) Unit!64331)

(assert (=> b!4148830 (= lt!1479753 (longestMatchIsAcceptedByMatchOrIsEmpty!1520 (regex!7416 (h!50472 rules!3756)) input!3238))))

(declare-fun res!1698593 () Bool)

(assert (=> b!4148830 (= res!1698593 (isEmpty!26893 (_1!24843 (findLongestMatchInner!1547 (regex!7416 (h!50472 rules!3756)) Nil!45051 (size!33398 Nil!45051) input!3238 input!3238 (size!33398 input!3238)))))))

(assert (=> b!4148830 (=> res!1698593 e!2574197)))

(assert (=> b!4148830 e!2574197))

(declare-fun lt!1479755 () Unit!64331)

(assert (=> b!4148830 (= lt!1479755 lt!1479753)))

(declare-fun lt!1479751 () Unit!64331)

(assert (=> b!4148830 (= lt!1479751 (lemmaSemiInverse!2274 (transformation!7416 (h!50472 rules!3756)) (seqFromList!5533 (_1!24843 lt!1479754))))))

(declare-fun b!4148831 () Bool)

(assert (=> b!4148831 (= e!2574196 e!2574199)))

(declare-fun res!1698596 () Bool)

(assert (=> b!4148831 (=> (not res!1698596) (not e!2574199))))

(assert (=> b!4148831 (= res!1698596 (matchR!6150 (regex!7416 (h!50472 rules!3756)) (list!16487 (charsOf!5007 (_1!24841 (get!14711 lt!1479752))))))))

(assert (= (and d!1227479 c!710695) b!4148825))

(assert (= (and d!1227479 (not c!710695)) b!4148830))

(assert (= (and b!4148830 (not res!1698593)) b!4148826))

(assert (= (and d!1227479 (not res!1698597)) b!4148831))

(assert (= (and b!4148831 res!1698596) b!4148828))

(assert (= (and b!4148828 res!1698595) b!4148824))

(assert (= (and b!4148824 res!1698599) b!4148827))

(assert (= (and b!4148827 res!1698598) b!4148829))

(assert (= (and b!4148829 res!1698594) b!4148823))

(declare-fun m!4744623 () Bool)

(assert (=> b!4148827 m!4744623))

(assert (=> b!4148823 m!4744623))

(declare-fun m!4744625 () Bool)

(assert (=> b!4148823 m!4744625))

(declare-fun m!4744627 () Bool)

(assert (=> b!4148826 m!4744627))

(assert (=> b!4148826 m!4744491))

(assert (=> b!4148826 m!4744627))

(assert (=> b!4148826 m!4744491))

(declare-fun m!4744629 () Bool)

(assert (=> b!4148826 m!4744629))

(declare-fun m!4744631 () Bool)

(assert (=> b!4148826 m!4744631))

(assert (=> b!4148829 m!4744623))

(declare-fun m!4744633 () Bool)

(assert (=> b!4148829 m!4744633))

(assert (=> b!4148829 m!4744633))

(declare-fun m!4744635 () Bool)

(assert (=> b!4148829 m!4744635))

(assert (=> b!4148830 m!4744627))

(declare-fun m!4744637 () Bool)

(assert (=> b!4148830 m!4744637))

(declare-fun m!4744639 () Bool)

(assert (=> b!4148830 m!4744639))

(declare-fun m!4744641 () Bool)

(assert (=> b!4148830 m!4744641))

(declare-fun m!4744643 () Bool)

(assert (=> b!4148830 m!4744643))

(assert (=> b!4148830 m!4744491))

(assert (=> b!4148830 m!4744637))

(declare-fun m!4744645 () Bool)

(assert (=> b!4148830 m!4744645))

(assert (=> b!4148830 m!4744637))

(declare-fun m!4744647 () Bool)

(assert (=> b!4148830 m!4744647))

(assert (=> b!4148830 m!4744627))

(assert (=> b!4148830 m!4744491))

(assert (=> b!4148830 m!4744629))

(assert (=> b!4148830 m!4744637))

(assert (=> b!4148824 m!4744623))

(declare-fun m!4744649 () Bool)

(assert (=> b!4148824 m!4744649))

(assert (=> b!4148824 m!4744491))

(assert (=> b!4148828 m!4744623))

(declare-fun m!4744651 () Bool)

(assert (=> b!4148828 m!4744651))

(assert (=> b!4148828 m!4744651))

(declare-fun m!4744653 () Bool)

(assert (=> b!4148828 m!4744653))

(assert (=> b!4148828 m!4744653))

(declare-fun m!4744655 () Bool)

(assert (=> b!4148828 m!4744655))

(declare-fun m!4744657 () Bool)

(assert (=> d!1227479 m!4744657))

(declare-fun m!4744659 () Bool)

(assert (=> d!1227479 m!4744659))

(declare-fun m!4744661 () Bool)

(assert (=> d!1227479 m!4744661))

(declare-fun m!4744663 () Bool)

(assert (=> d!1227479 m!4744663))

(assert (=> b!4148831 m!4744623))

(assert (=> b!4148831 m!4744651))

(assert (=> b!4148831 m!4744651))

(assert (=> b!4148831 m!4744653))

(assert (=> b!4148831 m!4744653))

(declare-fun m!4744665 () Bool)

(assert (=> b!4148831 m!4744665))

(assert (=> b!4148566 d!1227479))

(declare-fun d!1227509 () Bool)

(assert (=> d!1227509 (rulesInvariant!6302 thiss!25645 (t!342983 rules!3756))))

(declare-fun lt!1479758 () Unit!64331)

(declare-fun choose!25403 (LexerInterface!7005 Rule!14632 List!45176) Unit!64331)

(assert (=> d!1227509 (= lt!1479758 (choose!25403 thiss!25645 (h!50472 rules!3756) (t!342983 rules!3756)))))

(assert (=> d!1227509 (rulesInvariant!6302 thiss!25645 (Cons!45052 (h!50472 rules!3756) (t!342983 rules!3756)))))

(assert (=> d!1227509 (= (lemmaInvariantOnRulesThenOnTail!828 thiss!25645 (h!50472 rules!3756) (t!342983 rules!3756)) lt!1479758)))

(declare-fun bs!595401 () Bool)

(assert (= bs!595401 d!1227509))

(assert (=> bs!595401 m!4744343))

(declare-fun m!4744667 () Bool)

(assert (=> bs!595401 m!4744667))

(declare-fun m!4744669 () Bool)

(assert (=> bs!595401 m!4744669))

(assert (=> b!4148566 d!1227509))

(declare-fun b!4148850 () Bool)

(declare-fun res!1698618 () Bool)

(declare-fun e!2574207 () Bool)

(assert (=> b!4148850 (=> (not res!1698618) (not e!2574207))))

(declare-fun lt!1479773 () Option!9722)

(assert (=> b!4148850 (= res!1698618 (= (value!231910 (_1!24841 (get!14711 lt!1479773))) (apply!10489 (transformation!7416 (rule!10546 (_1!24841 (get!14711 lt!1479773)))) (seqFromList!5533 (originalCharacters!7912 (_1!24841 (get!14711 lt!1479773)))))))))

(declare-fun b!4148851 () Bool)

(declare-fun res!1698614 () Bool)

(assert (=> b!4148851 (=> (not res!1698614) (not e!2574207))))

(assert (=> b!4148851 (= res!1698614 (matchR!6150 (regex!7416 (rule!10546 (_1!24841 (get!14711 lt!1479773)))) (list!16487 (charsOf!5007 (_1!24841 (get!14711 lt!1479773))))))))

(declare-fun b!4148852 () Bool)

(declare-fun e!2574206 () Bool)

(assert (=> b!4148852 (= e!2574206 e!2574207)))

(declare-fun res!1698615 () Bool)

(assert (=> b!4148852 (=> (not res!1698615) (not e!2574207))))

(declare-fun isDefined!7298 (Option!9722) Bool)

(assert (=> b!4148852 (= res!1698615 (isDefined!7298 lt!1479773))))

(declare-fun b!4148853 () Bool)

(declare-fun res!1698619 () Bool)

(assert (=> b!4148853 (=> (not res!1698619) (not e!2574207))))

(assert (=> b!4148853 (= res!1698619 (< (size!33398 (_2!24841 (get!14711 lt!1479773))) (size!33398 input!3238)))))

(declare-fun b!4148854 () Bool)

(declare-fun res!1698617 () Bool)

(assert (=> b!4148854 (=> (not res!1698617) (not e!2574207))))

(assert (=> b!4148854 (= res!1698617 (= (list!16487 (charsOf!5007 (_1!24841 (get!14711 lt!1479773)))) (originalCharacters!7912 (_1!24841 (get!14711 lt!1479773)))))))

(declare-fun b!4148855 () Bool)

(declare-fun res!1698616 () Bool)

(assert (=> b!4148855 (=> (not res!1698616) (not e!2574207))))

(assert (=> b!4148855 (= res!1698616 (= (++!11644 (list!16487 (charsOf!5007 (_1!24841 (get!14711 lt!1479773)))) (_2!24841 (get!14711 lt!1479773))) input!3238))))

(declare-fun b!4148856 () Bool)

(assert (=> b!4148856 (= e!2574207 (contains!9098 (t!342983 rules!3756) (rule!10546 (_1!24841 (get!14711 lt!1479773)))))))

(declare-fun b!4148857 () Bool)

(declare-fun e!2574208 () Option!9722)

(declare-fun lt!1479770 () Option!9722)

(declare-fun lt!1479772 () Option!9722)

(assert (=> b!4148857 (= e!2574208 (ite (and ((_ is None!9721) lt!1479770) ((_ is None!9721) lt!1479772)) None!9721 (ite ((_ is None!9721) lt!1479772) lt!1479770 (ite ((_ is None!9721) lt!1479770) lt!1479772 (ite (>= (size!33397 (_1!24841 (v!40379 lt!1479770))) (size!33397 (_1!24841 (v!40379 lt!1479772)))) lt!1479770 lt!1479772)))))))

(declare-fun call!290691 () Option!9722)

(assert (=> b!4148857 (= lt!1479770 call!290691)))

(assert (=> b!4148857 (= lt!1479772 (maxPrefix!4195 thiss!25645 (t!342983 (t!342983 rules!3756)) input!3238))))

(declare-fun d!1227511 () Bool)

(assert (=> d!1227511 e!2574206))

(declare-fun res!1698620 () Bool)

(assert (=> d!1227511 (=> res!1698620 e!2574206)))

(assert (=> d!1227511 (= res!1698620 (isEmpty!26895 lt!1479773))))

(assert (=> d!1227511 (= lt!1479773 e!2574208)))

(declare-fun c!710698 () Bool)

(assert (=> d!1227511 (= c!710698 (and ((_ is Cons!45052) (t!342983 rules!3756)) ((_ is Nil!45052) (t!342983 (t!342983 rules!3756)))))))

(declare-fun lt!1479769 () Unit!64331)

(declare-fun lt!1479771 () Unit!64331)

(assert (=> d!1227511 (= lt!1479769 lt!1479771)))

(assert (=> d!1227511 (isPrefix!4351 input!3238 input!3238)))

(declare-fun lemmaIsPrefixRefl!2806 (List!45175 List!45175) Unit!64331)

(assert (=> d!1227511 (= lt!1479771 (lemmaIsPrefixRefl!2806 input!3238 input!3238))))

(declare-fun rulesValidInductive!2758 (LexerInterface!7005 List!45176) Bool)

(assert (=> d!1227511 (rulesValidInductive!2758 thiss!25645 (t!342983 rules!3756))))

(assert (=> d!1227511 (= (maxPrefix!4195 thiss!25645 (t!342983 rules!3756) input!3238) lt!1479773)))

(declare-fun b!4148858 () Bool)

(assert (=> b!4148858 (= e!2574208 call!290691)))

(declare-fun bm!290686 () Bool)

(assert (=> bm!290686 (= call!290691 (maxPrefixOneRule!3134 thiss!25645 (h!50472 (t!342983 rules!3756)) input!3238))))

(assert (= (and d!1227511 c!710698) b!4148858))

(assert (= (and d!1227511 (not c!710698)) b!4148857))

(assert (= (or b!4148858 b!4148857) bm!290686))

(assert (= (and d!1227511 (not res!1698620)) b!4148852))

(assert (= (and b!4148852 res!1698615) b!4148854))

(assert (= (and b!4148854 res!1698617) b!4148853))

(assert (= (and b!4148853 res!1698619) b!4148855))

(assert (= (and b!4148855 res!1698616) b!4148850))

(assert (= (and b!4148850 res!1698618) b!4148851))

(assert (= (and b!4148851 res!1698614) b!4148856))

(declare-fun m!4744671 () Bool)

(assert (=> b!4148856 m!4744671))

(declare-fun m!4744673 () Bool)

(assert (=> b!4148856 m!4744673))

(declare-fun m!4744675 () Bool)

(assert (=> b!4148857 m!4744675))

(declare-fun m!4744677 () Bool)

(assert (=> bm!290686 m!4744677))

(assert (=> b!4148854 m!4744671))

(declare-fun m!4744679 () Bool)

(assert (=> b!4148854 m!4744679))

(assert (=> b!4148854 m!4744679))

(declare-fun m!4744681 () Bool)

(assert (=> b!4148854 m!4744681))

(assert (=> b!4148855 m!4744671))

(assert (=> b!4148855 m!4744679))

(assert (=> b!4148855 m!4744679))

(assert (=> b!4148855 m!4744681))

(assert (=> b!4148855 m!4744681))

(declare-fun m!4744683 () Bool)

(assert (=> b!4148855 m!4744683))

(assert (=> b!4148853 m!4744671))

(declare-fun m!4744685 () Bool)

(assert (=> b!4148853 m!4744685))

(assert (=> b!4148853 m!4744491))

(declare-fun m!4744687 () Bool)

(assert (=> b!4148852 m!4744687))

(declare-fun m!4744689 () Bool)

(assert (=> d!1227511 m!4744689))

(declare-fun m!4744691 () Bool)

(assert (=> d!1227511 m!4744691))

(declare-fun m!4744693 () Bool)

(assert (=> d!1227511 m!4744693))

(declare-fun m!4744695 () Bool)

(assert (=> d!1227511 m!4744695))

(assert (=> b!4148850 m!4744671))

(declare-fun m!4744697 () Bool)

(assert (=> b!4148850 m!4744697))

(assert (=> b!4148850 m!4744697))

(declare-fun m!4744699 () Bool)

(assert (=> b!4148850 m!4744699))

(assert (=> b!4148851 m!4744671))

(assert (=> b!4148851 m!4744679))

(assert (=> b!4148851 m!4744679))

(assert (=> b!4148851 m!4744681))

(assert (=> b!4148851 m!4744681))

(declare-fun m!4744701 () Bool)

(assert (=> b!4148851 m!4744701))

(assert (=> b!4148566 d!1227511))

(declare-fun d!1227513 () Bool)

(declare-fun lt!1479774 () Bool)

(assert (=> d!1227513 (= lt!1479774 (select (content!6969 (t!342983 rules!3756)) r!4008))))

(declare-fun e!2574209 () Bool)

(assert (=> d!1227513 (= lt!1479774 e!2574209)))

(declare-fun res!1698622 () Bool)

(assert (=> d!1227513 (=> (not res!1698622) (not e!2574209))))

(assert (=> d!1227513 (= res!1698622 ((_ is Cons!45052) (t!342983 rules!3756)))))

(assert (=> d!1227513 (= (contains!9098 (t!342983 rules!3756) r!4008) lt!1479774)))

(declare-fun b!4148859 () Bool)

(declare-fun e!2574210 () Bool)

(assert (=> b!4148859 (= e!2574209 e!2574210)))

(declare-fun res!1698621 () Bool)

(assert (=> b!4148859 (=> res!1698621 e!2574210)))

(assert (=> b!4148859 (= res!1698621 (= (h!50472 (t!342983 rules!3756)) r!4008))))

(declare-fun b!4148860 () Bool)

(assert (=> b!4148860 (= e!2574210 (contains!9098 (t!342983 (t!342983 rules!3756)) r!4008))))

(assert (= (and d!1227513 res!1698622) b!4148859))

(assert (= (and b!4148859 (not res!1698621)) b!4148860))

(assert (=> d!1227513 m!4744409))

(declare-fun m!4744703 () Bool)

(assert (=> d!1227513 m!4744703))

(declare-fun m!4744705 () Bool)

(assert (=> b!4148860 m!4744705))

(assert (=> b!4148567 d!1227513))

(declare-fun d!1227515 () Bool)

(assert (=> d!1227515 (ruleValid!3222 thiss!25645 r!4008)))

(declare-fun lt!1479777 () Unit!64331)

(declare-fun choose!25404 (LexerInterface!7005 Rule!14632 List!45176) Unit!64331)

(assert (=> d!1227515 (= lt!1479777 (choose!25404 thiss!25645 r!4008 rules!3756))))

(assert (=> d!1227515 (contains!9098 rules!3756 r!4008)))

(assert (=> d!1227515 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2262 thiss!25645 r!4008 rules!3756) lt!1479777)))

(declare-fun bs!595402 () Bool)

(assert (= bs!595402 d!1227515))

(assert (=> bs!595402 m!4744403))

(declare-fun m!4744707 () Bool)

(assert (=> bs!595402 m!4744707))

(assert (=> bs!595402 m!4744371))

(assert (=> b!4148568 d!1227515))

(declare-fun d!1227517 () Bool)

(declare-fun res!1698623 () Bool)

(declare-fun e!2574211 () Bool)

(assert (=> d!1227517 (=> (not res!1698623) (not e!2574211))))

(assert (=> d!1227517 (= res!1698623 (validRegex!5553 (regex!7416 rBis!149)))))

(assert (=> d!1227517 (= (ruleValid!3222 thiss!25645 rBis!149) e!2574211)))

(declare-fun b!4148861 () Bool)

(declare-fun res!1698624 () Bool)

(assert (=> b!4148861 (=> (not res!1698624) (not e!2574211))))

(assert (=> b!4148861 (= res!1698624 (not (nullable!4343 (regex!7416 rBis!149))))))

(declare-fun b!4148862 () Bool)

(assert (=> b!4148862 (= e!2574211 (not (= (tag!8276 rBis!149) (String!51981 ""))))))

(assert (= (and d!1227517 res!1698623) b!4148861))

(assert (= (and b!4148861 res!1698624) b!4148862))

(declare-fun m!4744709 () Bool)

(assert (=> d!1227517 m!4744709))

(declare-fun m!4744711 () Bool)

(assert (=> b!4148861 m!4744711))

(assert (=> b!4148568 d!1227517))

(declare-fun d!1227519 () Bool)

(assert (=> d!1227519 (ruleValid!3222 thiss!25645 rBis!149)))

(declare-fun lt!1479778 () Unit!64331)

(assert (=> d!1227519 (= lt!1479778 (choose!25404 thiss!25645 rBis!149 rules!3756))))

(assert (=> d!1227519 (contains!9098 rules!3756 rBis!149)))

(assert (=> d!1227519 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2262 thiss!25645 rBis!149 rules!3756) lt!1479778)))

(declare-fun bs!595403 () Bool)

(assert (= bs!595403 d!1227519))

(assert (=> bs!595403 m!4744377))

(declare-fun m!4744713 () Bool)

(assert (=> bs!595403 m!4744713))

(assert (=> bs!595403 m!4744347))

(assert (=> b!4148568 d!1227519))

(declare-fun d!1227521 () Bool)

(declare-fun dynLambda!19413 (Int BalanceConc!26848) TokenValue!7646)

(assert (=> d!1227521 (= (apply!10489 (transformation!7416 r!4008) lt!1479664) (dynLambda!19413 (toValue!10080 (transformation!7416 r!4008)) lt!1479664))))

(declare-fun b_lambda!121993 () Bool)

(assert (=> (not b_lambda!121993) (not d!1227521)))

(declare-fun t!342992 () Bool)

(declare-fun tb!249033 () Bool)

(assert (=> (and b!4148576 (= (toValue!10080 (transformation!7416 (h!50472 rules!3756))) (toValue!10080 (transformation!7416 r!4008))) t!342992) tb!249033))

(declare-fun result!302912 () Bool)

(declare-fun inv!21 (TokenValue!7646) Bool)

(assert (=> tb!249033 (= result!302912 (inv!21 (dynLambda!19413 (toValue!10080 (transformation!7416 r!4008)) lt!1479664)))))

(declare-fun m!4744715 () Bool)

(assert (=> tb!249033 m!4744715))

(assert (=> d!1227521 t!342992))

(declare-fun b_and!322611 () Bool)

(assert (= b_and!322593 (and (=> t!342992 result!302912) b_and!322611)))

(declare-fun tb!249035 () Bool)

(declare-fun t!342994 () Bool)

(assert (=> (and b!4148574 (= (toValue!10080 (transformation!7416 rBis!149)) (toValue!10080 (transformation!7416 r!4008))) t!342994) tb!249035))

(declare-fun result!302916 () Bool)

(assert (= result!302916 result!302912))

(assert (=> d!1227521 t!342994))

(declare-fun b_and!322613 () Bool)

(assert (= b_and!322597 (and (=> t!342994 result!302916) b_and!322613)))

(declare-fun t!342996 () Bool)

(declare-fun tb!249037 () Bool)

(assert (=> (and b!4148556 (= (toValue!10080 (transformation!7416 r!4008)) (toValue!10080 (transformation!7416 r!4008))) t!342996) tb!249037))

(declare-fun result!302918 () Bool)

(assert (= result!302918 result!302912))

(assert (=> d!1227521 t!342996))

(declare-fun b_and!322615 () Bool)

(assert (= b_and!322601 (and (=> t!342996 result!302918) b_and!322615)))

(declare-fun m!4744717 () Bool)

(assert (=> d!1227521 m!4744717))

(assert (=> b!4148558 d!1227521))

(declare-fun d!1227523 () Bool)

(declare-fun lt!1479781 () List!45175)

(assert (=> d!1227523 (= (++!11644 p!2912 lt!1479781) input!3238)))

(declare-fun e!2574217 () List!45175)

(assert (=> d!1227523 (= lt!1479781 e!2574217)))

(declare-fun c!710701 () Bool)

(assert (=> d!1227523 (= c!710701 ((_ is Cons!45051) p!2912))))

(assert (=> d!1227523 (>= (size!33398 input!3238) (size!33398 p!2912))))

(assert (=> d!1227523 (= (getSuffix!2678 input!3238 p!2912) lt!1479781)))

(declare-fun b!4148869 () Bool)

(assert (=> b!4148869 (= e!2574217 (getSuffix!2678 (tail!6597 input!3238) (t!342982 p!2912)))))

(declare-fun b!4148870 () Bool)

(assert (=> b!4148870 (= e!2574217 input!3238)))

(assert (= (and d!1227523 c!710701) b!4148869))

(assert (= (and d!1227523 (not c!710701)) b!4148870))

(declare-fun m!4744719 () Bool)

(assert (=> d!1227523 m!4744719))

(assert (=> d!1227523 m!4744491))

(assert (=> d!1227523 m!4744359))

(assert (=> b!4148869 m!4744495))

(assert (=> b!4148869 m!4744495))

(declare-fun m!4744721 () Bool)

(assert (=> b!4148869 m!4744721))

(assert (=> b!4148558 d!1227523))

(declare-fun b!4148871 () Bool)

(declare-fun res!1698629 () Bool)

(declare-fun e!2574219 () Bool)

(assert (=> b!4148871 (=> (not res!1698629) (not e!2574219))))

(declare-fun lt!1479786 () Option!9722)

(assert (=> b!4148871 (= res!1698629 (= (value!231910 (_1!24841 (get!14711 lt!1479786))) (apply!10489 (transformation!7416 (rule!10546 (_1!24841 (get!14711 lt!1479786)))) (seqFromList!5533 (originalCharacters!7912 (_1!24841 (get!14711 lt!1479786)))))))))

(declare-fun b!4148872 () Bool)

(declare-fun res!1698625 () Bool)

(assert (=> b!4148872 (=> (not res!1698625) (not e!2574219))))

(assert (=> b!4148872 (= res!1698625 (matchR!6150 (regex!7416 (rule!10546 (_1!24841 (get!14711 lt!1479786)))) (list!16487 (charsOf!5007 (_1!24841 (get!14711 lt!1479786))))))))

(declare-fun b!4148873 () Bool)

(declare-fun e!2574218 () Bool)

(assert (=> b!4148873 (= e!2574218 e!2574219)))

(declare-fun res!1698626 () Bool)

(assert (=> b!4148873 (=> (not res!1698626) (not e!2574219))))

(assert (=> b!4148873 (= res!1698626 (isDefined!7298 lt!1479786))))

(declare-fun b!4148874 () Bool)

(declare-fun res!1698630 () Bool)

(assert (=> b!4148874 (=> (not res!1698630) (not e!2574219))))

(assert (=> b!4148874 (= res!1698630 (< (size!33398 (_2!24841 (get!14711 lt!1479786))) (size!33398 input!3238)))))

(declare-fun b!4148875 () Bool)

(declare-fun res!1698628 () Bool)

(assert (=> b!4148875 (=> (not res!1698628) (not e!2574219))))

(assert (=> b!4148875 (= res!1698628 (= (list!16487 (charsOf!5007 (_1!24841 (get!14711 lt!1479786)))) (originalCharacters!7912 (_1!24841 (get!14711 lt!1479786)))))))

(declare-fun b!4148876 () Bool)

(declare-fun res!1698627 () Bool)

(assert (=> b!4148876 (=> (not res!1698627) (not e!2574219))))

(assert (=> b!4148876 (= res!1698627 (= (++!11644 (list!16487 (charsOf!5007 (_1!24841 (get!14711 lt!1479786)))) (_2!24841 (get!14711 lt!1479786))) input!3238))))

(declare-fun b!4148877 () Bool)

(assert (=> b!4148877 (= e!2574219 (contains!9098 rules!3756 (rule!10546 (_1!24841 (get!14711 lt!1479786)))))))

(declare-fun b!4148878 () Bool)

(declare-fun e!2574220 () Option!9722)

(declare-fun lt!1479783 () Option!9722)

(declare-fun lt!1479785 () Option!9722)

(assert (=> b!4148878 (= e!2574220 (ite (and ((_ is None!9721) lt!1479783) ((_ is None!9721) lt!1479785)) None!9721 (ite ((_ is None!9721) lt!1479785) lt!1479783 (ite ((_ is None!9721) lt!1479783) lt!1479785 (ite (>= (size!33397 (_1!24841 (v!40379 lt!1479783))) (size!33397 (_1!24841 (v!40379 lt!1479785)))) lt!1479783 lt!1479785)))))))

(declare-fun call!290692 () Option!9722)

(assert (=> b!4148878 (= lt!1479783 call!290692)))

(assert (=> b!4148878 (= lt!1479785 (maxPrefix!4195 thiss!25645 (t!342983 rules!3756) input!3238))))

(declare-fun d!1227525 () Bool)

(assert (=> d!1227525 e!2574218))

(declare-fun res!1698631 () Bool)

(assert (=> d!1227525 (=> res!1698631 e!2574218)))

(assert (=> d!1227525 (= res!1698631 (isEmpty!26895 lt!1479786))))

(assert (=> d!1227525 (= lt!1479786 e!2574220)))

(declare-fun c!710702 () Bool)

(assert (=> d!1227525 (= c!710702 (and ((_ is Cons!45052) rules!3756) ((_ is Nil!45052) (t!342983 rules!3756))))))

(declare-fun lt!1479782 () Unit!64331)

(declare-fun lt!1479784 () Unit!64331)

(assert (=> d!1227525 (= lt!1479782 lt!1479784)))

(assert (=> d!1227525 (isPrefix!4351 input!3238 input!3238)))

(assert (=> d!1227525 (= lt!1479784 (lemmaIsPrefixRefl!2806 input!3238 input!3238))))

(assert (=> d!1227525 (rulesValidInductive!2758 thiss!25645 rules!3756)))

(assert (=> d!1227525 (= (maxPrefix!4195 thiss!25645 rules!3756 input!3238) lt!1479786)))

(declare-fun b!4148879 () Bool)

(assert (=> b!4148879 (= e!2574220 call!290692)))

(declare-fun bm!290687 () Bool)

(assert (=> bm!290687 (= call!290692 (maxPrefixOneRule!3134 thiss!25645 (h!50472 rules!3756) input!3238))))

(assert (= (and d!1227525 c!710702) b!4148879))

(assert (= (and d!1227525 (not c!710702)) b!4148878))

(assert (= (or b!4148879 b!4148878) bm!290687))

(assert (= (and d!1227525 (not res!1698631)) b!4148873))

(assert (= (and b!4148873 res!1698626) b!4148875))

(assert (= (and b!4148875 res!1698628) b!4148874))

(assert (= (and b!4148874 res!1698630) b!4148876))

(assert (= (and b!4148876 res!1698627) b!4148871))

(assert (= (and b!4148871 res!1698629) b!4148872))

(assert (= (and b!4148872 res!1698625) b!4148877))

(declare-fun m!4744723 () Bool)

(assert (=> b!4148877 m!4744723))

(declare-fun m!4744725 () Bool)

(assert (=> b!4148877 m!4744725))

(assert (=> b!4148878 m!4744341))

(assert (=> bm!290687 m!4744337))

(assert (=> b!4148875 m!4744723))

(declare-fun m!4744727 () Bool)

(assert (=> b!4148875 m!4744727))

(assert (=> b!4148875 m!4744727))

(declare-fun m!4744729 () Bool)

(assert (=> b!4148875 m!4744729))

(assert (=> b!4148876 m!4744723))

(assert (=> b!4148876 m!4744727))

(assert (=> b!4148876 m!4744727))

(assert (=> b!4148876 m!4744729))

(assert (=> b!4148876 m!4744729))

(declare-fun m!4744731 () Bool)

(assert (=> b!4148876 m!4744731))

(assert (=> b!4148874 m!4744723))

(declare-fun m!4744733 () Bool)

(assert (=> b!4148874 m!4744733))

(assert (=> b!4148874 m!4744491))

(declare-fun m!4744735 () Bool)

(assert (=> b!4148873 m!4744735))

(declare-fun m!4744737 () Bool)

(assert (=> d!1227525 m!4744737))

(assert (=> d!1227525 m!4744691))

(assert (=> d!1227525 m!4744693))

(declare-fun m!4744739 () Bool)

(assert (=> d!1227525 m!4744739))

(assert (=> b!4148871 m!4744723))

(declare-fun m!4744741 () Bool)

(assert (=> b!4148871 m!4744741))

(assert (=> b!4148871 m!4744741))

(declare-fun m!4744743 () Bool)

(assert (=> b!4148871 m!4744743))

(assert (=> b!4148872 m!4744723))

(assert (=> b!4148872 m!4744727))

(assert (=> b!4148872 m!4744727))

(assert (=> b!4148872 m!4744729))

(assert (=> b!4148872 m!4744729))

(declare-fun m!4744745 () Bool)

(assert (=> b!4148872 m!4744745))

(assert (=> b!4148558 d!1227525))

(declare-fun d!1227527 () Bool)

(declare-fun fromListB!2539 (List!45175) BalanceConc!26848)

(assert (=> d!1227527 (= (seqFromList!5533 p!2912) (fromListB!2539 p!2912))))

(declare-fun bs!595404 () Bool)

(assert (= bs!595404 d!1227527))

(declare-fun m!4744747 () Bool)

(assert (=> bs!595404 m!4744747))

(assert (=> b!4148558 d!1227527))

(declare-fun b!4148990 () Bool)

(declare-fun e!2574277 () Bool)

(assert (=> b!4148990 (= e!2574277 true)))

(declare-fun d!1227529 () Bool)

(assert (=> d!1227529 e!2574277))

(assert (= d!1227529 b!4148990))

(declare-fun lambda!129009 () Int)

(declare-fun order!23885 () Int)

(declare-fun order!23887 () Int)

(declare-fun dynLambda!19414 (Int Int) Int)

(declare-fun dynLambda!19415 (Int Int) Int)

(assert (=> b!4148990 (< (dynLambda!19414 order!23885 (toValue!10080 (transformation!7416 r!4008))) (dynLambda!19415 order!23887 lambda!129009))))

(declare-fun order!23889 () Int)

(declare-fun dynLambda!19416 (Int Int) Int)

(assert (=> b!4148990 (< (dynLambda!19416 order!23889 (toChars!9939 (transformation!7416 r!4008))) (dynLambda!19415 order!23887 lambda!129009))))

(declare-fun dynLambda!19417 (Int TokenValue!7646) BalanceConc!26848)

(assert (=> d!1227529 (= (list!16487 (dynLambda!19417 (toChars!9939 (transformation!7416 r!4008)) (dynLambda!19413 (toValue!10080 (transformation!7416 r!4008)) lt!1479664))) (list!16487 lt!1479664))))

(declare-fun lt!1479801 () Unit!64331)

(declare-fun ForallOf!990 (Int BalanceConc!26848) Unit!64331)

(assert (=> d!1227529 (= lt!1479801 (ForallOf!990 lambda!129009 lt!1479664))))

(assert (=> d!1227529 (= (lemmaSemiInverse!2274 (transformation!7416 r!4008) lt!1479664) lt!1479801)))

(declare-fun b_lambda!122005 () Bool)

(assert (=> (not b_lambda!122005) (not d!1227529)))

(declare-fun tb!249049 () Bool)

(declare-fun t!343008 () Bool)

(assert (=> (and b!4148576 (= (toChars!9939 (transformation!7416 (h!50472 rules!3756))) (toChars!9939 (transformation!7416 r!4008))) t!343008) tb!249049))

(declare-fun tp!1264633 () Bool)

(declare-fun e!2574280 () Bool)

(declare-fun b!4148995 () Bool)

(declare-fun inv!59662 (Conc!13627) Bool)

(assert (=> b!4148995 (= e!2574280 (and (inv!59662 (c!710656 (dynLambda!19417 (toChars!9939 (transformation!7416 r!4008)) (dynLambda!19413 (toValue!10080 (transformation!7416 r!4008)) lt!1479664)))) tp!1264633))))

(declare-fun result!302938 () Bool)

(declare-fun inv!59663 (BalanceConc!26848) Bool)

(assert (=> tb!249049 (= result!302938 (and (inv!59663 (dynLambda!19417 (toChars!9939 (transformation!7416 r!4008)) (dynLambda!19413 (toValue!10080 (transformation!7416 r!4008)) lt!1479664))) e!2574280))))

(assert (= tb!249049 b!4148995))

(declare-fun m!4744799 () Bool)

(assert (=> b!4148995 m!4744799))

(declare-fun m!4744801 () Bool)

(assert (=> tb!249049 m!4744801))

(assert (=> d!1227529 t!343008))

(declare-fun b_and!322633 () Bool)

(assert (= b_and!322595 (and (=> t!343008 result!302938) b_and!322633)))

(declare-fun tb!249051 () Bool)

(declare-fun t!343010 () Bool)

(assert (=> (and b!4148574 (= (toChars!9939 (transformation!7416 rBis!149)) (toChars!9939 (transformation!7416 r!4008))) t!343010) tb!249051))

(declare-fun result!302942 () Bool)

(assert (= result!302942 result!302938))

(assert (=> d!1227529 t!343010))

(declare-fun b_and!322635 () Bool)

(assert (= b_and!322599 (and (=> t!343010 result!302942) b_and!322635)))

(declare-fun t!343012 () Bool)

(declare-fun tb!249053 () Bool)

(assert (=> (and b!4148556 (= (toChars!9939 (transformation!7416 r!4008)) (toChars!9939 (transformation!7416 r!4008))) t!343012) tb!249053))

(declare-fun result!302944 () Bool)

(assert (= result!302944 result!302938))

(assert (=> d!1227529 t!343012))

(declare-fun b_and!322637 () Bool)

(assert (= b_and!322603 (and (=> t!343012 result!302944) b_and!322637)))

(declare-fun b_lambda!122007 () Bool)

(assert (=> (not b_lambda!122007) (not d!1227529)))

(assert (=> d!1227529 t!342992))

(declare-fun b_and!322639 () Bool)

(assert (= b_and!322611 (and (=> t!342992 result!302912) b_and!322639)))

(assert (=> d!1227529 t!342994))

(declare-fun b_and!322641 () Bool)

(assert (= b_and!322613 (and (=> t!342994 result!302916) b_and!322641)))

(assert (=> d!1227529 t!342996))

(declare-fun b_and!322643 () Bool)

(assert (= b_and!322615 (and (=> t!342996 result!302918) b_and!322643)))

(assert (=> d!1227529 m!4744717))

(assert (=> d!1227529 m!4744717))

(declare-fun m!4744803 () Bool)

(assert (=> d!1227529 m!4744803))

(assert (=> d!1227529 m!4744803))

(declare-fun m!4744805 () Bool)

(assert (=> d!1227529 m!4744805))

(declare-fun m!4744807 () Bool)

(assert (=> d!1227529 m!4744807))

(declare-fun m!4744809 () Bool)

(assert (=> d!1227529 m!4744809))

(assert (=> b!4148558 d!1227529))

(declare-fun d!1227539 () Bool)

(declare-fun lt!1479804 () Int)

(assert (=> d!1227539 (>= lt!1479804 0)))

(declare-fun e!2574283 () Int)

(assert (=> d!1227539 (= lt!1479804 e!2574283)))

(declare-fun c!710719 () Bool)

(assert (=> d!1227539 (= c!710719 ((_ is Nil!45051) p!2912))))

(assert (=> d!1227539 (= (size!33398 p!2912) lt!1479804)))

(declare-fun b!4149000 () Bool)

(assert (=> b!4149000 (= e!2574283 0)))

(declare-fun b!4149001 () Bool)

(assert (=> b!4149001 (= e!2574283 (+ 1 (size!33398 (t!342982 p!2912))))))

(assert (= (and d!1227539 c!710719) b!4149000))

(assert (= (and d!1227539 (not c!710719)) b!4149001))

(declare-fun m!4744811 () Bool)

(assert (=> b!4149001 m!4744811))

(assert (=> b!4148558 d!1227539))

(declare-fun d!1227541 () Bool)

(assert (=> d!1227541 (= (inv!59657 (tag!8276 rBis!149)) (= (mod (str.len (value!231909 (tag!8276 rBis!149))) 2) 0))))

(assert (=> b!4148569 d!1227541))

(declare-fun d!1227543 () Bool)

(declare-fun res!1698663 () Bool)

(declare-fun e!2574284 () Bool)

(assert (=> d!1227543 (=> (not res!1698663) (not e!2574284))))

(assert (=> d!1227543 (= res!1698663 (semiInverseModEq!3207 (toChars!9939 (transformation!7416 rBis!149)) (toValue!10080 (transformation!7416 rBis!149))))))

(assert (=> d!1227543 (= (inv!59659 (transformation!7416 rBis!149)) e!2574284)))

(declare-fun b!4149002 () Bool)

(assert (=> b!4149002 (= e!2574284 (equivClasses!3106 (toChars!9939 (transformation!7416 rBis!149)) (toValue!10080 (transformation!7416 rBis!149))))))

(assert (= (and d!1227543 res!1698663) b!4149002))

(declare-fun m!4744813 () Bool)

(assert (=> d!1227543 m!4744813))

(declare-fun m!4744815 () Bool)

(assert (=> b!4149002 m!4744815))

(assert (=> b!4148569 d!1227543))

(declare-fun d!1227545 () Bool)

(assert (=> d!1227545 (= (isEmpty!26892 rules!3756) ((_ is Nil!45052) rules!3756))))

(assert (=> b!4148559 d!1227545))

(declare-fun d!1227547 () Bool)

(assert (=> d!1227547 (= (inv!59657 (tag!8276 r!4008)) (= (mod (str.len (value!231909 (tag!8276 r!4008))) 2) 0))))

(assert (=> b!4148570 d!1227547))

(declare-fun d!1227549 () Bool)

(declare-fun res!1698664 () Bool)

(declare-fun e!2574285 () Bool)

(assert (=> d!1227549 (=> (not res!1698664) (not e!2574285))))

(assert (=> d!1227549 (= res!1698664 (semiInverseModEq!3207 (toChars!9939 (transformation!7416 r!4008)) (toValue!10080 (transformation!7416 r!4008))))))

(assert (=> d!1227549 (= (inv!59659 (transformation!7416 r!4008)) e!2574285)))

(declare-fun b!4149003 () Bool)

(assert (=> b!4149003 (= e!2574285 (equivClasses!3106 (toChars!9939 (transformation!7416 r!4008)) (toValue!10080 (transformation!7416 r!4008))))))

(assert (= (and d!1227549 res!1698664) b!4149003))

(declare-fun m!4744817 () Bool)

(assert (=> d!1227549 m!4744817))

(declare-fun m!4744819 () Bool)

(assert (=> b!4149003 m!4744819))

(assert (=> b!4148570 d!1227549))

(declare-fun b!4149008 () Bool)

(declare-fun e!2574288 () Bool)

(declare-fun tp!1264636 () Bool)

(assert (=> b!4149008 (= e!2574288 (and tp_is_empty!21565 tp!1264636))))

(assert (=> b!4148561 (= tp!1264579 e!2574288)))

(assert (= (and b!4148561 ((_ is Cons!45051) (t!342982 p!2912))) b!4149008))

(declare-fun e!2574291 () Bool)

(assert (=> b!4148572 (= tp!1264580 e!2574291)))

(declare-fun b!4149020 () Bool)

(declare-fun tp!1264648 () Bool)

(declare-fun tp!1264650 () Bool)

(assert (=> b!4149020 (= e!2574291 (and tp!1264648 tp!1264650))))

(declare-fun b!4149019 () Bool)

(assert (=> b!4149019 (= e!2574291 tp_is_empty!21565)))

(declare-fun b!4149021 () Bool)

(declare-fun tp!1264651 () Bool)

(assert (=> b!4149021 (= e!2574291 tp!1264651)))

(declare-fun b!4149022 () Bool)

(declare-fun tp!1264649 () Bool)

(declare-fun tp!1264647 () Bool)

(assert (=> b!4149022 (= e!2574291 (and tp!1264649 tp!1264647))))

(assert (= (and b!4148572 ((_ is ElementMatch!12321) (regex!7416 (h!50472 rules!3756)))) b!4149019))

(assert (= (and b!4148572 ((_ is Concat!19968) (regex!7416 (h!50472 rules!3756)))) b!4149020))

(assert (= (and b!4148572 ((_ is Star!12321) (regex!7416 (h!50472 rules!3756)))) b!4149021))

(assert (= (and b!4148572 ((_ is Union!12321) (regex!7416 (h!50472 rules!3756)))) b!4149022))

(declare-fun b!4149023 () Bool)

(declare-fun e!2574292 () Bool)

(declare-fun tp!1264652 () Bool)

(assert (=> b!4149023 (= e!2574292 (and tp_is_empty!21565 tp!1264652))))

(assert (=> b!4148557 (= tp!1264575 e!2574292)))

(assert (= (and b!4148557 ((_ is Cons!45051) (t!342982 input!3238))) b!4149023))

(declare-fun b!4149034 () Bool)

(declare-fun b_free!118499 () Bool)

(declare-fun b_next!119203 () Bool)

(assert (=> b!4149034 (= b_free!118499 (not b_next!119203))))

(declare-fun tb!249055 () Bool)

(declare-fun t!343014 () Bool)

(assert (=> (and b!4149034 (= (toValue!10080 (transformation!7416 (h!50472 (t!342983 rules!3756)))) (toValue!10080 (transformation!7416 r!4008))) t!343014) tb!249055))

(declare-fun result!302952 () Bool)

(assert (= result!302952 result!302912))

(assert (=> d!1227521 t!343014))

(assert (=> d!1227529 t!343014))

(declare-fun b_and!322645 () Bool)

(declare-fun tp!1264661 () Bool)

(assert (=> b!4149034 (= tp!1264661 (and (=> t!343014 result!302952) b_and!322645))))

(declare-fun b_free!118501 () Bool)

(declare-fun b_next!119205 () Bool)

(assert (=> b!4149034 (= b_free!118501 (not b_next!119205))))

(declare-fun t!343016 () Bool)

(declare-fun tb!249057 () Bool)

(assert (=> (and b!4149034 (= (toChars!9939 (transformation!7416 (h!50472 (t!342983 rules!3756)))) (toChars!9939 (transformation!7416 r!4008))) t!343016) tb!249057))

(declare-fun result!302954 () Bool)

(assert (= result!302954 result!302938))

(assert (=> d!1227529 t!343016))

(declare-fun b_and!322647 () Bool)

(declare-fun tp!1264664 () Bool)

(assert (=> b!4149034 (= tp!1264664 (and (=> t!343016 result!302954) b_and!322647))))

(declare-fun e!2574303 () Bool)

(assert (=> b!4149034 (= e!2574303 (and tp!1264661 tp!1264664))))

(declare-fun e!2574304 () Bool)

(declare-fun b!4149033 () Bool)

(declare-fun tp!1264663 () Bool)

(assert (=> b!4149033 (= e!2574304 (and tp!1264663 (inv!59657 (tag!8276 (h!50472 (t!342983 rules!3756)))) (inv!59659 (transformation!7416 (h!50472 (t!342983 rules!3756)))) e!2574303))))

(declare-fun b!4149032 () Bool)

(declare-fun e!2574302 () Bool)

(declare-fun tp!1264662 () Bool)

(assert (=> b!4149032 (= e!2574302 (and e!2574304 tp!1264662))))

(assert (=> b!4148573 (= tp!1264585 e!2574302)))

(assert (= b!4149033 b!4149034))

(assert (= b!4149032 b!4149033))

(assert (= (and b!4148573 ((_ is Cons!45052) (t!342983 rules!3756))) b!4149032))

(declare-fun m!4744821 () Bool)

(assert (=> b!4149033 m!4744821))

(declare-fun m!4744823 () Bool)

(assert (=> b!4149033 m!4744823))

(declare-fun e!2574305 () Bool)

(assert (=> b!4148569 (= tp!1264583 e!2574305)))

(declare-fun b!4149036 () Bool)

(declare-fun tp!1264666 () Bool)

(declare-fun tp!1264668 () Bool)

(assert (=> b!4149036 (= e!2574305 (and tp!1264666 tp!1264668))))

(declare-fun b!4149035 () Bool)

(assert (=> b!4149035 (= e!2574305 tp_is_empty!21565)))

(declare-fun b!4149037 () Bool)

(declare-fun tp!1264669 () Bool)

(assert (=> b!4149037 (= e!2574305 tp!1264669)))

(declare-fun b!4149038 () Bool)

(declare-fun tp!1264667 () Bool)

(declare-fun tp!1264665 () Bool)

(assert (=> b!4149038 (= e!2574305 (and tp!1264667 tp!1264665))))

(assert (= (and b!4148569 ((_ is ElementMatch!12321) (regex!7416 rBis!149))) b!4149035))

(assert (= (and b!4148569 ((_ is Concat!19968) (regex!7416 rBis!149))) b!4149036))

(assert (= (and b!4148569 ((_ is Star!12321) (regex!7416 rBis!149))) b!4149037))

(assert (= (and b!4148569 ((_ is Union!12321) (regex!7416 rBis!149))) b!4149038))

(declare-fun e!2574306 () Bool)

(assert (=> b!4148570 (= tp!1264582 e!2574306)))

(declare-fun b!4149040 () Bool)

(declare-fun tp!1264671 () Bool)

(declare-fun tp!1264673 () Bool)

(assert (=> b!4149040 (= e!2574306 (and tp!1264671 tp!1264673))))

(declare-fun b!4149039 () Bool)

(assert (=> b!4149039 (= e!2574306 tp_is_empty!21565)))

(declare-fun b!4149041 () Bool)

(declare-fun tp!1264674 () Bool)

(assert (=> b!4149041 (= e!2574306 tp!1264674)))

(declare-fun b!4149042 () Bool)

(declare-fun tp!1264672 () Bool)

(declare-fun tp!1264670 () Bool)

(assert (=> b!4149042 (= e!2574306 (and tp!1264672 tp!1264670))))

(assert (= (and b!4148570 ((_ is ElementMatch!12321) (regex!7416 r!4008))) b!4149039))

(assert (= (and b!4148570 ((_ is Concat!19968) (regex!7416 r!4008))) b!4149040))

(assert (= (and b!4148570 ((_ is Star!12321) (regex!7416 r!4008))) b!4149041))

(assert (= (and b!4148570 ((_ is Union!12321) (regex!7416 r!4008))) b!4149042))

(declare-fun b_lambda!122009 () Bool)

(assert (= b_lambda!122007 (or (and b!4148576 b_free!118483 (= (toValue!10080 (transformation!7416 (h!50472 rules!3756))) (toValue!10080 (transformation!7416 r!4008)))) (and b!4148574 b_free!118487 (= (toValue!10080 (transformation!7416 rBis!149)) (toValue!10080 (transformation!7416 r!4008)))) (and b!4148556 b_free!118491) (and b!4149034 b_free!118499 (= (toValue!10080 (transformation!7416 (h!50472 (t!342983 rules!3756)))) (toValue!10080 (transformation!7416 r!4008)))) b_lambda!122009)))

(declare-fun b_lambda!122011 () Bool)

(assert (= b_lambda!121993 (or (and b!4148576 b_free!118483 (= (toValue!10080 (transformation!7416 (h!50472 rules!3756))) (toValue!10080 (transformation!7416 r!4008)))) (and b!4148574 b_free!118487 (= (toValue!10080 (transformation!7416 rBis!149)) (toValue!10080 (transformation!7416 r!4008)))) (and b!4148556 b_free!118491) (and b!4149034 b_free!118499 (= (toValue!10080 (transformation!7416 (h!50472 (t!342983 rules!3756)))) (toValue!10080 (transformation!7416 r!4008)))) b_lambda!122011)))

(declare-fun b_lambda!122013 () Bool)

(assert (= b_lambda!122005 (or (and b!4148576 b_free!118485 (= (toChars!9939 (transformation!7416 (h!50472 rules!3756))) (toChars!9939 (transformation!7416 r!4008)))) (and b!4148574 b_free!118489 (= (toChars!9939 (transformation!7416 rBis!149)) (toChars!9939 (transformation!7416 r!4008)))) (and b!4148556 b_free!118493) (and b!4149034 b_free!118501 (= (toChars!9939 (transformation!7416 (h!50472 (t!342983 rules!3756)))) (toChars!9939 (transformation!7416 r!4008)))) b_lambda!122013)))

(check-sat (not b!4148828) (not bm!290687) (not b!4148872) (not b!4148729) (not b!4148876) (not b!4148826) (not b!4148679) b_and!322643 (not d!1227437) b_and!322645 (not b!4149008) (not b!4148718) (not b_lambda!122013) (not b!4148855) (not b!4148871) (not b!4149036) (not b!4149021) (not b!4148851) (not b!4148824) (not b!4148701) (not d!1227471) (not d!1227529) (not d!1227475) (not b!4148873) (not b_lambda!122011) (not b_next!119189) (not tb!249033) (not b!4148850) (not b_next!119191) (not b!4148615) (not d!1227423) (not b!4148724) (not d!1227415) (not b!4149042) (not d!1227479) (not b!4148853) (not b!4149003) (not d!1227549) (not b!4148861) (not b!4149023) (not b!4148680) (not b!4149038) (not b!4148682) (not b!4149001) (not b!4148875) (not b!4148852) (not b!4149020) (not b!4148860) (not d!1227509) (not b!4148995) (not b_next!119193) (not b!4148878) (not d!1227543) (not b_lambda!122009) b_and!322637 (not d!1227523) (not b!4148702) (not d!1227469) b_and!322635 (not b!4148675) (not b!4148582) (not d!1227527) (not b!4148830) (not b!4148857) (not b!4149040) (not b!4148877) (not tb!249049) (not bm!290686) (not d!1227519) (not b!4148731) (not b!4148714) b_and!322633 (not b!4148728) (not d!1227517) (not b!4148869) (not d!1227515) (not d!1227439) (not b!4148703) (not b!4149033) (not bm!290680) (not d!1227525) (not d!1227477) (not b!4148831) (not b!4149037) (not b!4148678) (not b!4148854) (not b!4148593) b_and!322639 (not b!4148617) b_and!322641 (not b!4148829) (not b!4148827) (not b!4149002) b_and!322647 (not b_next!119187) (not b!4148874) (not d!1227419) tp_is_empty!21565 (not b!4148677) (not b_next!119195) (not b!4148823) (not b!4148856) (not d!1227473) (not d!1227467) (not b!4149022) (not b!4148614) (not b_next!119197) (not d!1227511) (not b!4149032) (not d!1227513) (not b!4149041) (not b_next!119205) (not b!4148584) (not b_next!119203))
(check-sat (not b_next!119189) (not b_next!119191) (not b_next!119193) b_and!322637 b_and!322635 b_and!322633 b_and!322639 (not b_next!119195) (not b_next!119197) (not b_next!119205) (not b_next!119203) b_and!322643 b_and!322645 b_and!322641 (not b_next!119187) b_and!322647)
