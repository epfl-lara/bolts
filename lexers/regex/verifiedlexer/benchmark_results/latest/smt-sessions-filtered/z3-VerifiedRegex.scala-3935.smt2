; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!215776 () Bool)

(assert start!215776)

(declare-fun b!2213768 () Bool)

(declare-fun b_free!63843 () Bool)

(declare-fun b_next!64547 () Bool)

(assert (=> b!2213768 (= b_free!63843 (not b_next!64547))))

(declare-fun tp!687844 () Bool)

(declare-fun b_and!173459 () Bool)

(assert (=> b!2213768 (= tp!687844 b_and!173459)))

(declare-fun b_free!63845 () Bool)

(declare-fun b_next!64549 () Bool)

(assert (=> b!2213768 (= b_free!63845 (not b_next!64549))))

(declare-fun tp!687838 () Bool)

(declare-fun b_and!173461 () Bool)

(assert (=> b!2213768 (= tp!687838 b_and!173461)))

(declare-fun b_free!63847 () Bool)

(declare-fun b_next!64551 () Bool)

(assert (=> start!215776 (= b_free!63847 (not b_next!64551))))

(declare-fun tp!687843 () Bool)

(declare-fun b_and!173463 () Bool)

(assert (=> start!215776 (= tp!687843 b_and!173463)))

(declare-fun b!2213769 () Bool)

(declare-fun b_free!63849 () Bool)

(declare-fun b_next!64553 () Bool)

(assert (=> b!2213769 (= b_free!63849 (not b_next!64553))))

(declare-fun tp!687846 () Bool)

(declare-fun b_and!173465 () Bool)

(assert (=> b!2213769 (= tp!687846 b_and!173465)))

(declare-fun b_free!63851 () Bool)

(declare-fun b_next!64555 () Bool)

(assert (=> b!2213769 (= b_free!63851 (not b_next!64555))))

(declare-fun tp!687837 () Bool)

(declare-fun b_and!173467 () Bool)

(assert (=> b!2213769 (= tp!687837 b_and!173467)))

(declare-fun b!2213763 () Bool)

(declare-fun res!951425 () Bool)

(declare-fun e!1413626 () Bool)

(assert (=> b!2213763 (=> (not res!951425) (not e!1413626))))

(declare-fun i!1797 () Int)

(assert (=> b!2213763 (= res!951425 (>= i!1797 0))))

(declare-fun b!2213764 () Bool)

(declare-fun e!1413625 () Bool)

(declare-fun e!1413631 () Bool)

(declare-fun tp!687845 () Bool)

(assert (=> b!2213764 (= e!1413625 (and e!1413631 tp!687845))))

(declare-fun res!951426 () Bool)

(assert (=> start!215776 (=> (not res!951426) (not e!1413626))))

(declare-datatypes ((LexerInterface!3764 0))(
  ( (LexerInterfaceExt!3761 (__x!17059 Int)) (Lexer!3762) )
))
(declare-fun thiss!27908 () LexerInterface!3764)

(get-info :version)

(assert (=> start!215776 (= res!951426 ((_ is Lexer!3762) thiss!27908))))

(assert (=> start!215776 e!1413626))

(assert (=> start!215776 true))

(assert (=> start!215776 e!1413625))

(assert (=> start!215776 tp!687843))

(declare-fun e!1413633 () Bool)

(assert (=> start!215776 e!1413633))

(declare-fun tp!687842 () Bool)

(declare-fun b!2213765 () Bool)

(declare-fun e!1413629 () Bool)

(declare-fun e!1413627 () Bool)

