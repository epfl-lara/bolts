; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!394638 () Bool)

(assert start!394638)

(declare-fun b!4147556 () Bool)

(declare-fun b_free!118379 () Bool)

(declare-fun b_next!119083 () Bool)

(assert (=> b!4147556 (= b_free!118379 (not b_next!119083))))

(declare-fun tp!1264206 () Bool)

(declare-fun b_and!322453 () Bool)

(assert (=> b!4147556 (= tp!1264206 b_and!322453)))

(declare-fun b_free!118381 () Bool)

(declare-fun b_next!119085 () Bool)

(assert (=> b!4147556 (= b_free!118381 (not b_next!119085))))

(declare-fun tp!1264201 () Bool)

(declare-fun b_and!322455 () Bool)

(assert (=> b!4147556 (= tp!1264201 b_and!322455)))

(declare-fun b!4147562 () Bool)

(declare-fun b_free!118383 () Bool)

(declare-fun b_next!119087 () Bool)

(assert (=> b!4147562 (= b_free!118383 (not b_next!119087))))

(declare-fun tp!1264207 () Bool)

(declare-fun b_and!322457 () Bool)

(assert (=> b!4147562 (= tp!1264207 b_and!322457)))

(declare-fun b_free!118385 () Bool)

(declare-fun b_next!119089 () Bool)

(assert (=> b!4147562 (= b_free!118385 (not b_next!119089))))

(declare-fun tp!1264203 () Bool)

(declare-fun b_and!322459 () Bool)

(assert (=> b!4147562 (= tp!1264203 b_and!322459)))

(declare-fun b!4147553 () Bool)

(declare-fun b_free!118387 () Bool)

(declare-fun b_next!119091 () Bool)

(assert (=> b!4147553 (= b_free!118387 (not b_next!119091))))

(declare-fun tp!1264205 () Bool)

(declare-fun b_and!322461 () Bool)

(assert (=> b!4147553 (= tp!1264205 b_and!322461)))

(declare-fun b_free!118389 () Bool)

(declare-fun b_next!119093 () Bool)

(assert (=> b!4147553 (= b_free!118389 (not b_next!119093))))

(declare-fun tp!1264200 () Bool)

(declare-fun b_and!322463 () Bool)

(assert (=> b!4147553 (= tp!1264200 b_and!322463)))

(declare-fun b!4147542 () Bool)

(declare-fun res!1697822 () Bool)

(declare-fun e!2573412 () Bool)

(assert (=> b!4147542 (=> res!1697822 e!2573412)))

