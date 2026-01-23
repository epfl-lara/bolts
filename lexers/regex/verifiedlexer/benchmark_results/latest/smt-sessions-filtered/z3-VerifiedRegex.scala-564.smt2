; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!16066 () Bool)

(assert start!16066)

(declare-fun b!150519 () Bool)

(declare-fun b_free!5441 () Bool)

(declare-fun b_next!5441 () Bool)

(assert (=> b!150519 (= b_free!5441 (not b_next!5441))))

(declare-fun tp!78513 () Bool)

(declare-fun b_and!8589 () Bool)

(assert (=> b!150519 (= tp!78513 b_and!8589)))

(declare-fun b_free!5443 () Bool)

(declare-fun b_next!5443 () Bool)

(assert (=> b!150519 (= b_free!5443 (not b_next!5443))))

(declare-fun tp!78522 () Bool)

(declare-fun b_and!8591 () Bool)

(assert (=> b!150519 (= tp!78522 b_and!8591)))

(declare-fun b!150511 () Bool)

(declare-fun b_free!5445 () Bool)

(declare-fun b_next!5445 () Bool)

(assert (=> b!150511 (= b_free!5445 (not b_next!5445))))

(declare-fun tp!78517 () Bool)

(declare-fun b_and!8593 () Bool)

(assert (=> b!150511 (= tp!78517 b_and!8593)))

(declare-fun b_free!5447 () Bool)

(declare-fun b_next!5447 () Bool)

(assert (=> b!150511 (= b_free!5447 (not b_next!5447))))

(declare-fun tp!78516 () Bool)

(declare-fun b_and!8595 () Bool)

(assert (=> b!150511 (= tp!78516 b_and!8595)))

(declare-fun b!150505 () Bool)

(declare-fun b_free!5449 () Bool)

(declare-fun b_next!5449 () Bool)

(assert (=> b!150505 (= b_free!5449 (not b_next!5449))))

(declare-fun tp!78512 () Bool)

(declare-fun b_and!8597 () Bool)

(assert (=> b!150505 (= tp!78512 b_and!8597)))

(declare-fun b_free!5451 () Bool)

(declare-fun b_next!5451 () Bool)

(assert (=> b!150505 (= b_free!5451 (not b_next!5451))))

(declare-fun tp!78521 () Bool)

(declare-fun b_and!8599 () Bool)

(assert (=> b!150505 (= tp!78521 b_and!8599)))

