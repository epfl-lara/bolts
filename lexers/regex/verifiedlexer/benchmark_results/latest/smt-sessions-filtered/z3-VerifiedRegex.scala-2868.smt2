; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!167030 () Bool)

(assert start!167030)

(declare-fun b!1709521 () Bool)

(declare-fun b_free!46339 () Bool)

(declare-fun b_next!47043 () Bool)

(assert (=> b!1709521 (= b_free!46339 (not b_next!47043))))

(declare-fun tp!488572 () Bool)

(declare-fun b_and!123729 () Bool)

(assert (=> b!1709521 (= tp!488572 b_and!123729)))

(declare-fun b_free!46341 () Bool)

(declare-fun b_next!47045 () Bool)

(assert (=> b!1709521 (= b_free!46341 (not b_next!47045))))

(declare-fun tp!488562 () Bool)

(declare-fun b_and!123731 () Bool)

(assert (=> b!1709521 (= tp!488562 b_and!123731)))

(declare-fun b!1709532 () Bool)

(declare-fun b_free!46343 () Bool)

(declare-fun b_next!47047 () Bool)

(assert (=> b!1709532 (= b_free!46343 (not b_next!47047))))

(declare-fun tp!488563 () Bool)

(declare-fun b_and!123733 () Bool)

(assert (=> b!1709532 (= tp!488563 b_and!123733)))

(declare-fun b_free!46345 () Bool)

(declare-fun b_next!47049 () Bool)

(assert (=> b!1709532 (= b_free!46345 (not b_next!47049))))

(declare-fun tp!488568 () Bool)

(declare-fun b_and!123735 () Bool)

(assert (=> b!1709532 (= tp!488568 b_and!123735)))

(declare-fun b!1709524 () Bool)

(declare-fun b_free!46347 () Bool)

(declare-fun b_next!47051 () Bool)

(assert (=> b!1709524 (= b_free!46347 (not b_next!47051))))

(declare-fun tp!488569 () Bool)

(declare-fun b_and!123737 () Bool)

(assert (=> b!1709524 (= tp!488569 b_and!123737)))

(declare-fun b_free!46349 () Bool)

(declare-fun b_next!47053 () Bool)

(assert (=> b!1709524 (= b_free!46349 (not b_next!47053))))

(declare-fun tp!488567 () Bool)

(declare-fun b_and!123739 () Bool)

(assert (=> b!1709524 (= tp!488567 b_and!123739)))

(declare-fun b!1709519 () Bool)

(declare-fun res!766347 () Bool)

(declare-fun e!1093454 () Bool)

(assert (=> b!1709519 (=> (not res!766347) (not e!1093454))))