(declare-datatypes ((List!45147 0))(
  ( (Nil!45023) (Cons!45023 (h!50443 (_ BitVec 16)) (t!342922 List!45147)) )
))
(declare-datatypes ((TokenValue!7638 0))(
  ( (FloatLiteralValue!15276 (text!53911 List!45147)) (TokenValueExt!7637 (__x!27493 Int)) (Broken!38190 (value!231656 List!45147)) (Object!7761) (End!7638) (Def!7638) (Underscore!7638) (Match!7638) (Else!7638) (Error!7638) (Case!7638) (If!7638) (Extends!7638) (Abstract!7638) (Class!7638) (Val!7638) (DelimiterValue!15276 (del!7698 List!45147)) (KeywordValue!7644 (value!231657 List!45147)) (CommentValue!15276 (value!231658 List!45147)) (WhitespaceValue!15276 (value!231659 List!45147)) (IndentationValue!7638 (value!231660 List!45147)) (String!51939) (Int32!7638) (Broken!38191 (value!231661 List!45147)) (Boolean!7639) (Unit!64306) (OperatorValue!7641 (op!7698 List!45147)) (IdentifierValue!15276 (value!231662 List!45147)) (IdentifierValue!15277 (value!231663 List!45147)) (WhitespaceValue!15277 (value!231664 List!45147)) (True!15276) (False!15276) (Broken!38192 (value!231665 List!45147)) (Broken!38193 (value!231666 List!45147)) (True!15277) (RightBrace!7638) (RightBracket!7638) (Colon!7638) (Null!7638) (Comma!7638) (LeftBracket!7638) (False!15277) (LeftBrace!7638) (ImaginaryLiteralValue!7638 (text!53912 List!45147)) (StringLiteralValue!22914 (value!231667 List!45147)) (EOFValue!7638 (value!231668 List!45147)) (IdentValue!7638 (value!231669 List!45147)) (DelimiterValue!15277 (value!231670 List!45147)) (DedentValue!7638 (value!231671 List!45147)) (NewLineValue!7638 (value!231672 List!45147)) (IntegerValue!22914 (value!231673 (_ BitVec 32)) (text!53913 List!45147)) (IntegerValue!22915 (value!231674 Int) (text!53914 List!45147)) (Times!7638) (Or!7638) (Equal!7638) (Minus!7638) (Broken!38194 (value!231675 List!45147)) (And!7638) (Div!7638) (LessEqual!7638) (Mod!7638) (Concat!19951) (Not!7638) (Plus!7638) (SpaceValue!7638 (value!231676 List!45147)) (IntegerValue!22916 (value!231677 Int) (text!53915 List!45147)) (StringLiteralValue!22915 (text!53916 List!45147)) (FloatLiteralValue!15277 (text!53917 List!45147)) (BytesLiteralValue!7638 (value!231678 List!45147)) (CommentValue!15277 (value!231679 List!45147)) (StringLiteralValue!22916 (value!231680 List!45147)) (ErrorTokenValue!7638 (msg!7699 List!45147)) )
))
(declare-datatypes ((C!24812 0))(
  ( (C!24813 (val!14516 Int)) )
))
(declare-datatypes ((List!45148 0))(
  ( (Nil!45024) (Cons!45024 (h!50444 C!24812) (t!342923 List!45148)) )
))
(declare-datatypes ((IArray!27243 0))(
  ( (IArray!27244 (innerList!13679 List!45148)) )
))
(declare-datatypes ((Conc!13619 0))(
  ( (Node!13619 (left!33713 Conc!13619) (right!34043 Conc!13619) (csize!27468 Int) (cheight!13830 Int)) (Leaf!21038 (xs!16925 IArray!27243) (csize!27469 Int)) (Empty!13619) )
))
(declare-datatypes ((BalanceConc!26832 0))(
  ( (BalanceConc!26833 (c!710570 Conc!13619)) )
))
(declare-datatypes ((Regex!12313 0))(
  ( (ElementMatch!12313 (c!710571 C!24812)) (Concat!19952 (regOne!25138 Regex!12313) (regTwo!25138 Regex!12313)) (EmptyExpr!12313) (Star!12313 (reg!12642 Regex!12313)) (EmptyLang!12313) (Union!12313 (regOne!25139 Regex!12313) (regTwo!25139 Regex!12313)) )
))
(declare-datatypes ((String!51940 0))(
  ( (String!51941 (value!231681 String)) )
))
(declare-datatypes ((TokenValueInjection!14704 0))(
  ( (TokenValueInjection!14705 (toValue!10072 Int) (toChars!9931 Int)) )
))
(declare-datatypes ((Rule!14616 0))(
  ( (Rule!14617 (regex!7408 Regex!12313) (tag!8268 String!51940) (isSeparator!7408 Bool) (transformation!7408 TokenValueInjection!14704)) )
))
(declare-datatypes ((List!45149 0))(
  ( (Nil!45025) (Cons!45025 (h!50445 Rule!14616) (t!342924 List!45149)) )
))
(declare-fun rules!3756 () List!45149)

(declare-fun rBis!149 () Rule!14616)

(declare-fun contains!9090 (List!45149 Rule!14616) Bool)

(assert (=> b!4147542 (= res!1697822 (not (contains!9090 (t!342924 rules!3756) rBis!149)))))

(declare-fun b!4147543 () Bool)

(declare-fun res!1697826 () Bool)

