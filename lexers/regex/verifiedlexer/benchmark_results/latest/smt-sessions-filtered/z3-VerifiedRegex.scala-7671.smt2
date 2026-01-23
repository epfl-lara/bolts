; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!404322 () Bool)

(assert start!404322)

(declare-fun b!4227873 () Bool)

(declare-fun b_free!124763 () Bool)

(declare-fun b_next!125467 () Bool)

(assert (=> b!4227873 (= b_free!124763 (not b_next!125467))))

(declare-fun tp!1294900 () Bool)

(declare-fun b_and!333997 () Bool)

(assert (=> b!4227873 (= tp!1294900 b_and!333997)))

(declare-fun b_free!124765 () Bool)

(declare-fun b_next!125469 () Bool)

(assert (=> b!4227873 (= b_free!124765 (not b_next!125469))))

(declare-fun tp!1294899 () Bool)

(declare-fun b_and!333999 () Bool)

(assert (=> b!4227873 (= tp!1294899 b_and!333999)))

(declare-fun b!4227876 () Bool)

(declare-fun b_free!124767 () Bool)

(declare-fun b_next!125471 () Bool)

(assert (=> b!4227876 (= b_free!124767 (not b_next!125471))))

(declare-fun tp!1294894 () Bool)

(declare-fun b_and!334001 () Bool)

(assert (=> b!4227876 (= tp!1294894 b_and!334001)))

(declare-fun b_free!124769 () Bool)

(declare-fun b_next!125473 () Bool)

(assert (=> b!4227876 (= b_free!124769 (not b_next!125473))))

(declare-fun tp!1294898 () Bool)

(declare-fun b_and!334003 () Bool)

(assert (=> b!4227876 (= tp!1294898 b_and!334003)))

(declare-fun tp!1294896 () Bool)

(declare-fun b!4227869 () Bool)

(declare-fun e!2625150 () Bool)

(declare-datatypes ((C!25716 0))(
  ( (C!25717 (val!15020 Int)) )
))
(declare-datatypes ((List!46771 0))(
  ( (Nil!46647) (Cons!46647 (h!52067 C!25716) (t!349388 List!46771)) )
))
(declare-datatypes ((IArray!28139 0))(
  ( (IArray!28140 (innerList!14127 List!46771)) )
))
(declare-datatypes ((Conc!14067 0))(
  ( (Node!14067 (left!34698 Conc!14067) (right!35028 Conc!14067) (csize!28364 Int) (cheight!14278 Int)) (Leaf!21739 (xs!17373 IArray!28139) (csize!28365 Int)) (Empty!14067) )
))
(declare-datatypes ((List!46772 0))(
  ( (Nil!46648) (Cons!46648 (h!52068 (_ BitVec 16)) (t!349389 List!46772)) )
))
(declare-datatypes ((Regex!12761 0))(
  ( (ElementMatch!12761 (c!718742 C!25716)) (Concat!20847 (regOne!26034 Regex!12761) (regTwo!26034 Regex!12761)) (EmptyExpr!12761) (Star!12761 (reg!13090 Regex!12761)) (EmptyLang!12761) (Union!12761 (regOne!26035 Regex!12761) (regTwo!26035 Regex!12761)) )
))
(declare-datatypes ((String!54299 0))(
  ( (String!54300 (value!244370 String)) )
))
(declare-datatypes ((TokenValue!8086 0))(
  ( (FloatLiteralValue!16172 (text!57047 List!46772)) (TokenValueExt!8085 (__x!28395 Int)) (Broken!40430 (value!244371 List!46772)) (Object!8209) (End!8086) (Def!8086) (Underscore!8086) (Match!8086) (Else!8086) (Error!8086) (Case!8086) (If!8086) (Extends!8086) (Abstract!8086) (Class!8086) (Val!8086) (DelimiterValue!16172 (del!8146 List!46772)) (KeywordValue!8092 (value!244372 List!46772)) (CommentValue!16172 (value!244373 List!46772)) (WhitespaceValue!16172 (value!244374 List!46772)) (IndentationValue!8086 (value!244375 List!46772)) (String!54301) (Int32!8086) (Broken!40431 (value!244376 List!46772)) (Boolean!8087) (Unit!65756) (OperatorValue!8089 (op!8146 List!46772)) (IdentifierValue!16172 (value!244377 List!46772)) (IdentifierValue!16173 (value!244378 List!46772)) (WhitespaceValue!16173 (value!244379 List!46772)) (True!16172) (False!16172) (Broken!40432 (value!244380 List!46772)) (Broken!40433 (value!244381 List!46772)) (True!16173) (RightBrace!8086) (RightBracket!8086) (Colon!8086) (Null!8086) (Comma!8086) (LeftBracket!8086) (False!16173) (LeftBrace!8086) (ImaginaryLiteralValue!8086 (text!57048 List!46772)) (StringLiteralValue!24258 (value!244382 List!46772)) (EOFValue!8086 (value!244383 List!46772)) (IdentValue!8086 (value!244384 List!46772)) (DelimiterValue!16173 (value!244385 List!46772)) (DedentValue!8086 (value!244386 List!46772)) (NewLineValue!8086 (value!244387 List!46772)) (IntegerValue!24258 (value!244388 (_ BitVec 32)) (text!57049 List!46772)) (IntegerValue!24259 (value!244389 Int) (text!57050 List!46772)) (Times!8086) (Or!8086) (Equal!8086) (Minus!8086) (Broken!40434 (value!244390 List!46772)) (And!8086) (Div!8086) (LessEqual!8086) (Mod!8086) (Concat!20848) (Not!8086) (Plus!8086) (SpaceValue!8086 (value!244391 List!46772)) (IntegerValue!24260 (value!244392 Int) (text!57051 List!46772)) (StringLiteralValue!24259 (text!57052 List!46772)) (FloatLiteralValue!16173 (text!57053 List!46772)) (BytesLiteralValue!8086 (value!244393 List!46772)) (CommentValue!16173 (value!244394 List!46772)) (StringLiteralValue!24260 (value!244395 List!46772)) (ErrorTokenValue!8086 (msg!8147 List!46772)) )
))
(declare-datatypes ((BalanceConc!27728 0))(
  ( (BalanceConc!27729 (c!718743 Conc!14067)) )
))
(declare-datatypes ((TokenValueInjection!15600 0))(
  ( (TokenValueInjection!15601 (toValue!10584 Int) (toChars!10443 Int)) )
))
(declare-datatypes ((Rule!15512 0))(
  ( (Rule!15513 (regex!7856 Regex!12761) (tag!8720 String!54299) (isSeparator!7856 Bool) (transformation!7856 TokenValueInjection!15600)) )
))
(declare-fun r!4367 () Rule!15512)