(declare-datatypes ((List!18733 0))(
  ( (Nil!18663) (Cons!18663 (h!24064 (_ BitVec 16)) (t!158176 List!18733)) )
))
(declare-datatypes ((TokenValue!3387 0))(
  ( (FloatLiteralValue!6774 (text!24154 List!18733)) (TokenValueExt!3386 (__x!12076 Int)) (Broken!16935 (value!103611 List!18733)) (Object!3456) (End!3387) (Def!3387) (Underscore!3387) (Match!3387) (Else!3387) (Error!3387) (Case!3387) (If!3387) (Extends!3387) (Abstract!3387) (Class!3387) (Val!3387) (DelimiterValue!6774 (del!3447 List!18733)) (KeywordValue!3393 (value!103612 List!18733)) (CommentValue!6774 (value!103613 List!18733)) (WhitespaceValue!6774 (value!103614 List!18733)) (IndentationValue!3387 (value!103615 List!18733)) (String!21266) (Int32!3387) (Broken!16936 (value!103616 List!18733)) (Boolean!3388) (Unit!32492) (OperatorValue!3390 (op!3447 List!18733)) (IdentifierValue!6774 (value!103617 List!18733)) (IdentifierValue!6775 (value!103618 List!18733)) (WhitespaceValue!6775 (value!103619 List!18733)) (True!6774) (False!6774) (Broken!16937 (value!103620 List!18733)) (Broken!16938 (value!103621 List!18733)) (True!6775) (RightBrace!3387) (RightBracket!3387) (Colon!3387) (Null!3387) (Comma!3387) (LeftBracket!3387) (False!6775) (LeftBrace!3387) (ImaginaryLiteralValue!3387 (text!24155 List!18733)) (StringLiteralValue!10161 (value!103622 List!18733)) (EOFValue!3387 (value!103623 List!18733)) (IdentValue!3387 (value!103624 List!18733)) (DelimiterValue!6775 (value!103625 List!18733)) (DedentValue!3387 (value!103626 List!18733)) (NewLineValue!3387 (value!103627 List!18733)) (IntegerValue!10161 (value!103628 (_ BitVec 32)) (text!24156 List!18733)) (IntegerValue!10162 (value!103629 Int) (text!24157 List!18733)) (Times!3387) (Or!3387) (Equal!3387) (Minus!3387) (Broken!16939 (value!103630 List!18733)) (And!3387) (Div!3387) (LessEqual!3387) (Mod!3387) (Concat!8012) (Not!3387) (Plus!3387) (SpaceValue!3387 (value!103631 List!18733)) (IntegerValue!10163 (value!103632 Int) (text!24158 List!18733)) (StringLiteralValue!10162 (text!24159 List!18733)) (FloatLiteralValue!6775 (text!24160 List!18733)) (BytesLiteralValue!3387 (value!103633 List!18733)) (CommentValue!6775 (value!103634 List!18733)) (StringLiteralValue!10163 (value!103635 List!18733)) (ErrorTokenValue!3387 (msg!3448 List!18733)) )
))
(declare-datatypes ((C!9424 0))(
  ( (C!9425 (val!5308 Int)) )
))
(declare-datatypes ((Regex!4625 0))(
  ( (ElementMatch!4625 (c!280088 C!9424)) (Concat!8013 (regOne!9762 Regex!4625) (regTwo!9762 Regex!4625)) (EmptyExpr!4625) (Star!4625 (reg!4954 Regex!4625)) (EmptyLang!4625) (Union!4625 (regOne!9763 Regex!4625) (regTwo!9763 Regex!4625)) )
))
(declare-datatypes ((String!21267 0))(
  ( (String!21268 (value!103636 String)) )
))
(declare-datatypes ((List!18734 0))(
  ( (Nil!18664) (Cons!18664 (h!24065 C!9424) (t!158177 List!18734)) )
))
(declare-datatypes ((IArray!12419 0))(
  ( (IArray!12420 (innerList!6267 List!18734)) )
))
(declare-datatypes ((Conc!6207 0))(
  ( (Node!6207 (left!14885 Conc!6207) (right!15215 Conc!6207) (csize!12644 Int) (cheight!6418 Int)) (Leaf!9076 (xs!9083 IArray!12419) (csize!12645 Int)) (Empty!6207) )
))
(declare-datatypes ((BalanceConc!12358 0))(
  ( (BalanceConc!12359 (c!280089 Conc!6207)) )
))
(declare-datatypes ((TokenValueInjection!6434 0))(
  ( (TokenValueInjection!6435 (toValue!4796 Int) (toChars!4655 Int)) )
))
(declare-datatypes ((Rule!6394 0))(
  ( (Rule!6395 (regex!3297 Regex!4625) (tag!3593 String!21267) (isSeparator!3297 Bool) (transformation!3297 TokenValueInjection!6434)) )
))
(declare-datatypes ((List!18735 0))(
  ( (Nil!18665) (Cons!18665 (h!24066 Rule!6394) (t!158178 List!18735)) )
))
(declare-fun rules!3447 () List!18735)

(declare-fun rule!422 () Rule!6394)

(declare-fun contains!3315 (List!18735 Rule!6394) Bool)

(assert (=> b!1709519 (= res!766347 (contains!3315 rules!3447 rule!422))))

(declare-fun b!1709520 () Bool)

(declare-fun e!1093444 () Bool)

(assert (=> b!1709520 (= e!1093454 e!1093444)))

(declare-fun res!766348 () Bool)

(assert (=> b!1709520 (=> (not res!766348) (not e!1093444))))

(declare-datatypes ((Token!6160 0))(
  ( (Token!6161 (value!103637 TokenValue!3387) (rule!5231 Rule!6394) (size!14840 Int) (originalCharacters!4111 List!18734)) )
))
(declare-datatypes ((tuple2!18378 0))(
  ( (tuple2!18379 (_1!10591 Token!6160) (_2!10591 List!18734)) )
))
(declare-datatypes ((Option!3621 0))(
  ( (None!3620) (Some!3620 (v!25005 tuple2!18378)) )
))
(declare-fun lt!653124 () Option!3621)

(declare-fun isDefined!2966 (Option!3621) Bool)

(assert (=> b!1709520 (= res!766348 (isDefined!2966 lt!653124))))

(declare-fun lt!653122 () List!18734)

