; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!404150 () Bool)

(assert start!404150)

(declare-fun b!4226530 () Bool)

(declare-fun b_free!124531 () Bool)

(declare-fun b_next!125235 () Bool)

(assert (=> b!4226530 (= b_free!124531 (not b_next!125235))))

(declare-fun tp!1293988 () Bool)

(declare-fun b_and!333765 () Bool)

(assert (=> b!4226530 (= tp!1293988 b_and!333765)))

(declare-fun b_free!124533 () Bool)

(declare-fun b_next!125237 () Bool)

(assert (=> b!4226530 (= b_free!124533 (not b_next!125237))))

(declare-fun tp!1293985 () Bool)

(declare-fun b_and!333767 () Bool)

(assert (=> b!4226530 (= tp!1293985 b_and!333767)))

(declare-fun b!4226528 () Bool)

(declare-fun b_free!124535 () Bool)

(declare-fun b_next!125239 () Bool)

(assert (=> b!4226528 (= b_free!124535 (not b_next!125239))))

(declare-fun tp!1293989 () Bool)

(declare-fun b_and!333769 () Bool)

(assert (=> b!4226528 (= tp!1293989 b_and!333769)))

(declare-fun b_free!124537 () Bool)

(declare-fun b_next!125241 () Bool)

(assert (=> b!4226528 (= b_free!124537 (not b_next!125241))))

(declare-fun tp!1293987 () Bool)

(declare-fun b_and!333771 () Bool)

(assert (=> b!4226528 (= tp!1293987 b_and!333771)))

(declare-fun res!1737910 () Bool)

(declare-fun e!2624127 () Bool)

(assert (=> start!404150 (=> (not res!1737910) (not e!2624127))))

(declare-datatypes ((LexerInterface!7429 0))(
  ( (LexerInterfaceExt!7426 (__x!28351 Int)) (Lexer!7427) )
))
(declare-fun thiss!26827 () LexerInterface!7429)

(get-info :version)

(assert (=> start!404150 (= res!1737910 ((_ is Lexer!7427) thiss!26827))))

(assert (=> start!404150 e!2624127))

(assert (=> start!404150 true))

(declare-fun e!2624131 () Bool)

(assert (=> start!404150 e!2624131))

(declare-fun e!2624128 () Bool)

(assert (=> start!404150 e!2624128))

(declare-fun b!4226526 () Bool)

(declare-fun e!2624132 () Bool)

(declare-fun tp!1293984 () Bool)

(assert (=> b!4226526 (= e!2624131 (and e!2624132 tp!1293984))))

(declare-fun b!4226527 () Bool)

(declare-fun res!1737909 () Bool)

(assert (=> b!4226527 (=> (not res!1737909) (not e!2624127))))

