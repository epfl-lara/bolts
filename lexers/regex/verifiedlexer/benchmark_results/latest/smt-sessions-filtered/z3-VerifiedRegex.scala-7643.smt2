; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!403710 () Bool)

(assert start!403710)

(declare-fun b!4223329 () Bool)

(declare-fun b_free!124187 () Bool)

(declare-fun b_next!124891 () Bool)

(assert (=> b!4223329 (= b_free!124187 (not b_next!124891))))

(declare-fun tp!1292503 () Bool)

(declare-fun b_and!333397 () Bool)

(assert (=> b!4223329 (= tp!1292503 b_and!333397)))

(declare-fun b_free!124189 () Bool)

(declare-fun b_next!124893 () Bool)

(assert (=> b!4223329 (= b_free!124189 (not b_next!124893))))

(declare-fun tp!1292501 () Bool)

(declare-fun b_and!333399 () Bool)

(assert (=> b!4223329 (= tp!1292501 b_and!333399)))

(declare-fun b!4223330 () Bool)

(declare-fun b_free!124191 () Bool)

(declare-fun b_next!124895 () Bool)

(assert (=> b!4223330 (= b_free!124191 (not b_next!124895))))

(declare-fun tp!1292504 () Bool)

(declare-fun b_and!333401 () Bool)

(assert (=> b!4223330 (= tp!1292504 b_and!333401)))

(declare-fun b_free!124193 () Bool)

(declare-fun b_next!124897 () Bool)

(assert (=> b!4223330 (= b_free!124193 (not b_next!124897))))

(declare-fun tp!1292506 () Bool)

(declare-fun b_and!333403 () Bool)

(assert (=> b!4223330 (= tp!1292506 b_and!333403)))

(declare-fun b!4223325 () Bool)

(declare-fun res!1736216 () Bool)

(declare-fun e!2622085 () Bool)

(assert (=> b!4223325 (=> (not res!1736216) (not e!2622085))))

(declare-datatypes ((LexerInterface!7395 0))(
  ( (LexerInterfaceExt!7392 (__x!28283 Int)) (Lexer!7393) )
))
(declare-fun thiss!26728 () LexerInterface!7395)

(declare-datatypes ((List!46603 0))(
  ( (Nil!46479) (Cons!46479 (h!51899 (_ BitVec 16)) (t!349188 List!46603)) )
))
(declare-datatypes ((TokenValue!8030 0))(
  ( (FloatLiteralValue!16060 (text!56655 List!46603)) (TokenValueExt!8029 (__x!28284 Int)) (Broken!40150 (value!242802 List!46603)) (Object!8153) (End!8030) (Def!8030) (Underscore!8030) (Match!8030) (Else!8030) (Error!8030) (Case!8030) (If!8030) (Extends!8030) (Abstract!8030) (Class!8030) (Val!8030) (DelimiterValue!16060 (del!8090 List!46603)) (KeywordValue!8036 (value!242803 List!46603)) (CommentValue!16060 (value!242804 List!46603)) (WhitespaceValue!16060 (value!242805 List!46603)) (IndentationValue!8030 (value!242806 List!46603)) (String!54019) (Int32!8030) (Broken!40151 (value!242807 List!46603)) (Boolean!8031) (Unit!65644) (OperatorValue!8033 (op!8090 List!46603)) (IdentifierValue!16060 (value!242808 List!46603)) (IdentifierValue!16061 (value!242809 List!46603)) (WhitespaceValue!16061 (value!242810 List!46603)) (True!16060) (False!16060) (Broken!40152 (value!242811 List!46603)) (Broken!40153 (value!242812 List!46603)) (True!16061) (RightBrace!8030) (RightBracket!8030) (Colon!8030) (Null!8030) (Comma!8030) (LeftBracket!8030) (False!16061) (LeftBrace!8030) (ImaginaryLiteralValue!8030 (text!56656 List!46603)) (StringLiteralValue!24090 (value!242813 List!46603)) (EOFValue!8030 (value!242814 List!46603)) (IdentValue!8030 (value!242815 List!46603)) (DelimiterValue!16061 (value!242816 List!46603)) (DedentValue!8030 (value!242817 List!46603)) (NewLineValue!8030 (value!242818 List!46603)) (IntegerValue!24090 (value!242819 (_ BitVec 32)) (text!56657 List!46603)) (IntegerValue!24091 (value!242820 Int) (text!56658 List!46603)) (Times!8030) (Or!8030) (Equal!8030) (Minus!8030) (Broken!40154 (value!242821 List!46603)) (And!8030) (Div!8030) (LessEqual!8030) (Mod!8030) (Concat!20735) (Not!8030) (Plus!8030) (SpaceValue!8030 (value!242822 List!46603)) (IntegerValue!24092 (value!242823 Int) (text!56659 List!46603)) (StringLiteralValue!24091 (text!56660 List!46603)) (FloatLiteralValue!16061 (text!56661 List!46603)) (BytesLiteralValue!8030 (value!242824 List!46603)) (CommentValue!16061 (value!242825 List!46603)) (StringLiteralValue!24092 (value!242826 List!46603)) (ErrorTokenValue!8030 (msg!8091 List!46603)) )
))
(declare-datatypes ((C!25604 0))(
  ( (C!25605 (val!14964 Int)) )
))
(declare-datatypes ((List!46604 0))(
  ( (Nil!46480) (Cons!46480 (h!51900 C!25604) (t!349189 List!46604)) )
))
(declare-datatypes ((IArray!28027 0))(
  ( (IArray!28028 (innerList!14071 List!46604)) )
))
(declare-datatypes ((Conc!14011 0))(
  ( (Node!14011 (left!34554 Conc!14011) (right!34884 Conc!14011) (csize!28252 Int) (cheight!14222 Int)) (Leaf!21655 (xs!17317 IArray!28027) (csize!28253 Int)) (Empty!14011) )
))
(declare-datatypes ((BalanceConc!27616 0))(
  ( (BalanceConc!27617 (c!718452 Conc!14011)) )
))
(declare-datatypes ((TokenValueInjection!15488 0))(
  ( (TokenValueInjection!15489 (toValue!10524 Int) (toChars!10383 Int)) )
))
(declare-datatypes ((Regex!12705 0))(
  ( (ElementMatch!12705 (c!718453 C!25604)) (Concat!20736 (regOne!25922 Regex!12705) (regTwo!25922 Regex!12705)) (EmptyExpr!12705) (Star!12705 (reg!13034 Regex!12705)) (EmptyLang!12705) (Union!12705 (regOne!25923 Regex!12705) (regTwo!25923 Regex!12705)) )
))
(declare-datatypes ((String!54020 0))(
  ( (String!54021 (value!242827 String)) )
))
(declare-datatypes ((Rule!15400 0))(
  ( (Rule!15401 (regex!7800 Regex!12705) (tag!8664 String!54020) (isSeparator!7800 Bool) (transformation!7800 TokenValueInjection!15488)) )
))
(declare-datatypes ((List!46605 0))(
  ( (Nil!46481) (Cons!46481 (h!51901 Rule!15400) (t!349190 List!46605)) )
))
(declare-fun rules!4013 () List!46605)