(declare-datatypes ((List!25961 0))(
  ( (Nil!25877) (Cons!25877 (h!31278 (_ BitVec 16)) (t!198737 List!25961)) )
))
(declare-datatypes ((TokenValue!4303 0))(
  ( (FloatLiteralValue!8606 (text!30566 List!25961)) (TokenValueExt!4302 (__x!17060 Int)) (Broken!21515 (value!131466 List!25961)) (Object!4386) (End!4303) (Def!4303) (Underscore!4303) (Match!4303) (Else!4303) (Error!4303) (Case!4303) (If!4303) (Extends!4303) (Abstract!4303) (Class!4303) (Val!4303) (DelimiterValue!8606 (del!4363 List!25961)) (KeywordValue!4309 (value!131467 List!25961)) (CommentValue!8606 (value!131468 List!25961)) (WhitespaceValue!8606 (value!131469 List!25961)) (IndentationValue!4303 (value!131470 List!25961)) (String!28190) (Int32!4303) (Broken!21516 (value!131471 List!25961)) (Boolean!4304) (Unit!38915) (OperatorValue!4306 (op!4363 List!25961)) (IdentifierValue!8606 (value!131472 List!25961)) (IdentifierValue!8607 (value!131473 List!25961)) (WhitespaceValue!8607 (value!131474 List!25961)) (True!8606) (False!8606) (Broken!21517 (value!131475 List!25961)) (Broken!21518 (value!131476 List!25961)) (True!8607) (RightBrace!4303) (RightBracket!4303) (Colon!4303) (Null!4303) (Comma!4303) (LeftBracket!4303) (False!8607) (LeftBrace!4303) (ImaginaryLiteralValue!4303 (text!30567 List!25961)) (StringLiteralValue!12909 (value!131477 List!25961)) (EOFValue!4303 (value!131478 List!25961)) (IdentValue!4303 (value!131479 List!25961)) (DelimiterValue!8607 (value!131480 List!25961)) (DedentValue!4303 (value!131481 List!25961)) (NewLineValue!4303 (value!131482 List!25961)) (IntegerValue!12909 (value!131483 (_ BitVec 32)) (text!30568 List!25961)) (IntegerValue!12910 (value!131484 Int) (text!30569 List!25961)) (Times!4303) (Or!4303) (Equal!4303) (Minus!4303) (Broken!21519 (value!131485 List!25961)) (And!4303) (Div!4303) (LessEqual!4303) (Mod!4303) (Concat!10614) (Not!4303) (Plus!4303) (SpaceValue!4303 (value!131486 List!25961)) (IntegerValue!12911 (value!131487 Int) (text!30570 List!25961)) (StringLiteralValue!12910 (text!30571 List!25961)) (FloatLiteralValue!8607 (text!30572 List!25961)) (BytesLiteralValue!4303 (value!131488 List!25961)) (CommentValue!8607 (value!131489 List!25961)) (StringLiteralValue!12911 (value!131490 List!25961)) (ErrorTokenValue!4303 (msg!4364 List!25961)) )
))
(declare-datatypes ((String!28191 0))(
  ( (String!28192 (value!131491 String)) )
))
(declare-datatypes ((C!12768 0))(
  ( (C!12769 (val!7396 Int)) )
))
(declare-datatypes ((List!25962 0))(
  ( (Nil!25878) (Cons!25878 (h!31279 C!12768) (t!198738 List!25962)) )
))
(declare-datatypes ((IArray!16943 0))(
  ( (IArray!16944 (innerList!8529 List!25962)) )
))
(declare-datatypes ((Conc!8469 0))(
  ( (Node!8469 (left!19908 Conc!8469) (right!20238 Conc!8469) (csize!17168 Int) (cheight!8680 Int)) (Leaf!12405 (xs!11411 IArray!16943) (csize!17169 Int)) (Empty!8469) )
))
(declare-datatypes ((BalanceConc!16656 0))(
  ( (BalanceConc!16657 (c!353809 Conc!8469)) )
))
(declare-datatypes ((Regex!6311 0))(
  ( (ElementMatch!6311 (c!353810 C!12768)) (Concat!10615 (regOne!13134 Regex!6311) (regTwo!13134 Regex!6311)) (EmptyExpr!6311) (Star!6311 (reg!6640 Regex!6311)) (EmptyLang!6311) (Union!6311 (regOne!13135 Regex!6311) (regTwo!13135 Regex!6311)) )
))
(declare-datatypes ((TokenValueInjection!8190 0))(
  ( (TokenValueInjection!8191 (toValue!5878 Int) (toChars!5737 Int)) )
))
(declare-datatypes ((Rule!8134 0))(
  ( (Rule!8135 (regex!4167 Regex!6311) (tag!4657 String!28191) (isSeparator!4167 Bool) (transformation!4167 TokenValueInjection!8190)) )
))
(declare-datatypes ((Token!7816 0))(
  ( (Token!7817 (value!131492 TokenValue!4303) (rule!6467 Rule!8134) (size!20207 Int) (originalCharacters!4939 List!25962)) )
))
(declare-datatypes ((List!25963 0))(
  ( (Nil!25879) (Cons!25879 (h!31280 Token!7816) (t!198739 List!25963)) )
))
(declare-fun l!6601 () List!25963)

(declare-fun inv!21 (TokenValue!4303) Bool)