(declare-datatypes ((C!25672 0))(
  ( (C!25673 (val!14998 Int)) )
))
(declare-datatypes ((List!46705 0))(
  ( (Nil!46581) (Cons!46581 (h!52001 C!25672) (t!349322 List!46705)) )
))
(declare-datatypes ((IArray!28095 0))(
  ( (IArray!28096 (innerList!14105 List!46705)) )
))
(declare-datatypes ((Conc!14045 0))(
  ( (Node!14045 (left!34637 Conc!14045) (right!34967 Conc!14045) (csize!28320 Int) (cheight!14256 Int)) (Leaf!21706 (xs!17351 IArray!28095) (csize!28321 Int)) (Empty!14045) )
))
(declare-datatypes ((String!54189 0))(
  ( (String!54190 (value!243765 String)) )
))
(declare-datatypes ((List!46706 0))(
  ( (Nil!46582) (Cons!46582 (h!52002 (_ BitVec 16)) (t!349323 List!46706)) )
))
(declare-datatypes ((TokenValue!8064 0))(
  ( (FloatLiteralValue!16128 (text!56893 List!46706)) (TokenValueExt!8063 (__x!28352 Int)) (Broken!40320 (value!243766 List!46706)) (Object!8187) (End!8064) (Def!8064) (Underscore!8064) (Match!8064) (Else!8064) (Error!8064) (Case!8064) (If!8064) (Extends!8064) (Abstract!8064) (Class!8064) (Val!8064) (DelimiterValue!16128 (del!8124 List!46706)) (KeywordValue!8070 (value!243767 List!46706)) (CommentValue!16128 (value!243768 List!46706)) (WhitespaceValue!16128 (value!243769 List!46706)) (IndentationValue!8064 (value!243770 List!46706)) (String!54191) (Int32!8064) (Broken!40321 (value!243771 List!46706)) (Boolean!8065) (Unit!65730) (OperatorValue!8067 (op!8124 List!46706)) (IdentifierValue!16128 (value!243772 List!46706)) (IdentifierValue!16129 (value!243773 List!46706)) (WhitespaceValue!16129 (value!243774 List!46706)) (True!16128) (False!16128) (Broken!40322 (value!243775 List!46706)) (Broken!40323 (value!243776 List!46706)) (True!16129) (RightBrace!8064) (RightBracket!8064) (Colon!8064) (Null!8064) (Comma!8064) (LeftBracket!8064) (False!16129) (LeftBrace!8064) (ImaginaryLiteralValue!8064 (text!56894 List!46706)) (StringLiteralValue!24192 (value!243777 List!46706)) (EOFValue!8064 (value!243778 List!46706)) (IdentValue!8064 (value!243779 List!46706)) (DelimiterValue!16129 (value!243780 List!46706)) (DedentValue!8064 (value!243781 List!46706)) (NewLineValue!8064 (value!243782 List!46706)) (IntegerValue!24192 (value!243783 (_ BitVec 32)) (text!56895 List!46706)) (IntegerValue!24193 (value!243784 Int) (text!56896 List!46706)) (Times!8064) (Or!8064) (Equal!8064) (Minus!8064) (Broken!40324 (value!243785 List!46706)) (And!8064) (Div!8064) (LessEqual!8064) (Mod!8064) (Concat!20803) (Not!8064) (Plus!8064) (SpaceValue!8064 (value!243786 List!46706)) (IntegerValue!24194 (value!243787 Int) (text!56897 List!46706)) (StringLiteralValue!24193 (text!56898 List!46706)) (FloatLiteralValue!16129 (text!56899 List!46706)) (BytesLiteralValue!8064 (value!243788 List!46706)) (CommentValue!16129 (value!243789 List!46706)) (StringLiteralValue!24194 (value!243790 List!46706)) (ErrorTokenValue!8064 (msg!8125 List!46706)) )
))
(declare-datatypes ((BalanceConc!27684 0))(
  ( (BalanceConc!27685 (c!718684 Conc!14045)) )
))
(declare-datatypes ((TokenValueInjection!15556 0))(
  ( (TokenValueInjection!15557 (toValue!10562 Int) (toChars!10421 Int)) )
))
(declare-datatypes ((Regex!12739 0))(
  ( (ElementMatch!12739 (c!718685 C!25672)) (Concat!20804 (regOne!25990 Regex!12739) (regTwo!25990 Regex!12739)) (EmptyExpr!12739) (Star!12739 (reg!13068 Regex!12739)) (EmptyLang!12739) (Union!12739 (regOne!25991 Regex!12739) (regTwo!25991 Regex!12739)) )
))
(declare-datatypes ((Rule!15468 0))(
  ( (Rule!15469 (regex!7834 Regex!12739) (tag!8698 String!54189) (isSeparator!7834 Bool) (transformation!7834 TokenValueInjection!15556)) )
))
(declare-datatypes ((List!46707 0))(
  ( (Nil!46583) (Cons!46583 (h!52003 Rule!15468) (t!349324 List!46707)) )
))
(declare-fun rules!4024 () List!46707)

(declare-fun rulesValidInductive!2936 (LexerInterface!7429 List!46707) Bool)