(declare-datatypes ((List!2615 0))(
  ( (Nil!2605) (Cons!2605 (h!8002 (_ BitVec 16)) (t!24751 List!2615)) )
))
(declare-datatypes ((TokenValue!473 0))(
  ( (FloatLiteralValue!946 (text!3756 List!2615)) (TokenValueExt!472 (__x!2433 Int)) (Broken!2365 (value!17143 List!2615)) (Object!482) (End!473) (Def!473) (Underscore!473) (Match!473) (Else!473) (Error!473) (Case!473) (If!473) (Extends!473) (Abstract!473) (Class!473) (Val!473) (DelimiterValue!946 (del!533 List!2615)) (KeywordValue!479 (value!17144 List!2615)) (CommentValue!946 (value!17145 List!2615)) (WhitespaceValue!946 (value!17146 List!2615)) (IndentationValue!473 (value!17147 List!2615)) (String!3444) (Int32!473) (Broken!2366 (value!17148 List!2615)) (Boolean!474) (Unit!1981) (OperatorValue!476 (op!533 List!2615)) (IdentifierValue!946 (value!17149 List!2615)) (IdentifierValue!947 (value!17150 List!2615)) (WhitespaceValue!947 (value!17151 List!2615)) (True!946) (False!946) (Broken!2367 (value!17152 List!2615)) (Broken!2368 (value!17153 List!2615)) (True!947) (RightBrace!473) (RightBracket!473) (Colon!473) (Null!473) (Comma!473) (LeftBracket!473) (False!947) (LeftBrace!473) (ImaginaryLiteralValue!473 (text!3757 List!2615)) (StringLiteralValue!1419 (value!17154 List!2615)) (EOFValue!473 (value!17155 List!2615)) (IdentValue!473 (value!17156 List!2615)) (DelimiterValue!947 (value!17157 List!2615)) (DedentValue!473 (value!17158 List!2615)) (NewLineValue!473 (value!17159 List!2615)) (IntegerValue!1419 (value!17160 (_ BitVec 32)) (text!3758 List!2615)) (IntegerValue!1420 (value!17161 Int) (text!3759 List!2615)) (Times!473) (Or!473) (Equal!473) (Minus!473) (Broken!2369 (value!17162 List!2615)) (And!473) (Div!473) (LessEqual!473) (Mod!473) (Concat!1148) (Not!473) (Plus!473) (SpaceValue!473 (value!17163 List!2615)) (IntegerValue!1421 (value!17164 Int) (text!3760 List!2615)) (StringLiteralValue!1420 (text!3761 List!2615)) (FloatLiteralValue!947 (text!3762 List!2615)) (BytesLiteralValue!473 (value!17165 List!2615)) (CommentValue!947 (value!17166 List!2615)) (StringLiteralValue!1421 (value!17167 List!2615)) (ErrorTokenValue!473 (msg!534 List!2615)) )
))
(declare-datatypes ((C!2272 0))(
  ( (C!2273 (val!1022 Int)) )
))
(declare-datatypes ((List!2616 0))(
  ( (Nil!2606) (Cons!2606 (h!8003 C!2272) (t!24752 List!2616)) )
))
(declare-datatypes ((IArray!1449 0))(
  ( (IArray!1450 (innerList!782 List!2616)) )
))
(declare-datatypes ((Conc!724 0))(
  ( (Node!724 (left!1968 Conc!724) (right!2298 Conc!724) (csize!1678 Int) (cheight!935 Int)) (Leaf!1289 (xs!3319 IArray!1449) (csize!1679 Int)) (Empty!724) )
))
(declare-datatypes ((BalanceConc!1456 0))(
  ( (BalanceConc!1457 (c!30477 Conc!724)) )
))
(declare-datatypes ((Regex!675 0))(
  ( (ElementMatch!675 (c!30478 C!2272)) (Concat!1149 (regOne!1862 Regex!675) (regTwo!1862 Regex!675)) (EmptyExpr!675) (Star!675 (reg!1004 Regex!675)) (EmptyLang!675) (Union!675 (regOne!1863 Regex!675) (regTwo!1863 Regex!675)) )
))
(declare-datatypes ((String!3445 0))(
  ( (String!3446 (value!17168 String)) )
))
(declare-datatypes ((TokenValueInjection!718 0))(
  ( (TokenValueInjection!719 (toValue!1086 Int) (toChars!945 Int)) )
))
(declare-datatypes ((Rule!702 0))(
  ( (Rule!703 (regex!451 Regex!675) (tag!629 String!3445) (isSeparator!451 Bool) (transformation!451 TokenValueInjection!718)) )
))
(declare-datatypes ((Token!646 0))(
  ( (Token!647 (value!17169 TokenValue!473) (rule!958 Rule!702) (size!2233 Int) (originalCharacters!494 List!2616)) )
))
(declare-datatypes ((List!2617 0))(
  ( (Nil!2607) (Cons!2607 (h!8004 Token!646) (t!24753 List!2617)) )
))
(declare-fun tokens!465 () List!2617)

(declare-fun tp!78511 () Bool)

(declare-fun e!89812 () Bool)

(declare-fun e!89825 () Bool)

(declare-fun b!150501 () Bool)

(declare-fun inv!3398 (String!3445) Bool)

(declare-fun inv!3401 (TokenValueInjection!718) Bool)

(assert (=> b!150501 (= e!89812 (and tp!78511 (inv!3398 (tag!629 (rule!958 (h!8004 tokens!465)))) (inv!3401 (transformation!451 (rule!958 (h!8004 tokens!465)))) e!89825))))

(declare-fun e!89821 () Bool)

(declare-fun separatorToken!170 () Token!646)

(declare-fun tp!78523 () Bool)

(declare-fun b!150502 () Bool)

(declare-fun e!89823 () Bool)

(declare-fun inv!21 (TokenValue!473) Bool)

(assert (=> b!150502 (= e!89821 (and (inv!21 (value!17169 separatorToken!170)) e!89823 tp!78523))))

(declare-fun b!150503 () Bool)

(declare-fun e!89819 () Bool)

(declare-fun tp!78518 () Bool)

(declare-fun e!89818 () Bool)

(declare-fun inv!3402 (Token!646) Bool)

