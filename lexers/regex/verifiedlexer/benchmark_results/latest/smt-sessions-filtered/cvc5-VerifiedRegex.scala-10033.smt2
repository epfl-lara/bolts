; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!525132 () Bool)

(assert start!525132)

(declare-fun b!4976699 () Bool)

(declare-fun b_free!132967 () Bool)

(declare-fun b_next!133757 () Bool)

(assert (=> b!4976699 (= b_free!132967 (not b_next!133757))))

(declare-fun tp!1395536 () Bool)

(declare-fun b_and!349379 () Bool)

(assert (=> b!4976699 (= tp!1395536 b_and!349379)))

(declare-fun b_free!132969 () Bool)

(declare-fun b_next!133759 () Bool)

(assert (=> b!4976699 (= b_free!132969 (not b_next!133759))))

(declare-fun tp!1395535 () Bool)

(declare-fun b_and!349381 () Bool)

(assert (=> b!4976699 (= tp!1395535 b_and!349381)))

(declare-fun b!4976697 () Bool)

(declare-fun res!2124356 () Bool)

(declare-fun e!3110366 () Bool)

(assert (=> b!4976697 (=> (not res!2124356) (not e!3110366))))

(declare-datatypes ((C!27550 0))(
  ( (C!27551 (val!23141 Int)) )
))
(declare-datatypes ((List!57630 0))(
  ( (Nil!57506) (Cons!57506 (h!63954 C!27550) (t!369642 List!57630)) )
))
(declare-datatypes ((IArray!30399 0))(
  ( (IArray!30400 (innerList!15257 List!57630)) )
))
(declare-datatypes ((Conc!15169 0))(
  ( (Node!15169 (left!41960 Conc!15169) (right!42290 Conc!15169) (csize!30568 Int) (cheight!15380 Int)) (Leaf!25203 (xs!18495 IArray!30399) (csize!30569 Int)) (Empty!15169) )
))
(declare-datatypes ((BalanceConc!29768 0))(
  ( (BalanceConc!29769 (c!849201 Conc!15169)) )
))
(declare-fun totalInput!520 () BalanceConc!29768)

(declare-fun input!1580 () BalanceConc!29768)