(assert (=> b!4226527 (= res!1737909 (rulesValidInductive!2936 thiss!26827 rules!4024))))

(declare-fun e!2624129 () Bool)

(assert (=> b!4226528 (= e!2624129 (and tp!1293989 tp!1293987))))

(declare-fun b!4226529 () Bool)

(assert (=> b!4226529 (= e!2624127 false)))

(declare-fun lt!1503178 () Bool)

(declare-fun r!4367 () Rule!15468)

(declare-fun ruleValid!3538 (LexerInterface!7429 Rule!15468) Bool)

(assert (=> b!4226529 (= lt!1503178 (ruleValid!3538 thiss!26827 r!4367))))

(declare-fun e!2624130 () Bool)

(assert (=> b!4226530 (= e!2624130 (and tp!1293988 tp!1293985))))

(declare-fun b!4226531 () Bool)

(declare-fun res!1737911 () Bool)

(assert (=> b!4226531 (=> (not res!1737911) (not e!2624127))))

(assert (=> b!4226531 (= res!1737911 (and ((_ is Cons!46583) rules!4024) (= (h!52003 rules!4024) r!4367)))))

(declare-fun b!4226532 () Bool)

(declare-fun res!1737908 () Bool)

(assert (=> b!4226532 (=> (not res!1737908) (not e!2624127))))

(declare-fun contains!9657 (List!46707 Rule!15468) Bool)

(assert (=> b!4226532 (= res!1737908 (contains!9657 rules!4024 r!4367))))

(declare-fun b!4226533 () Bool)

(declare-fun tp!1293990 () Bool)

(declare-fun inv!61241 (String!54189) Bool)

(declare-fun inv!61243 (TokenValueInjection!15556) Bool)

(assert (=> b!4226533 (= e!2624132 (and tp!1293990 (inv!61241 (tag!8698 (h!52003 rules!4024))) (inv!61243 (transformation!7834 (h!52003 rules!4024))) e!2624130))))

(declare-fun b!4226534 () Bool)

(declare-fun tp!1293986 () Bool)

(assert (=> b!4226534 (= e!2624128 (and tp!1293986 (inv!61241 (tag!8698 r!4367)) (inv!61243 (transformation!7834 r!4367)) e!2624129))))

(assert (= (and start!404150 res!1737910) b!4226532))

(assert (= (and b!4226532 res!1737908) b!4226527))

(assert (= (and b!4226527 res!1737909) b!4226531))

(assert (= (and b!4226531 res!1737911) b!4226529))

(assert (= b!4226533 b!4226530))

(assert (= b!4226526 b!4226533))

(assert (= (and start!404150 ((_ is Cons!46583) rules!4024)) b!4226526))

(assert (= b!4226534 b!4226528))

(assert (= start!404150 b!4226534))

(declare-fun m!4814397 () Bool)

(assert (=> b!4226532 m!4814397))

(declare-fun m!4814399 () Bool)

(assert (=> b!4226533 m!4814399))

(declare-fun m!4814401 () Bool)

(assert (=> b!4226533 m!4814401))

(declare-fun m!4814403 () Bool)

(assert (=> b!4226534 m!4814403))

(declare-fun m!4814405 () Bool)

(assert (=> b!4226534 m!4814405))

(declare-fun m!4814407 () Bool)

(assert (=> b!4226527 m!4814407))

(declare-fun m!4814409 () Bool)

(assert (=> b!4226529 m!4814409))

(check-sat (not b!4226532) (not b_next!125239) (not b!4226527) (not b!4226526) (not b!4226534) (not b!4226533) (not b_next!125241) b_and!333771 (not b_next!125235) b_and!333767 (not b_next!125237) b_and!333765 b_and!333769 (not b!4226529))
(check-sat (not b_next!125239) (not b_next!125241) b_and!333771 (not b_next!125235) b_and!333767 b_and!333769 (not b_next!125237) b_and!333765)