(assert (=> b!150503 (= e!89818 (and (inv!3402 (h!8004 tokens!465)) e!89819 tp!78518))))

(declare-fun b!150504 () Bool)

(declare-fun res!69011 () Bool)

(declare-fun e!89814 () Bool)

(assert (=> b!150504 (=> (not res!69011) (not e!89814))))

(declare-fun lt!43861 () List!2616)

(declare-fun lt!43859 () List!2616)

(declare-fun list!913 (BalanceConc!1456) List!2616)

(declare-fun seqFromList!279 (List!2616) BalanceConc!1456)

(assert (=> b!150504 (= res!69011 (= (list!913 (seqFromList!279 lt!43861)) lt!43859))))

(declare-fun e!89815 () Bool)

(assert (=> b!150505 (= e!89815 (and tp!78512 tp!78521))))

(declare-fun b!150506 () Bool)

(declare-fun e!89822 () Bool)

(assert (=> b!150506 (= e!89814 e!89822)))

(declare-fun res!69008 () Bool)

(assert (=> b!150506 (=> (not res!69008) (not e!89822))))

(declare-datatypes ((List!2618 0))(
  ( (Nil!2608) (Cons!2608 (h!8005 Rule!702) (t!24754 List!2618)) )
))
(declare-fun rules!1920 () List!2618)

(declare-datatypes ((LexerInterface!337 0))(
  ( (LexerInterfaceExt!334 (__x!2434 Int)) (Lexer!335) )
))
(declare-fun thiss!17480 () LexerInterface!337)

(declare-fun rulesProduceEachTokenIndividuallyList!79 (LexerInterface!337 List!2618 List!2617) Bool)

(assert (=> b!150506 (= res!69008 (rulesProduceEachTokenIndividuallyList!79 thiss!17480 rules!1920 (t!24753 tokens!465)))))

(declare-fun lt!43860 () List!2616)

(declare-fun charsOf!106 (Token!646) BalanceConc!1456)

(assert (=> b!150506 (= lt!43860 (list!913 (charsOf!106 separatorToken!170)))))

(declare-fun b!150507 () Bool)

(declare-fun res!69010 () Bool)

(declare-fun e!89820 () Bool)

(assert (=> b!150507 (=> (not res!69010) (not e!89820))))

(declare-fun sepAndNonSepRulesDisjointChars!40 (List!2618 List!2618) Bool)

(assert (=> b!150507 (= res!69010 (sepAndNonSepRulesDisjointChars!40 rules!1920 rules!1920))))

(declare-fun b!150508 () Bool)

(declare-fun res!69009 () Bool)

(declare-fun e!89810 () Bool)

(assert (=> b!150508 (=> (not res!69009) (not e!89810))))

(declare-fun isEmpty!1028 (List!2618) Bool)

(assert (=> b!150508 (= res!69009 (not (isEmpty!1028 rules!1920)))))

(declare-fun tp!78514 () Bool)

(declare-fun b!150509 () Bool)

(assert (=> b!150509 (= e!89819 (and (inv!21 (value!17169 (h!8004 tokens!465))) e!89812 tp!78514))))

(declare-fun b!150510 () Bool)

(declare-fun res!69007 () Bool)

(assert (=> b!150510 (=> (not res!69007) (not e!89810))))

(declare-fun rulesInvariant!303 (LexerInterface!337 List!2618) Bool)

(assert (=> b!150510 (= res!69007 (rulesInvariant!303 thiss!17480 rules!1920))))

(declare-fun e!89807 () Bool)

(assert (=> b!150511 (= e!89807 (and tp!78517 tp!78516))))

(declare-fun e!89813 () Bool)

(declare-fun tp!78519 () Bool)

(declare-fun b!150513 () Bool)

(assert (=> b!150513 (= e!89813 (and tp!78519 (inv!3398 (tag!629 (h!8005 rules!1920))) (inv!3401 (transformation!451 (h!8005 rules!1920))) e!89815))))

(declare-fun b!150514 () Bool)

(declare-fun res!69017 () Bool)

(assert (=> b!150514 (=> (not res!69017) (not e!89820))))

(declare-fun rulesProduceIndividualToken!86 (LexerInterface!337 List!2618 Token!646) Bool)

(assert (=> b!150514 (= res!69017 (rulesProduceIndividualToken!86 thiss!17480 rules!1920 separatorToken!170))))

