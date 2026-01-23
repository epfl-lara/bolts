; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!513586 () Bool)

(assert start!513586)

(declare-fun b!4901798 () Bool)

(declare-fun b_free!131759 () Bool)

(declare-fun b_next!132549 () Bool)

(assert (=> b!4901798 (= b_free!131759 (not b_next!132549))))

(declare-fun tp!1379211 () Bool)

(declare-fun b_and!346151 () Bool)

(assert (=> b!4901798 (= tp!1379211 b_and!346151)))

(declare-fun b_free!131761 () Bool)

(declare-fun b_next!132551 () Bool)

(assert (=> b!4901798 (= b_free!131761 (not b_next!132551))))

(declare-fun tp!1379209 () Bool)

(declare-fun b_and!346153 () Bool)

(assert (=> b!4901798 (= tp!1379209 b_and!346153)))

(declare-fun e!3064039 () Bool)

(assert (=> b!4901798 (= e!3064039 (and tp!1379211 tp!1379209))))

(declare-fun b!4901799 () Bool)

(declare-fun res!2093707 () Bool)

(declare-fun e!3064040 () Bool)

(assert (=> b!4901799 (=> (not res!2093707) (not e!3064040))))

(declare-datatypes ((C!26742 0))(
  ( (C!26743 (val!22705 Int)) )
))
(declare-datatypes ((Regex!13272 0))(
  ( (ElementMatch!13272 (c!833145 C!26742)) (Concat!21779 (regOne!27056 Regex!13272) (regTwo!27056 Regex!13272)) (EmptyExpr!13272) (Star!13272 (reg!13601 Regex!13272)) (EmptyLang!13272) (Union!13272 (regOne!27057 Regex!13272) (regTwo!27057 Regex!13272)) )
))
(declare-datatypes ((String!63978 0))(
  ( (String!63979 (value!262734 String)) )
))
(declare-datatypes ((List!56592 0))(
  ( (Nil!56468) (Cons!56468 (h!62916 (_ BitVec 16)) (t!366684 List!56592)) )
))
(declare-datatypes ((TokenValue!8507 0))(
  ( (FloatLiteralValue!17014 (text!59994 List!56592)) (TokenValueExt!8506 (__x!34307 Int)) (Broken!42535 (value!262735 List!56592)) (Object!8630) (End!8507) (Def!8507) (Underscore!8507) (Match!8507) (Else!8507) (Error!8507) (Case!8507) (If!8507) (Extends!8507) (Abstract!8507) (Class!8507) (Val!8507) (DelimiterValue!17014 (del!8567 List!56592)) (KeywordValue!8513 (value!262736 List!56592)) (CommentValue!17014 (value!262737 List!56592)) (WhitespaceValue!17014 (value!262738 List!56592)) (IndentationValue!8507 (value!262739 List!56592)) (String!63980) (Int32!8507) (Broken!42536 (value!262740 List!56592)) (Boolean!8508) (Unit!146563) (OperatorValue!8510 (op!8567 List!56592)) (IdentifierValue!17014 (value!262741 List!56592)) (IdentifierValue!17015 (value!262742 List!56592)) (WhitespaceValue!17015 (value!262743 List!56592)) (True!17014) (False!17014) (Broken!42537 (value!262744 List!56592)) (Broken!42538 (value!262745 List!56592)) (True!17015) (RightBrace!8507) (RightBracket!8507) (Colon!8507) (Null!8507) (Comma!8507) (LeftBracket!8507) (False!17015) (LeftBrace!8507) (ImaginaryLiteralValue!8507 (text!59995 List!56592)) (StringLiteralValue!25521 (value!262746 List!56592)) (EOFValue!8507 (value!262747 List!56592)) (IdentValue!8507 (value!262748 List!56592)) (DelimiterValue!17015 (value!262749 List!56592)) (DedentValue!8507 (value!262750 List!56592)) (NewLineValue!8507 (value!262751 List!56592)) (IntegerValue!25521 (value!262752 (_ BitVec 32)) (text!59996 List!56592)) (IntegerValue!25522 (value!262753 Int) (text!59997 List!56592)) (Times!8507) (Or!8507) (Equal!8507) (Minus!8507) (Broken!42539 (value!262754 List!56592)) (And!8507) (Div!8507) (LessEqual!8507) (Mod!8507) (Concat!21780) (Not!8507) (Plus!8507) (SpaceValue!8507 (value!262755 List!56592)) (IntegerValue!25523 (value!262756 Int) (text!59998 List!56592)) (StringLiteralValue!25522 (text!59999 List!56592)) (FloatLiteralValue!17015 (text!60000 List!56592)) (BytesLiteralValue!8507 (value!262757 List!56592)) (CommentValue!17015 (value!262758 List!56592)) (StringLiteralValue!25523 (value!262759 List!56592)) (ErrorTokenValue!8507 (msg!8568 List!56592)) )
))
(declare-datatypes ((List!56593 0))(
  ( (Nil!56469) (Cons!56469 (h!62917 C!26742) (t!366685 List!56593)) )
))
(declare-datatypes ((IArray!29591 0))(
  ( (IArray!29592 (innerList!14853 List!56593)) )
))
(declare-datatypes ((Conc!14765 0))(
  ( (Node!14765 (left!41038 Conc!14765) (right!41368 Conc!14765) (csize!29760 Int) (cheight!14976 Int)) (Leaf!24581 (xs!18081 IArray!29591) (csize!29761 Int)) (Empty!14765) )
))
(declare-datatypes ((BalanceConc!28960 0))(
  ( (BalanceConc!28961 (c!833146 Conc!14765)) )
))
(declare-datatypes ((TokenValueInjection!16322 0))(
  ( (TokenValueInjection!16323 (toValue!11108 Int) (toChars!10967 Int)) )
))
(declare-datatypes ((Rule!16194 0))(
  ( (Rule!16195 (regex!8197 Regex!13272) (tag!9061 String!63978) (isSeparator!8197 Bool) (transformation!8197 TokenValueInjection!16322)) )
))
(declare-fun rule!164 () Rule!16194)