(declare-datatypes ((LexerInterface!2926 0))(
  ( (LexerInterfaceExt!2923 (__x!12077 Int)) (Lexer!2924) )
))
(declare-fun thiss!24550 () LexerInterface!2926)

(declare-fun maxPrefix!1480 (LexerInterface!2926 List!18735 List!18734) Option!3621)

(assert (=> b!1709520 (= lt!653124 (maxPrefix!1480 thiss!24550 rules!3447 lt!653122))))

(declare-fun token!523 () Token!6160)

(declare-fun list!7526 (BalanceConc!12358) List!18734)

(declare-fun charsOf!1946 (Token!6160) BalanceConc!12358)

(assert (=> b!1709520 (= lt!653122 (list!7526 (charsOf!1946 token!523)))))

(declare-fun e!1093446 () Bool)

(assert (=> b!1709521 (= e!1093446 (and tp!488572 tp!488562))))

(declare-fun b!1709522 () Bool)

(declare-fun e!1093443 () Bool)

(assert (=> b!1709522 (= e!1093444 e!1093443)))

(declare-fun res!766353 () Bool)

(assert (=> b!1709522 (=> (not res!766353) (not e!1093443))))

(declare-fun lt!653125 () tuple2!18378)

(assert (=> b!1709522 (= res!766353 (= (_1!10591 lt!653125) token!523))))

(declare-fun get!5489 (Option!3621) tuple2!18378)

(assert (=> b!1709522 (= lt!653125 (get!5489 lt!653124))))

(declare-fun b!1709523 () Bool)

(declare-fun res!766351 () Bool)

(declare-fun e!1093448 () Bool)

(assert (=> b!1709523 (=> res!766351 e!1093448)))

(declare-fun suffix!1421 () List!18734)

(declare-fun isEmpty!11719 (List!18734) Bool)

(assert (=> b!1709523 (= res!766351 (isEmpty!11719 suffix!1421))))

(declare-fun e!1093440 () Bool)

(assert (=> b!1709524 (= e!1093440 (and tp!488569 tp!488567))))

(declare-fun b!1709525 () Bool)

(declare-fun tp!488564 () Bool)

(declare-fun e!1093450 () Bool)

(declare-fun inv!24073 (String!21267) Bool)

(declare-fun inv!24076 (TokenValueInjection!6434) Bool)

(assert (=> b!1709525 (= e!1093450 (and tp!488564 (inv!24073 (tag!3593 (rule!5231 token!523))) (inv!24076 (transformation!3297 (rule!5231 token!523))) e!1093440))))

(declare-fun b!1709527 () Bool)

(declare-fun res!766350 () Bool)

(assert (=> b!1709527 (=> (not res!766350) (not e!1093443))))

(assert (=> b!1709527 (= res!766350 (= (rule!5231 token!523) rule!422))))

(declare-fun b!1709528 () Bool)

(declare-fun res!766346 () Bool)

(assert (=> b!1709528 (=> res!766346 e!1093448)))

(declare-fun prefixMatch!510 (Regex!4625 List!18734) Bool)

(declare-fun rulesRegex!655 (LexerInterface!2926 List!18735) Regex!4625)

(declare-fun ++!5118 (List!18734 List!18734) List!18734)

(declare-fun head!3830 (List!18734) C!9424)

(assert (=> b!1709528 (= res!766346 (prefixMatch!510 (rulesRegex!655 thiss!24550 rules!3447) (++!5118 lt!653122 (Cons!18664 (head!3830 suffix!1421) Nil!18664))))))

(declare-fun b!1709529 () Bool)

(assert (=> b!1709529 (= e!1093448 true)))

(declare-fun lt!653120 () Option!3621)

(declare-fun lt!653121 () List!18734)

(assert (=> b!1709529 (= lt!653120 (maxPrefix!1480 thiss!24550 rules!3447 lt!653121))))

(declare-fun isPrefix!1538 (List!18734 List!18734) Bool)

(assert (=> b!1709529 (isPrefix!1538 lt!653122 lt!653121)))

(declare-datatypes ((Unit!32493 0))(
  ( (Unit!32494) )
))
(declare-fun lt!653126 () Unit!32493)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!1048 (List!18734 List!18734) Unit!32493)

(assert (=> b!1709529 (= lt!653126 (lemmaConcatTwoListThenFirstIsPrefix!1048 lt!653122 suffix!1421))))

(assert (=> b!1709529 (= lt!653121 (++!5118 lt!653122 suffix!1421))))

(declare-fun b!1709530 () Bool)