(declare-fun rulesValidInductive!2904 (LexerInterface!7395 List!46605) Bool)

(assert (=> b!4223325 (= res!1736216 (rulesValidInductive!2904 thiss!26728 rules!4013))))

(declare-fun b!4223326 () Bool)

(declare-fun e!2622086 () Bool)

(declare-fun e!2622088 () Bool)

(declare-fun r!4313 () Rule!15400)

(declare-fun tp!1292502 () Bool)

(declare-fun inv!61152 (String!54020) Bool)

(declare-fun inv!61154 (TokenValueInjection!15488) Bool)

(assert (=> b!4223326 (= e!2622086 (and tp!1292502 (inv!61152 (tag!8664 r!4313)) (inv!61154 (transformation!7800 r!4313)) e!2622088))))

(declare-fun e!2622089 () Bool)

(declare-fun b!4223327 () Bool)

(declare-fun e!2622083 () Bool)

(declare-fun tp!1292505 () Bool)

(assert (=> b!4223327 (= e!2622089 (and tp!1292505 (inv!61152 (tag!8664 (h!51901 rules!4013))) (inv!61154 (transformation!7800 (h!51901 rules!4013))) e!2622083))))

(declare-fun b!4223328 () Bool)

(assert (=> b!4223328 (= e!2622085 false)))

(declare-fun lt!1502500 () Bool)

(declare-fun contains!9623 (List!46605 Rule!15400) Bool)

(assert (=> b!4223328 (= lt!1502500 (contains!9623 rules!4013 r!4313))))

(assert (=> b!4223329 (= e!2622083 (and tp!1292503 tp!1292501))))

(declare-fun res!1736214 () Bool)

(assert (=> start!403710 (=> (not res!1736214) (not e!2622085))))

(get-info :version)

(assert (=> start!403710 (= res!1736214 ((_ is Lexer!7393) thiss!26728))))

(assert (=> start!403710 e!2622085))

(assert (=> start!403710 true))

(declare-fun e!2622084 () Bool)

(assert (=> start!403710 e!2622084))

(assert (=> start!403710 e!2622086))

(assert (=> b!4223330 (= e!2622088 (and tp!1292504 tp!1292506))))

(declare-fun b!4223331 () Bool)

(declare-fun res!1736215 () Bool)

(assert (=> b!4223331 (=> (not res!1736215) (not e!2622085))))

(declare-fun isEmpty!27539 (List!46605) Bool)

(assert (=> b!4223331 (= res!1736215 (not (isEmpty!27539 rules!4013)))))

(declare-fun b!4223332 () Bool)

(declare-fun tp!1292500 () Bool)

(assert (=> b!4223332 (= e!2622084 (and e!2622089 tp!1292500))))

(assert (= (and start!403710 res!1736214) b!4223331))

(assert (= (and b!4223331 res!1736215) b!4223325))

(assert (= (and b!4223325 res!1736216) b!4223328))

(assert (= b!4223327 b!4223329))

(assert (= b!4223332 b!4223327))

(assert (= (and start!403710 ((_ is Cons!46481) rules!4013)) b!4223332))

(assert (= b!4223326 b!4223330))

(assert (= start!403710 b!4223326))

(declare-fun m!4811925 () Bool)

(assert (=> b!4223325 m!4811925))

(declare-fun m!4811927 () Bool)

(assert (=> b!4223331 m!4811927))

(declare-fun m!4811929 () Bool)

(assert (=> b!4223326 m!4811929))

(declare-fun m!4811931 () Bool)

(assert (=> b!4223326 m!4811931))

(declare-fun m!4811933 () Bool)

(assert (=> b!4223328 m!4811933))

(declare-fun m!4811935 () Bool)

(assert (=> b!4223327 m!4811935))

(declare-fun m!4811937 () Bool)

(assert (=> b!4223327 m!4811937))

(check-sat (not b_next!124897) (not b!4223327) b_and!333397 (not b_next!124893) (not b!4223325) b_and!333403 (not b!4223328) (not b!4223331) b_and!333401 (not b!4223332) (not b!4223326) (not b_next!124895) (not b_next!124891) b_and!333399)
(check-sat (not b_next!124897) b_and!333397 (not b_next!124893) b_and!333403 b_and!333401 (not b_next!124895) (not b_next!124891) b_and!333399)