(declare-fun input!1509 () BalanceConc!28960)

(declare-fun isEmpty!30331 (BalanceConc!28960) Bool)

(declare-datatypes ((tuple2!60560 0))(
  ( (tuple2!60561 (_1!33583 BalanceConc!28960) (_2!33583 BalanceConc!28960)) )
))
(declare-fun findLongestMatchWithZipperSequence!285 (Regex!13272 BalanceConc!28960) tuple2!60560)

(assert (=> b!4901799 (= res!2093707 (not (isEmpty!30331 (_1!33583 (findLongestMatchWithZipperSequence!285 (regex!8197 rule!164) input!1509)))))))

(declare-fun e!3064042 () Bool)

(declare-fun tp!1379208 () Bool)

(declare-fun b!4901800 () Bool)

(declare-fun inv!72816 (String!63978) Bool)

(declare-fun inv!72819 (TokenValueInjection!16322) Bool)

(assert (=> b!4901800 (= e!3064042 (and tp!1379208 (inv!72816 (tag!9061 rule!164)) (inv!72819 (transformation!8197 rule!164)) e!3064039))))

(declare-fun res!2093708 () Bool)

(assert (=> start!513586 (=> (not res!2093708) (not e!3064040))))

(declare-datatypes ((LexerInterface!7789 0))(
  ( (LexerInterfaceExt!7786 (__x!34308 Int)) (Lexer!7787) )
))
(declare-fun thiss!15943 () LexerInterface!7789)

(assert (=> start!513586 (= res!2093708 (is-Lexer!7787 thiss!15943))))

(assert (=> start!513586 e!3064040))

(assert (=> start!513586 true))

(assert (=> start!513586 e!3064042))

(declare-fun e!3064041 () Bool)

(declare-fun inv!72820 (BalanceConc!28960) Bool)

(assert (=> start!513586 (and (inv!72820 input!1509) e!3064041)))

(declare-fun b!4901801 () Bool)

(declare-fun tp!1379210 () Bool)

(declare-fun inv!72821 (Conc!14765) Bool)

(assert (=> b!4901801 (= e!3064041 (and (inv!72821 (c!833146 input!1509)) tp!1379210))))

(declare-fun b!4901802 () Bool)

(assert (=> b!4901802 (= e!3064040 false)))

(declare-fun lt!2009996 () List!56593)

(declare-fun list!17767 (BalanceConc!28960) List!56593)

(assert (=> b!4901802 (= lt!2009996 (list!17767 input!1509))))

(declare-fun b!4901803 () Bool)

(declare-fun res!2093709 () Bool)

(assert (=> b!4901803 (=> (not res!2093709) (not e!3064040))))

(declare-fun ruleValid!3694 (LexerInterface!7789 Rule!16194) Bool)

(assert (=> b!4901803 (= res!2093709 (ruleValid!3694 thiss!15943 rule!164))))

(assert (= (and start!513586 res!2093708) b!4901803))

(assert (= (and b!4901803 res!2093709) b!4901799))

(assert (= (and b!4901799 res!2093707) b!4901802))

(assert (= b!4901800 b!4901798))

(assert (= start!513586 b!4901800))

(assert (= start!513586 b!4901801))

(declare-fun m!5910442 () Bool)

(assert (=> b!4901801 m!5910442))

(declare-fun m!5910444 () Bool)

(assert (=> b!4901799 m!5910444))

(declare-fun m!5910446 () Bool)

(assert (=> b!4901799 m!5910446))

(declare-fun m!5910448 () Bool)

(assert (=> start!513586 m!5910448))

(declare-fun m!5910450 () Bool)

(assert (=> b!4901802 m!5910450))

(declare-fun m!5910452 () Bool)

(assert (=> b!4901803 m!5910452))

(declare-fun m!5910454 () Bool)

(assert (=> b!4901800 m!5910454))

(declare-fun m!5910456 () Bool)

(assert (=> b!4901800 m!5910456))

(push 1)

(assert (not b!4901799))

(assert (not b!4901801))

(assert (not b!4901802))

(assert (not b_next!132551))

(assert (not b!4901803))

(assert (not b!4901800))

(assert (not start!513586))

(assert b_and!346151)

(assert (not b_next!132549))

(assert b_and!346153)

(check-sat)

(pop 1)

(push 1)

(assert b_and!346153)

(assert b_and!346151)

(assert (not b_next!132551))

(assert (not b_next!132549))

(check-sat)

(pop 1)