(declare-fun e!2573422 () Bool)

(assert (=> b!4147543 (=> (not res!1697826) (not e!2573422))))

(assert (=> b!4147543 (= res!1697826 (contains!9090 rules!3756 rBis!149))))

(declare-fun b!4147544 () Bool)

(declare-fun e!2573420 () Bool)

(assert (=> b!4147544 (= e!2573420 (not e!2573412))))

(declare-fun res!1697820 () Bool)

(assert (=> b!4147544 (=> res!1697820 e!2573412)))

(get-info :version)

(assert (=> b!4147544 (= res!1697820 (or (and ((_ is Cons!45025) rules!3756) (= (h!50445 rules!3756) rBis!149)) (not ((_ is Cons!45025) rules!3756)) (= (h!50445 rules!3756) rBis!149)))))

(declare-datatypes ((LexerInterface!6997 0))(
  ( (LexerInterfaceExt!6994 (__x!27494 Int)) (Lexer!6995) )
))
(declare-fun thiss!25645 () LexerInterface!6997)

(declare-fun r!4008 () Rule!14616)

(declare-datatypes ((Unit!64307 0))(
  ( (Unit!64308) )
))
(declare-fun lt!1479358 () Unit!64307)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2254 (LexerInterface!6997 Rule!14616 List!45149) Unit!64307)

(assert (=> b!4147544 (= lt!1479358 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2254 thiss!25645 r!4008 rules!3756))))

(declare-fun ruleValid!3214 (LexerInterface!6997 Rule!14616) Bool)

(assert (=> b!4147544 (ruleValid!3214 thiss!25645 rBis!149)))

(declare-fun lt!1479355 () Unit!64307)

(assert (=> b!4147544 (= lt!1479355 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2254 thiss!25645 rBis!149 rules!3756))))

(declare-fun b!4147545 () Bool)

(declare-fun rulesInvariant!6294 (LexerInterface!6997 List!45149) Bool)

(assert (=> b!4147545 (= e!2573412 (rulesInvariant!6294 thiss!25645 (Cons!45025 (h!50445 rules!3756) (t!342924 rules!3756))))))

(declare-fun input!3238 () List!45148)

(declare-datatypes ((Token!13746 0))(
  ( (Token!13747 (value!231682 TokenValue!7638) (rule!10536 Rule!14616) (size!33379 Int) (originalCharacters!7904 List!45148)) )
))
(declare-datatypes ((tuple2!43394 0))(
  ( (tuple2!43395 (_1!24831 Token!13746) (_2!24831 List!45148)) )
))
(declare-datatypes ((Option!9714 0))(
  ( (None!9713) (Some!9713 (v!40369 tuple2!43394)) )
))
(declare-fun lt!1479354 () Option!9714)

(declare-fun maxPrefix!4187 (LexerInterface!6997 List!45149 List!45148) Option!9714)

(assert (=> b!4147545 (= lt!1479354 (maxPrefix!4187 thiss!25645 (t!342924 rules!3756) input!3238))))

(declare-fun lt!1479357 () Option!9714)

(declare-fun maxPrefixOneRule!3126 (LexerInterface!6997 Rule!14616 List!45148) Option!9714)

(assert (=> b!4147545 (= lt!1479357 (maxPrefixOneRule!3126 thiss!25645 (h!50445 rules!3756) input!3238))))

(declare-fun b!4147546 () Bool)

(declare-fun res!1697818 () Bool)

(assert (=> b!4147546 (=> (not res!1697818) (not e!2573420))))

(declare-fun getIndex!754 (List!45149 Rule!14616) Int)

(assert (=> b!4147546 (= res!1697818 (< (getIndex!754 rules!3756 rBis!149) (getIndex!754 rules!3756 r!4008)))))

(declare-fun b!4147548 () Bool)

(assert (=> b!4147548 (= e!2573422 e!2573420)))

(declare-fun res!1697816 () Bool)

(assert (=> b!4147548 (=> (not res!1697816) (not e!2573420))))