(declare-fun e!2625153 () Bool)

(declare-fun inv!61296 (String!54299) Bool)

(declare-fun inv!61298 (TokenValueInjection!15600) Bool)

(assert (=> b!4227869 (= e!2625150 (and tp!1294896 (inv!61296 (tag!8720 r!4367)) (inv!61298 (transformation!7856 r!4367)) e!2625153))))

(declare-fun b!4227870 () Bool)

(declare-fun e!2625148 () Bool)

(declare-fun e!2625151 () Bool)

(declare-fun tp!1294895 () Bool)

(assert (=> b!4227870 (= e!2625148 (and e!2625151 tp!1294895))))

(declare-fun b!4227871 () Bool)

(declare-fun res!1738497 () Bool)

(declare-fun e!2625154 () Bool)

(assert (=> b!4227871 (=> (not res!1738497) (not e!2625154))))

(declare-datatypes ((LexerInterface!7451 0))(
  ( (LexerInterfaceExt!7448 (__x!28396 Int)) (Lexer!7449) )
))
(declare-fun thiss!26827 () LexerInterface!7451)

(declare-datatypes ((List!46773 0))(
  ( (Nil!46649) (Cons!46649 (h!52069 Rule!15512) (t!349390 List!46773)) )
))
(declare-fun rules!4024 () List!46773)

(declare-fun rulesValidInductive!2958 (LexerInterface!7451 List!46773) Bool)

(assert (=> b!4227871 (= res!1738497 (rulesValidInductive!2958 thiss!26827 rules!4024))))

(declare-fun b!4227872 () Bool)

(declare-fun e!2625149 () Bool)

(declare-fun tp!1294897 () Bool)

(assert (=> b!4227872 (= e!2625151 (and tp!1294897 (inv!61296 (tag!8720 (h!52069 rules!4024))) (inv!61298 (transformation!7856 (h!52069 rules!4024))) e!2625149))))

(declare-fun res!1738496 () Bool)

(assert (=> start!404322 (=> (not res!1738496) (not e!2625154))))

(get-info :version)

(assert (=> start!404322 (= res!1738496 ((_ is Lexer!7449) thiss!26827))))

(assert (=> start!404322 e!2625154))

(assert (=> start!404322 true))

(assert (=> start!404322 e!2625148))

(assert (=> start!404322 e!2625150))

(assert (=> b!4227873 (= e!2625149 (and tp!1294900 tp!1294899))))

(declare-fun b!4227874 () Bool)

(declare-fun res!1738498 () Bool)

(assert (=> b!4227874 (=> (not res!1738498) (not e!2625154))))

(declare-fun contains!9679 (List!46773 Rule!15512) Bool)

(assert (=> b!4227874 (= res!1738498 (contains!9679 rules!4024 r!4367))))

(declare-fun b!4227875 () Bool)

(assert (=> b!4227875 (= e!2625154 (and (or (not ((_ is Cons!46649) rules!4024)) (not (= (h!52069 rules!4024) r!4367))) (or (not ((_ is Cons!46649) rules!4024)) (= (h!52069 rules!4024) r!4367)) (not ((_ is Nil!46649) rules!4024))))))

(assert (=> b!4227876 (= e!2625153 (and tp!1294894 tp!1294898))))

(assert (= (and start!404322 res!1738496) b!4227874))

(assert (= (and b!4227874 res!1738498) b!4227871))

(assert (= (and b!4227871 res!1738497) b!4227875))

(assert (= b!4227872 b!4227873))

(assert (= b!4227870 b!4227872))

(assert (= (and start!404322 ((_ is Cons!46649) rules!4024)) b!4227870))

(assert (= b!4227869 b!4227876))

(assert (= start!404322 b!4227869))

(declare-fun m!4815131 () Bool)

(assert (=> b!4227869 m!4815131))

(declare-fun m!4815133 () Bool)

(assert (=> b!4227869 m!4815133))

(declare-fun m!4815135 () Bool)

(assert (=> b!4227871 m!4815135))

(declare-fun m!4815137 () Bool)

(assert (=> b!4227872 m!4815137))

(declare-fun m!4815139 () Bool)

(assert (=> b!4227872 m!4815139))

(declare-fun m!4815141 () Bool)

(assert (=> b!4227874 m!4815141))

(check-sat b_and!334003 (not b_next!125471) (not b!4227872) (not b_next!125469) (not b!4227871) (not b_next!125473) (not b_next!125467) b_and!334001 (not b!4227874) b_and!333997 (not b!4227869) (not b!4227870) b_and!333999)
(check-sat b_and!334003 (not b_next!125471) (not b_next!125469) (not b_next!125473) (not b_next!125467) b_and!334001 b_and!333997 b_and!333999)