(declare-fun tp!488571 () Bool)

(declare-fun e!1093441 () Bool)

(declare-fun inv!21 (TokenValue!3387) Bool)

(assert (=> b!1709530 (= e!1093441 (and (inv!21 (value!103637 token!523)) e!1093450 tp!488571))))

(declare-fun b!1709531 () Bool)

(declare-fun res!766352 () Bool)

(assert (=> b!1709531 (=> (not res!766352) (not e!1093443))))

(assert (=> b!1709531 (= res!766352 (isEmpty!11719 (_2!10591 lt!653125)))))

(declare-fun e!1093451 () Bool)

(assert (=> b!1709532 (= e!1093451 (and tp!488563 tp!488568))))

(declare-fun tp!488566 () Bool)

(declare-fun e!1093455 () Bool)

(declare-fun b!1709533 () Bool)

(assert (=> b!1709533 (= e!1093455 (and tp!488566 (inv!24073 (tag!3593 (h!24066 rules!3447))) (inv!24076 (transformation!3297 (h!24066 rules!3447))) e!1093451))))

(declare-fun b!1709534 () Bool)

(declare-fun res!766354 () Bool)

(assert (=> b!1709534 (=> (not res!766354) (not e!1093454))))

(declare-fun isEmpty!11720 (List!18735) Bool)

(assert (=> b!1709534 (= res!766354 (not (isEmpty!11720 rules!3447)))))

(declare-fun b!1709535 () Bool)

(declare-fun e!1093449 () Bool)

(declare-fun tp!488570 () Bool)

(assert (=> b!1709535 (= e!1093449 (and e!1093455 tp!488570))))

(declare-fun b!1709536 () Bool)

(declare-fun res!766356 () Bool)

(assert (=> b!1709536 (=> (not res!766356) (not e!1093454))))

(declare-fun rulesInvariant!2595 (LexerInterface!2926 List!18735) Bool)

(assert (=> b!1709536 (= res!766356 (rulesInvariant!2595 thiss!24550 rules!3447))))

(declare-fun b!1709526 () Bool)

(declare-fun e!1093447 () Bool)

(declare-fun tp_is_empty!7493 () Bool)

(declare-fun tp!488561 () Bool)

(assert (=> b!1709526 (= e!1093447 (and tp_is_empty!7493 tp!488561))))

(declare-fun res!766355 () Bool)

(assert (=> start!167030 (=> (not res!766355) (not e!1093454))))

(get-info :version)

(assert (=> start!167030 (= res!766355 ((_ is Lexer!2924) thiss!24550))))

(assert (=> start!167030 e!1093454))

(assert (=> start!167030 e!1093447))

(declare-fun e!1093456 () Bool)

(assert (=> start!167030 e!1093456))

(assert (=> start!167030 true))

(declare-fun inv!24077 (Token!6160) Bool)

(assert (=> start!167030 (and (inv!24077 token!523) e!1093441)))

(assert (=> start!167030 e!1093449))

(declare-fun b!1709537 () Bool)

(declare-fun tp!488565 () Bool)

(assert (=> b!1709537 (= e!1093456 (and tp!488565 (inv!24073 (tag!3593 rule!422)) (inv!24076 (transformation!3297 rule!422)) e!1093446))))

(declare-fun b!1709538 () Bool)

(assert (=> b!1709538 (= e!1093443 (not e!1093448))))

(declare-fun res!766349 () Bool)

(assert (=> b!1709538 (=> res!766349 e!1093448)))

(declare-fun matchR!2099 (Regex!4625 List!18734) Bool)

(assert (=> b!1709538 (= res!766349 (not (matchR!2099 (regex!3297 rule!422) lt!653122)))))

(declare-fun ruleValid!796 (LexerInterface!2926 Rule!6394) Bool)

(assert (=> b!1709538 (ruleValid!796 thiss!24550 rule!422)))

(declare-fun lt!653123 () Unit!32493)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!320 (LexerInterface!2926 Rule!6394 List!18735) Unit!32493)

(assert (=> b!1709538 (= lt!653123 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!320 thiss!24550 rule!422 rules!3447))))

(assert (= (and start!167030 res!766355) b!1709534))

(assert (= (and b!1709534 res!766354) b!1709536))

(assert (= (and b!1709536 res!766356) b!1709519))

(assert (= (and b!1709519 res!766347) b!1709520))

(assert (= (and b!1709520 res!766348) b!1709522))

(assert (= (and b!1709522 res!766353) b!1709531))

(assert (= (and b!1709531 res!766352) b!1709527))