(declare-fun p!2912 () List!45148)

(declare-fun lt!1479353 () BalanceConc!26832)

(declare-fun apply!10481 (TokenValueInjection!14704 BalanceConc!26832) TokenValue!7638)

(declare-fun size!33380 (List!45148) Int)

(declare-fun getSuffix!2670 (List!45148 List!45148) List!45148)

(assert (=> b!4147548 (= res!1697816 (= (maxPrefix!4187 thiss!25645 rules!3756 input!3238) (Some!9713 (tuple2!43395 (Token!13747 (apply!10481 (transformation!7408 r!4008) lt!1479353) r!4008 (size!33380 p!2912) p!2912) (getSuffix!2670 input!3238 p!2912)))))))

(declare-fun lt!1479356 () Unit!64307)

(declare-fun lemmaSemiInverse!2266 (TokenValueInjection!14704 BalanceConc!26832) Unit!64307)

(assert (=> b!4147548 (= lt!1479356 (lemmaSemiInverse!2266 (transformation!7408 r!4008) lt!1479353))))

(declare-fun seqFromList!5525 (List!45148) BalanceConc!26832)

(assert (=> b!4147548 (= lt!1479353 (seqFromList!5525 p!2912))))

(declare-fun b!4147549 () Bool)

(declare-fun res!1697815 () Bool)

(assert (=> b!4147549 (=> (not res!1697815) (not e!2573422))))

(assert (=> b!4147549 (= res!1697815 (rulesInvariant!6294 thiss!25645 rules!3756))))

(declare-fun b!4147550 () Bool)

(declare-fun e!2573413 () Bool)

(declare-fun e!2573419 () Bool)

(declare-fun tp!1264199 () Bool)

(assert (=> b!4147550 (= e!2573413 (and e!2573419 tp!1264199))))

(declare-fun b!4147551 () Bool)

(declare-fun e!2573424 () Bool)

(declare-fun tp!1264210 () Bool)

(declare-fun inv!59633 (String!51940) Bool)

(declare-fun inv!59635 (TokenValueInjection!14704) Bool)

(assert (=> b!4147551 (= e!2573419 (and tp!1264210 (inv!59633 (tag!8268 (h!50445 rules!3756))) (inv!59635 (transformation!7408 (h!50445 rules!3756))) e!2573424))))

(declare-fun b!4147552 () Bool)

(declare-fun res!1697824 () Bool)

(assert (=> b!4147552 (=> (not res!1697824) (not e!2573422))))

(assert (=> b!4147552 (= res!1697824 (contains!9090 rules!3756 r!4008))))

(assert (=> b!4147553 (= e!2573424 (and tp!1264205 tp!1264200))))

(declare-fun b!4147554 () Bool)

(declare-fun e!2573410 () Bool)

(declare-fun e!2573411 () Bool)

(declare-fun tp!1264209 () Bool)

(assert (=> b!4147554 (= e!2573411 (and tp!1264209 (inv!59633 (tag!8268 rBis!149)) (inv!59635 (transformation!7408 rBis!149)) e!2573410))))

(declare-fun b!4147555 () Bool)

(declare-fun res!1697814 () Bool)

(assert (=> b!4147555 (=> res!1697814 e!2573412)))

(assert (=> b!4147555 (= res!1697814 (not (contains!9090 (t!342924 rules!3756) r!4008)))))

(assert (=> b!4147556 (= e!2573410 (and tp!1264206 tp!1264201))))

(declare-fun e!2573423 () Bool)

(declare-fun e!2573421 () Bool)

(declare-fun tp!1264202 () Bool)

(declare-fun b!4147557 () Bool)

(assert (=> b!4147557 (= e!2573421 (and tp!1264202 (inv!59633 (tag!8268 r!4008)) (inv!59635 (transformation!7408 r!4008)) e!2573423))))

(declare-fun b!4147558 () Bool)

(declare-fun res!1697819 () Bool)

(assert (=> b!4147558 (=> (not res!1697819) (not e!2573420))))