(declare-fun b!150515 () Bool)

(assert (=> b!150515 (= e!89810 e!89820)))

(declare-fun res!69016 () Bool)

(assert (=> b!150515 (=> (not res!69016) (not e!89820))))

(declare-datatypes ((IArray!1451 0))(
  ( (IArray!1452 (innerList!783 List!2617)) )
))
(declare-datatypes ((Conc!725 0))(
  ( (Node!725 (left!1969 Conc!725) (right!2299 Conc!725) (csize!1680 Int) (cheight!936 Int)) (Leaf!1290 (xs!3320 IArray!1451) (csize!1681 Int)) (Empty!725) )
))
(declare-datatypes ((BalanceConc!1458 0))(
  ( (BalanceConc!1459 (c!30479 Conc!725)) )
))
(declare-fun lt!43862 () BalanceConc!1458)

(declare-fun rulesProduceEachTokenIndividually!129 (LexerInterface!337 List!2618 BalanceConc!1458) Bool)

(assert (=> b!150515 (= res!69016 (rulesProduceEachTokenIndividually!129 thiss!17480 rules!1920 lt!43862))))

(declare-fun seqFromList!280 (List!2617) BalanceConc!1458)

(assert (=> b!150515 (= lt!43862 (seqFromList!280 tokens!465))))

(declare-fun b!150516 () Bool)

(declare-fun res!69006 () Bool)

(assert (=> b!150516 (=> (not res!69006) (not e!89820))))

(get-info :version)

(assert (=> b!150516 (= res!69006 ((_ is Cons!2607) tokens!465))))

(declare-fun tp!78520 () Bool)

(declare-fun b!150517 () Bool)

(assert (=> b!150517 (= e!89823 (and tp!78520 (inv!3398 (tag!629 (rule!958 separatorToken!170))) (inv!3401 (transformation!451 (rule!958 separatorToken!170))) e!89807))))

(declare-fun b!150518 () Bool)

(assert (=> b!150518 (= e!89820 e!89814)))

(declare-fun res!69013 () Bool)

(assert (=> b!150518 (=> (not res!69013) (not e!89814))))

(assert (=> b!150518 (= res!69013 (= lt!43861 lt!43859))))

(declare-fun printWithSeparatorTokenWhenNeededRec!20 (LexerInterface!337 List!2618 BalanceConc!1458 Token!646 Int) BalanceConc!1456)

(assert (=> b!150518 (= lt!43859 (list!913 (printWithSeparatorTokenWhenNeededRec!20 thiss!17480 rules!1920 lt!43862 separatorToken!170 0)))))

(declare-fun printWithSeparatorTokenWhenNeededList!30 (LexerInterface!337 List!2618 List!2617 Token!646) List!2616)

(assert (=> b!150518 (= lt!43861 (printWithSeparatorTokenWhenNeededList!30 thiss!17480 rules!1920 tokens!465 separatorToken!170))))

(assert (=> b!150519 (= e!89825 (and tp!78513 tp!78522))))

(declare-fun b!150520 () Bool)

(assert (=> b!150520 (= e!89822 false)))

(declare-fun b!150521 () Bool)

(declare-fun res!69014 () Bool)

(assert (=> b!150521 (=> (not res!69014) (not e!89820))))

(assert (=> b!150521 (= res!69014 (isSeparator!451 (rule!958 separatorToken!170)))))

(declare-fun b!150522 () Bool)

(declare-fun e!89808 () Bool)

(declare-fun tp!78515 () Bool)

(assert (=> b!150522 (= e!89808 (and e!89813 tp!78515))))

(declare-fun b!150512 () Bool)

(declare-fun res!69012 () Bool)

(assert (=> b!150512 (=> (not res!69012) (not e!89820))))

(declare-fun lambda!3850 () Int)

(declare-fun forall!439 (List!2617 Int) Bool)

(assert (=> b!150512 (= res!69012 (forall!439 tokens!465 lambda!3850))))

(declare-fun res!69015 () Bool)

(assert (=> start!16066 (=> (not res!69015) (not e!89810))))

(assert (=> start!16066 (= res!69015 ((_ is Lexer!335) thiss!17480))))

(assert (=> start!16066 e!89810))

(assert (=> start!16066 true))

(assert (=> start!16066 e!89808))

(assert (=> start!16066 (and (inv!3402 separatorToken!170) e!89821)))