(declare-datatypes ((List!57631 0))(
  ( (Nil!57507) (Cons!57507 (h!63955 (_ BitVec 16)) (t!369643 List!57631)) )
))
(declare-datatypes ((Regex!13650 0))(
  ( (ElementMatch!13650 (c!849202 C!27550)) (Concat!22377 (regOne!27812 Regex!13650) (regTwo!27812 Regex!13650)) (EmptyExpr!13650) (Star!13650 (reg!13979 Regex!13650)) (EmptyLang!13650) (Union!13650 (regOne!27813 Regex!13650) (regTwo!27813 Regex!13650)) )
))
(declare-datatypes ((String!65510 0))(
  ( (String!65511 (value!269292 String)) )
))
(declare-datatypes ((TokenValue!8727 0))(
  ( (FloatLiteralValue!17454 (text!61534 List!57631)) (TokenValueExt!8726 (__x!34747 Int)) (Broken!43635 (value!269293 List!57631)) (Object!8850) (End!8727) (Def!8727) (Underscore!8727) (Match!8727) (Else!8727) (Error!8727) (Case!8727) (If!8727) (Extends!8727) (Abstract!8727) (Class!8727) (Val!8727) (DelimiterValue!17454 (del!8787 List!57631)) (KeywordValue!8733 (value!269294 List!57631)) (CommentValue!17454 (value!269295 List!57631)) (WhitespaceValue!17454 (value!269296 List!57631)) (IndentationValue!8727 (value!269297 List!57631)) (String!65512) (Int32!8727) (Broken!43636 (value!269298 List!57631)) (Boolean!8728) (Unit!148490) (OperatorValue!8730 (op!8787 List!57631)) (IdentifierValue!17454 (value!269299 List!57631)) (IdentifierValue!17455 (value!269300 List!57631)) (WhitespaceValue!17455 (value!269301 List!57631)) (True!17454) (False!17454) (Broken!43637 (value!269302 List!57631)) (Broken!43638 (value!269303 List!57631)) (True!17455) (RightBrace!8727) (RightBracket!8727) (Colon!8727) (Null!8727) (Comma!8727) (LeftBracket!8727) (False!17455) (LeftBrace!8727) (ImaginaryLiteralValue!8727 (text!61535 List!57631)) (StringLiteralValue!26181 (value!269304 List!57631)) (EOFValue!8727 (value!269305 List!57631)) (IdentValue!8727 (value!269306 List!57631)) (DelimiterValue!17455 (value!269307 List!57631)) (DedentValue!8727 (value!269308 List!57631)) (NewLineValue!8727 (value!269309 List!57631)) (IntegerValue!26181 (value!269310 (_ BitVec 32)) (text!61536 List!57631)) (IntegerValue!26182 (value!269311 Int) (text!61537 List!57631)) (Times!8727) (Or!8727) (Equal!8727) (Minus!8727) (Broken!43639 (value!269312 List!57631)) (And!8727) (Div!8727) (LessEqual!8727) (Mod!8727) (Concat!22378) (Not!8727) (Plus!8727) (SpaceValue!8727 (value!269313 List!57631)) (IntegerValue!26183 (value!269314 Int) (text!61538 List!57631)) (StringLiteralValue!26182 (text!61539 List!57631)) (FloatLiteralValue!17455 (text!61540 List!57631)) (BytesLiteralValue!8727 (value!269315 List!57631)) (CommentValue!17455 (value!269316 List!57631)) (StringLiteralValue!26183 (value!269317 List!57631)) (ErrorTokenValue!8727 (msg!8788 List!57631)) )
))
(declare-datatypes ((TokenValueInjection!16762 0))(
  ( (TokenValueInjection!16763 (toValue!11392 Int) (toChars!11251 Int)) )
))
(declare-datatypes ((Rule!16634 0))(
  ( (Rule!16635 (regex!8417 Regex!13650) (tag!9281 String!65510) (isSeparator!8417 Bool) (transformation!8417 TokenValueInjection!16762)) )
))
(declare-fun rule!200 () Rule!16634)

(declare-fun isEmpty!30997 (BalanceConc!29768) Bool)

(declare-datatypes ((tuple2!62268 0))(
  ( (tuple2!62269 (_1!34437 BalanceConc!29768) (_2!34437 BalanceConc!29768)) )
))
(declare-fun findLongestMatchWithZipperSequenceV2!180 (Regex!13650 BalanceConc!29768 BalanceConc!29768) tuple2!62268)

(assert (=> b!4976697 (= res!2124356 (not (isEmpty!30997 (_1!34437 (findLongestMatchWithZipperSequenceV2!180 (regex!8417 rule!200) input!1580 totalInput!520)))))))

(declare-fun e!3110369 () Bool)

(declare-fun e!3110371 () Bool)

(declare-fun tp!1395534 () Bool)

(declare-fun b!4976698 () Bool)

(declare-fun inv!75219 (String!65510) Bool)

(declare-fun inv!75222 (TokenValueInjection!16762) Bool)

(assert (=> b!4976698 (= e!3110371 (and tp!1395534 (inv!75219 (tag!9281 rule!200)) (inv!75222 (transformation!8417 rule!200)) e!3110369))))

(assert (=> b!4976699 (= e!3110369 (and tp!1395536 tp!1395535))))

(declare-fun b!4976700 () Bool)

(assert (=> b!4976700 (= e!3110366 false)))

(declare-fun b!4976701 () Bool)

(declare-fun res!2124354 () Bool)

(assert (=> b!4976701 (=> (not res!2124354) (not e!3110366))))

(declare-fun isSuffix!1216 (List!57630 List!57630) Bool)

(declare-fun list!18409 (BalanceConc!29768) List!57630)

(assert (=> b!4976701 (= res!2124354 (isSuffix!1216 (list!18409 input!1580) (list!18409 totalInput!520)))))