(assert (=> b!4147558 (= res!1697819 (ruleValid!3214 thiss!25645 r!4008))))

(declare-fun b!4147559 () Bool)

(declare-fun res!1697821 () Bool)

(assert (=> b!4147559 (=> (not res!1697821) (not e!2573422))))

(declare-fun isPrefix!4343 (List!45148 List!45148) Bool)

(assert (=> b!4147559 (= res!1697821 (isPrefix!4343 p!2912 input!3238))))

(declare-fun b!4147560 () Bool)

(declare-fun e!2573415 () Bool)

(declare-fun tp_is_empty!21549 () Bool)

(declare-fun tp!1264204 () Bool)

(assert (=> b!4147560 (= e!2573415 (and tp_is_empty!21549 tp!1264204))))

(declare-fun b!4147561 () Bool)

(declare-fun res!1697817 () Bool)

(assert (=> b!4147561 (=> (not res!1697817) (not e!2573422))))

(declare-fun isEmpty!26874 (List!45149) Bool)

(assert (=> b!4147561 (= res!1697817 (not (isEmpty!26874 rules!3756)))))

(assert (=> b!4147562 (= e!2573423 (and tp!1264207 tp!1264203))))

(declare-fun b!4147563 () Bool)

(declare-fun res!1697825 () Bool)

(assert (=> b!4147563 (=> (not res!1697825) (not e!2573422))))

(declare-fun isEmpty!26875 (List!45148) Bool)

(assert (=> b!4147563 (= res!1697825 (not (isEmpty!26875 p!2912)))))

(declare-fun b!4147564 () Bool)

(declare-fun res!1697813 () Bool)

(assert (=> b!4147564 (=> (not res!1697813) (not e!2573420))))

(declare-fun matchR!6142 (Regex!12313 List!45148) Bool)

(assert (=> b!4147564 (= res!1697813 (matchR!6142 (regex!7408 r!4008) p!2912))))

(declare-fun b!4147547 () Bool)

(declare-fun e!2573416 () Bool)

(declare-fun tp!1264208 () Bool)

(assert (=> b!4147547 (= e!2573416 (and tp_is_empty!21549 tp!1264208))))

(declare-fun res!1697823 () Bool)

(assert (=> start!394638 (=> (not res!1697823) (not e!2573422))))

(assert (=> start!394638 (= res!1697823 ((_ is Lexer!6995) thiss!25645))))

(assert (=> start!394638 e!2573422))

(assert (=> start!394638 e!2573413))

(assert (=> start!394638 e!2573416))

(assert (=> start!394638 true))

(assert (=> start!394638 e!2573421))

(assert (=> start!394638 e!2573415))

(assert (=> start!394638 e!2573411))

(assert (= (and start!394638 res!1697823) b!4147559))

(assert (= (and b!4147559 res!1697821) b!4147561))

(assert (= (and b!4147561 res!1697817) b!4147549))

(assert (= (and b!4147549 res!1697815) b!4147552))

(assert (= (and b!4147552 res!1697824) b!4147543))

(assert (= (and b!4147543 res!1697826) b!4147563))

(assert (= (and b!4147563 res!1697825) b!4147548))

(assert (= (and b!4147548 res!1697816) b!4147564))

(assert (= (and b!4147564 res!1697813) b!4147546))

(assert (= (and b!4147546 res!1697818) b!4147558))

(assert (= (and b!4147558 res!1697819) b!4147544))

(assert (= (and b!4147544 (not res!1697820)) b!4147555))

(assert (= (and b!4147555 (not res!1697814)) b!4147542))

(assert (= (and b!4147542 (not res!1697822)) b!4147545))

(assert (= b!4147551 b!4147553))

(assert (= b!4147550 b!4147551))

(assert (= (and start!394638 ((_ is Cons!45025) rules!3756)) b!4147550))

(assert (= (and start!394638 ((_ is Cons!45024) p!2912)) b!4147547))

(assert (= b!4147557 b!4147562))