(assert (=> b!2213765 (= e!1413627 (and (inv!21 (value!131492 (h!31280 l!6601))) e!1413629 tp!687842))))

(declare-fun tp!687839 () Bool)

(declare-fun b!2213766 () Bool)

(declare-fun inv!35080 (Token!7816) Bool)

(assert (=> b!2213766 (= e!1413633 (and (inv!35080 (h!31280 l!6601)) e!1413627 tp!687839))))

(declare-fun b!2213767 () Bool)

(declare-fun lt!826725 () Int)

(assert (=> b!2213767 (= e!1413626 (and (< (+ 1 i!1797) lt!826725) (or (> 0 i!1797) (>= i!1797 lt!826725))))))

(declare-fun size!20208 (List!25963) Int)

(assert (=> b!2213767 (= lt!826725 (size!20208 l!6601))))

(declare-fun e!1413632 () Bool)

(assert (=> b!2213768 (= e!1413632 (and tp!687844 tp!687838))))

(declare-fun e!1413623 () Bool)

(assert (=> b!2213769 (= e!1413623 (and tp!687846 tp!687837))))

(declare-fun tp!687840 () Bool)

(declare-fun b!2213770 () Bool)

(declare-fun inv!35077 (String!28191) Bool)

(declare-fun inv!35081 (TokenValueInjection!8190) Bool)

(assert (=> b!2213770 (= e!1413629 (and tp!687840 (inv!35077 (tag!4657 (rule!6467 (h!31280 l!6601)))) (inv!35081 (transformation!4167 (rule!6467 (h!31280 l!6601)))) e!1413632))))

(declare-datatypes ((List!25964 0))(
  ( (Nil!25880) (Cons!25880 (h!31281 Rule!8134) (t!198740 List!25964)) )
))
(declare-fun rules!4462 () List!25964)

(declare-fun b!2213771 () Bool)

(declare-fun tp!687841 () Bool)

(assert (=> b!2213771 (= e!1413631 (and tp!687841 (inv!35077 (tag!4657 (h!31281 rules!4462))) (inv!35081 (transformation!4167 (h!31281 rules!4462))) e!1413623))))

(declare-fun b!2213772 () Bool)

(declare-fun res!951427 () Bool)

(assert (=> b!2213772 (=> (not res!951427) (not e!1413626))))

(declare-fun p!3128 () Int)

(declare-fun tokensListTwoByTwoPredicateList!34 (LexerInterface!3764 List!25963 List!25964 Int) Bool)

(assert (=> b!2213772 (= res!951427 (tokensListTwoByTwoPredicateList!34 thiss!27908 l!6601 rules!4462 p!3128))))

(assert (= (and start!215776 res!951426) b!2213772))

(assert (= (and b!2213772 res!951427) b!2213763))

(assert (= (and b!2213763 res!951425) b!2213767))

(assert (= b!2213771 b!2213769))

(assert (= b!2213764 b!2213771))

(assert (= (and start!215776 ((_ is Cons!25880) rules!4462)) b!2213764))

(assert (= b!2213770 b!2213768))

(assert (= b!2213765 b!2213770))

(assert (= b!2213766 b!2213765))

(assert (= (and start!215776 ((_ is Cons!25879) l!6601)) b!2213766))

(declare-fun m!2656103 () Bool)

(assert (=> b!2213772 m!2656103))

(declare-fun m!2656105 () Bool)

(assert (=> b!2213766 m!2656105))

(declare-fun m!2656107 () Bool)

(assert (=> b!2213767 m!2656107))

(declare-fun m!2656109 () Bool)

(assert (=> b!2213765 m!2656109))

(declare-fun m!2656111 () Bool)

(assert (=> b!2213770 m!2656111))

(declare-fun m!2656113 () Bool)

(assert (=> b!2213770 m!2656113))

(declare-fun m!2656115 () Bool)

(assert (=> b!2213771 m!2656115))

(declare-fun m!2656117 () Bool)

(assert (=> b!2213771 m!2656117))

(check-sat (not b!2213771) (not b_next!64549) (not b!2213770) (not b_next!64553) (not b!2213765) (not b_next!64551) b_and!173459 b_and!173465 b_and!173461 (not b!2213766) (not b!2213767) (not b!2213772) b_and!173467 b_and!173463 (not b_next!64547) (not b!2213764) (not b_next!64555))
(check-sat b_and!173461 (not b_next!64549) (not b_next!64553) (not b_next!64551) b_and!173459 b_and!173465 b_and!173467 b_and!173463 (not b_next!64547) (not b_next!64555))