(declare-fun b!4976703 () Bool)

(declare-fun e!3110367 () Bool)

(declare-fun tp!1395533 () Bool)

(declare-fun inv!75223 (Conc!15169) Bool)

(assert (=> b!4976703 (= e!3110367 (and (inv!75223 (c!849201 totalInput!520)) tp!1395533))))

(declare-fun b!4976704 () Bool)

(declare-fun e!3110368 () Bool)

(declare-fun tp!1395537 () Bool)

(assert (=> b!4976704 (= e!3110368 (and (inv!75223 (c!849201 input!1580)) tp!1395537))))

(declare-fun b!4976702 () Bool)

(declare-fun res!2124355 () Bool)

(assert (=> b!4976702 (=> (not res!2124355) (not e!3110366))))

(declare-datatypes ((LexerInterface!8009 0))(
  ( (LexerInterfaceExt!8006 (__x!34748 Int)) (Lexer!8007) )
))
(declare-fun thiss!16165 () LexerInterface!8009)

(declare-fun ruleValid!3825 (LexerInterface!8009 Rule!16634) Bool)

(assert (=> b!4976702 (= res!2124355 (ruleValid!3825 thiss!16165 rule!200))))

(declare-fun res!2124357 () Bool)

(assert (=> start!525132 (=> (not res!2124357) (not e!3110366))))

(assert (=> start!525132 (= res!2124357 (is-Lexer!8007 thiss!16165))))

(assert (=> start!525132 e!3110366))

(assert (=> start!525132 true))

(assert (=> start!525132 e!3110371))

(declare-fun inv!75224 (BalanceConc!29768) Bool)

(assert (=> start!525132 (and (inv!75224 input!1580) e!3110368)))

(assert (=> start!525132 (and (inv!75224 totalInput!520) e!3110367)))

(assert (= (and start!525132 res!2124357) b!4976702))

(assert (= (and b!4976702 res!2124355) b!4976701))

(assert (= (and b!4976701 res!2124354) b!4976697))

(assert (= (and b!4976697 res!2124356) b!4976700))

(assert (= b!4976698 b!4976699))

(assert (= start!525132 b!4976698))

(assert (= start!525132 b!4976704))

(assert (= start!525132 b!4976703))

(declare-fun m!6006914 () Bool)

(assert (=> b!4976698 m!6006914))

(declare-fun m!6006916 () Bool)

(assert (=> b!4976698 m!6006916))

(declare-fun m!6006918 () Bool)

(assert (=> start!525132 m!6006918))

(declare-fun m!6006920 () Bool)

(assert (=> start!525132 m!6006920))

(declare-fun m!6006922 () Bool)

(assert (=> b!4976702 m!6006922))

(declare-fun m!6006924 () Bool)

(assert (=> b!4976703 m!6006924))

(declare-fun m!6006926 () Bool)

(assert (=> b!4976704 m!6006926))

(declare-fun m!6006928 () Bool)

(assert (=> b!4976701 m!6006928))

(declare-fun m!6006930 () Bool)

(assert (=> b!4976701 m!6006930))

(assert (=> b!4976701 m!6006928))

(assert (=> b!4976701 m!6006930))

(declare-fun m!6006932 () Bool)

(assert (=> b!4976701 m!6006932))

(declare-fun m!6006934 () Bool)

(assert (=> b!4976697 m!6006934))

(declare-fun m!6006936 () Bool)

(assert (=> b!4976697 m!6006936))

(push 1)

(assert (not b!4976701))

(assert (not b!4976698))

(assert (not b!4976704))

(assert (not start!525132))

(assert (not b!4976703))

(assert b_and!349379)

(assert (not b!4976702))

(assert (not b_next!133759))

(assert (not b!4976697))

(assert b_and!349381)

(assert (not b_next!133757))

(check-sat)

(pop 1)

(push 1)

(assert b_and!349381)

(assert b_and!349379)

(assert (not b_next!133759))

(assert (not b_next!133757))

(check-sat)

(pop 1)