(assert (= start!394638 b!4147557))

(assert (= (and start!394638 ((_ is Cons!45024) input!3238)) b!4147560))

(assert (= b!4147554 b!4147556))

(assert (= start!394638 b!4147554))

(declare-fun m!4743417 () Bool)

(assert (=> b!4147557 m!4743417))

(declare-fun m!4743419 () Bool)

(assert (=> b!4147557 m!4743419))

(declare-fun m!4743421 () Bool)

(assert (=> b!4147561 m!4743421))

(declare-fun m!4743423 () Bool)

(assert (=> b!4147543 m!4743423))

(declare-fun m!4743425 () Bool)

(assert (=> b!4147552 m!4743425))

(declare-fun m!4743427 () Bool)

(assert (=> b!4147564 m!4743427))

(declare-fun m!4743429 () Bool)

(assert (=> b!4147546 m!4743429))

(declare-fun m!4743431 () Bool)

(assert (=> b!4147546 m!4743431))

(declare-fun m!4743433 () Bool)

(assert (=> b!4147548 m!4743433))

(declare-fun m!4743435 () Bool)

(assert (=> b!4147548 m!4743435))

(declare-fun m!4743437 () Bool)

(assert (=> b!4147548 m!4743437))

(declare-fun m!4743439 () Bool)

(assert (=> b!4147548 m!4743439))

(declare-fun m!4743441 () Bool)

(assert (=> b!4147548 m!4743441))

(declare-fun m!4743443 () Bool)

(assert (=> b!4147548 m!4743443))

(declare-fun m!4743445 () Bool)

(assert (=> b!4147558 m!4743445))

(declare-fun m!4743447 () Bool)

(assert (=> b!4147545 m!4743447))

(declare-fun m!4743449 () Bool)

(assert (=> b!4147545 m!4743449))

(declare-fun m!4743451 () Bool)

(assert (=> b!4147545 m!4743451))

(declare-fun m!4743453 () Bool)

(assert (=> b!4147544 m!4743453))

(declare-fun m!4743455 () Bool)

(assert (=> b!4147544 m!4743455))

(declare-fun m!4743457 () Bool)

(assert (=> b!4147544 m!4743457))

(declare-fun m!4743459 () Bool)

(assert (=> b!4147542 m!4743459))

(declare-fun m!4743461 () Bool)

(assert (=> b!4147559 m!4743461))

(declare-fun m!4743463 () Bool)

(assert (=> b!4147549 m!4743463))

(declare-fun m!4743465 () Bool)

(assert (=> b!4147563 m!4743465))

(declare-fun m!4743467 () Bool)

(assert (=> b!4147551 m!4743467))

(declare-fun m!4743469 () Bool)

(assert (=> b!4147551 m!4743469))

(declare-fun m!4743471 () Bool)

(assert (=> b!4147554 m!4743471))

(declare-fun m!4743473 () Bool)

(assert (=> b!4147554 m!4743473))

(declare-fun m!4743475 () Bool)

(assert (=> b!4147555 m!4743475))

(check-sat (not b!4147560) b_and!322455 (not b_next!119085) (not b_next!119091) (not b!4147546) b_and!322463 tp_is_empty!21549 b_and!322461 (not b_next!119089) (not b_next!119087) (not b!4147547) (not b!4147552) (not b!4147545) (not b!4147559) (not b_next!119083) (not b!4147548) (not b!4147551) (not b!4147558) (not b!4147543) (not b!4147561) (not b!4147550) (not b!4147549) (not b!4147554) b_and!322459 b_and!322453 (not b!4147557) (not b!4147563) b_and!322457 (not b!4147542) (not b_next!119093) (not b!4147564) (not b!4147555) (not b!4147544))
(check-sat (not b_next!119083) b_and!322455 (not b_next!119085) (not b_next!119091) b_and!322459 b_and!322463 b_and!322453 b_and!322457 (not b_next!119093) b_and!322461 (not b_next!119089) (not b_next!119087))