(assert (= (and b!1709527 res!766350) b!1709538))

(assert (= (and b!1709538 (not res!766349)) b!1709523))

(assert (= (and b!1709523 (not res!766351)) b!1709528))

(assert (= (and b!1709528 (not res!766346)) b!1709529))

(assert (= (and start!167030 ((_ is Cons!18664) suffix!1421)) b!1709526))

(assert (= b!1709537 b!1709521))

(assert (= start!167030 b!1709537))

(assert (= b!1709525 b!1709524))

(assert (= b!1709530 b!1709525))

(assert (= start!167030 b!1709530))

(assert (= b!1709533 b!1709532))

(assert (= b!1709535 b!1709533))

(assert (= (and start!167030 ((_ is Cons!18665) rules!3447)) b!1709535))

(declare-fun m!2112531 () Bool)

(assert (=> b!1709536 m!2112531))

(declare-fun m!2112533 () Bool)

(assert (=> b!1709531 m!2112533))

(declare-fun m!2112535 () Bool)

(assert (=> b!1709520 m!2112535))

(declare-fun m!2112537 () Bool)

(assert (=> b!1709520 m!2112537))

(declare-fun m!2112539 () Bool)

(assert (=> b!1709520 m!2112539))

(assert (=> b!1709520 m!2112539))

(declare-fun m!2112541 () Bool)

(assert (=> b!1709520 m!2112541))

(declare-fun m!2112543 () Bool)

(assert (=> b!1709528 m!2112543))

(declare-fun m!2112545 () Bool)

(assert (=> b!1709528 m!2112545))

(declare-fun m!2112547 () Bool)

(assert (=> b!1709528 m!2112547))

(assert (=> b!1709528 m!2112543))

(assert (=> b!1709528 m!2112547))

(declare-fun m!2112549 () Bool)

(assert (=> b!1709528 m!2112549))

(declare-fun m!2112551 () Bool)

(assert (=> start!167030 m!2112551))

(declare-fun m!2112553 () Bool)

(assert (=> b!1709525 m!2112553))

(declare-fun m!2112555 () Bool)

(assert (=> b!1709525 m!2112555))

(declare-fun m!2112557 () Bool)

(assert (=> b!1709534 m!2112557))

(declare-fun m!2112559 () Bool)

(assert (=> b!1709530 m!2112559))

(declare-fun m!2112561 () Bool)

(assert (=> b!1709538 m!2112561))

(declare-fun m!2112563 () Bool)

(assert (=> b!1709538 m!2112563))

(declare-fun m!2112565 () Bool)

(assert (=> b!1709538 m!2112565))

(declare-fun m!2112567 () Bool)

(assert (=> b!1709519 m!2112567))

(declare-fun m!2112569 () Bool)

(assert (=> b!1709533 m!2112569))

(declare-fun m!2112571 () Bool)

(assert (=> b!1709533 m!2112571))

(declare-fun m!2112573 () Bool)

(assert (=> b!1709522 m!2112573))

(declare-fun m!2112575 () Bool)

(assert (=> b!1709523 m!2112575))

(declare-fun m!2112577 () Bool)

(assert (=> b!1709529 m!2112577))

(declare-fun m!2112579 () Bool)

(assert (=> b!1709529 m!2112579))

(declare-fun m!2112581 () Bool)

(assert (=> b!1709529 m!2112581))

(declare-fun m!2112583 () Bool)

(assert (=> b!1709529 m!2112583))

(declare-fun m!2112585 () Bool)

(assert (=> b!1709537 m!2112585))

(declare-fun m!2112587 () Bool)

(assert (=> b!1709537 m!2112587))

(check-sat b_and!123735 (not b!1709528) (not b_next!47051) (not b!1709535) (not b!1709522) (not start!167030) (not b!1709536) b_and!123729 b_and!123731 tp_is_empty!7493 (not b_next!47043) (not b!1709533) (not b!1709538) (not b!1709525) (not b!1709537) (not b_next!47049) (not b_next!47045) (not b!1709520) (not b!1709534) b_and!123733 (not b!1709519) b_and!123737 (not b!1709529) (not b!1709530) (not b!1709526) b_and!123739 (not b!1709523) (not b_next!47047) (not b!1709531) (not b_next!47053))
(check-sat b_and!123735 (not b_next!47051) b_and!123733 b_and!123729 b_and!123737 b_and!123731 (not b_next!47043) (not b_next!47053) (not b_next!47049) (not b_next!47045) b_and!123739 (not b_next!47047))