(assert (=> start!16066 e!89818))

(assert (= (and start!16066 res!69015) b!150508))

(assert (= (and b!150508 res!69009) b!150510))

(assert (= (and b!150510 res!69007) b!150515))

(assert (= (and b!150515 res!69016) b!150514))

(assert (= (and b!150514 res!69017) b!150521))

(assert (= (and b!150521 res!69014) b!150512))

(assert (= (and b!150512 res!69012) b!150507))

(assert (= (and b!150507 res!69010) b!150516))

(assert (= (and b!150516 res!69006) b!150518))

(assert (= (and b!150518 res!69013) b!150504))

(assert (= (and b!150504 res!69011) b!150506))

(assert (= (and b!150506 res!69008) b!150520))

(assert (= b!150513 b!150505))

(assert (= b!150522 b!150513))

(assert (= (and start!16066 ((_ is Cons!2608) rules!1920)) b!150522))

(assert (= b!150517 b!150511))

(assert (= b!150502 b!150517))

(assert (= start!16066 b!150502))

(assert (= b!150501 b!150519))

(assert (= b!150509 b!150501))

(assert (= b!150503 b!150509))

(assert (= (and start!16066 ((_ is Cons!2607) tokens!465)) b!150503))

(declare-fun m!134385 () Bool)

(assert (=> b!150515 m!134385))

(declare-fun m!134387 () Bool)

(assert (=> b!150515 m!134387))

(declare-fun m!134389 () Bool)

(assert (=> start!16066 m!134389))

(declare-fun m!134391 () Bool)

(assert (=> b!150504 m!134391))

(assert (=> b!150504 m!134391))

(declare-fun m!134393 () Bool)

(assert (=> b!150504 m!134393))

(declare-fun m!134395 () Bool)

(assert (=> b!150517 m!134395))

(declare-fun m!134397 () Bool)

(assert (=> b!150517 m!134397))

(declare-fun m!134399 () Bool)

(assert (=> b!150513 m!134399))

(declare-fun m!134401 () Bool)

(assert (=> b!150513 m!134401))

(declare-fun m!134403 () Bool)

(assert (=> b!150510 m!134403))

(declare-fun m!134405 () Bool)

(assert (=> b!150503 m!134405))

(declare-fun m!134407 () Bool)

(assert (=> b!150507 m!134407))

(declare-fun m!134409 () Bool)

(assert (=> b!150501 m!134409))

(declare-fun m!134411 () Bool)

(assert (=> b!150501 m!134411))

(declare-fun m!134413 () Bool)

(assert (=> b!150508 m!134413))

(declare-fun m!134415 () Bool)

(assert (=> b!150514 m!134415))

(declare-fun m!134417 () Bool)

(assert (=> b!150509 m!134417))

(declare-fun m!134419 () Bool)

(assert (=> b!150502 m!134419))

(declare-fun m!134421 () Bool)

(assert (=> b!150506 m!134421))

(declare-fun m!134423 () Bool)

(assert (=> b!150506 m!134423))

(assert (=> b!150506 m!134423))

(declare-fun m!134425 () Bool)

(assert (=> b!150506 m!134425))

(declare-fun m!134427 () Bool)

(assert (=> b!150512 m!134427))

(declare-fun m!134429 () Bool)

(assert (=> b!150518 m!134429))

(assert (=> b!150518 m!134429))

(declare-fun m!134431 () Bool)

(assert (=> b!150518 m!134431))

(declare-fun m!134433 () Bool)

(assert (=> b!150518 m!134433))

(check-sat (not b!150506) (not b_next!5451) (not b_next!5447) b_and!8589 (not b_next!5443) (not b!150515) (not b!150522) (not b!150509) b_and!8597 b_and!8599 (not b!150513) (not b!150518) (not b!150507) (not b!150503) (not b!150514) (not start!16066) b_and!8591 (not b_next!5441) (not b!150508) (not b!150510) (not b_next!5449) (not b_next!5445) b_and!8595 (not b!150502) (not b!150501) (not b!150504) (not b!150512) b_and!8593 (not b!150517))
(check-sat (not b_next!5451) (not b_next!5447) b_and!8589 b_and!8595 b_and!8593 (not b_next!5443) b_and!8597 b_and!8599 b_and!8591 (not b_next!5441) (not b_next!5449) (not b_next!5445))
