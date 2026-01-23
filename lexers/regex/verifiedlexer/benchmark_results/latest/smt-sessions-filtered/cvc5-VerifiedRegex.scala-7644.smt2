; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!403712 () Bool)

(assert start!403712)

(declare-fun b!4223361 () Bool)

(declare-fun b_free!124195 () Bool)

(declare-fun b_next!124899 () Bool)

(assert (=> b!4223361 (= b_free!124195 (not b_next!124899))))

(declare-fun tp!1292526 () Bool)

(declare-fun b_and!333405 () Bool)

(assert (=> b!4223361 (= tp!1292526 b_and!333405)))

(declare-fun b_free!124197 () Bool)

(declare-fun b_next!124901 () Bool)

(assert (=> b!4223361 (= b_free!124197 (not b_next!124901))))

(declare-fun tp!1292524 () Bool)

(declare-fun b_and!333407 () Bool)

(assert (=> b!4223361 (= tp!1292524 b_and!333407)))

(declare-fun b!4223355 () Bool)

(declare-fun b_free!124199 () Bool)

(declare-fun b_next!124903 () Bool)

(assert (=> b!4223355 (= b_free!124199 (not b_next!124903))))

(declare-fun tp!1292525 () Bool)

(declare-fun b_and!333409 () Bool)

(assert (=> b!4223355 (= tp!1292525 b_and!333409)))

(declare-fun b_free!124201 () Bool)

(declare-fun b_next!124905 () Bool)

(assert (=> b!4223355 (= b_free!124201 (not b_next!124905))))

(declare-fun tp!1292527 () Bool)

(declare-fun b_and!333411 () Bool)

(assert (=> b!4223355 (= tp!1292527 b_and!333411)))

(declare-fun b!4223353 () Bool)

(declare-fun res!1736228 () Bool)

(declare-fun e!2622113 () Bool)

(assert (=> b!4223353 (=> (not res!1736228) (not e!2622113))))

(declare-datatypes ((List!46606 0))(
  ( (Nil!46482) (Cons!46482 (h!51902 (_ BitVec 16)) (t!349191 List!46606)) )
))
(declare-datatypes ((TokenValue!8031 0))(
  ( (FloatLiteralValue!16062 (text!56662 List!46606)) (TokenValueExt!8030 (__x!28285 Int)) (Broken!40155 (value!242831 List!46606)) (Object!8154) (End!8031) (Def!8031) (Underscore!8031) (Match!8031) (Else!8031) (Error!8031) (Case!8031) (If!8031) (Extends!8031) (Abstract!8031) (Class!8031) (Val!8031) (DelimiterValue!16062 (del!8091 List!46606)) (KeywordValue!8037 (value!242832 List!46606)) (CommentValue!16062 (value!242833 List!46606)) (WhitespaceValue!16062 (value!242834 List!46606)) (IndentationValue!8031 (value!242835 List!46606)) (String!54026) (Int32!8031) (Broken!40156 (value!242836 List!46606)) (Boolean!8032) (Unit!65645) (OperatorValue!8034 (op!8091 List!46606)) (IdentifierValue!16062 (value!242837 List!46606)) (IdentifierValue!16063 (value!242838 List!46606)) (WhitespaceValue!16063 (value!242839 List!46606)) (True!16062) (False!16062) (Broken!40157 (value!242840 List!46606)) (Broken!40158 (value!242841 List!46606)) (True!16063) (RightBrace!8031) (RightBracket!8031) (Colon!8031) (Null!8031) (Comma!8031) (LeftBracket!8031) (False!16063) (LeftBrace!8031) (ImaginaryLiteralValue!8031 (text!56663 List!46606)) (StringLiteralValue!24093 (value!242842 List!46606)) (EOFValue!8031 (value!242843 List!46606)) (IdentValue!8031 (value!242844 List!46606)) (DelimiterValue!16063 (value!242845 List!46606)) (DedentValue!8031 (value!242846 List!46606)) (NewLineValue!8031 (value!242847 List!46606)) (IntegerValue!24093 (value!242848 (_ BitVec 32)) (text!56664 List!46606)) (IntegerValue!24094 (value!242849 Int) (text!56665 List!46606)) (Times!8031) (Or!8031) (Equal!8031) (Minus!8031) (Broken!40159 (value!242850 List!46606)) (And!8031) (Div!8031) (LessEqual!8031) (Mod!8031) (Concat!20737) (Not!8031) (Plus!8031) (SpaceValue!8031 (value!242851 List!46606)) (IntegerValue!24095 (value!242852 Int) (text!56666 List!46606)) (StringLiteralValue!24094 (text!56667 List!46606)) (FloatLiteralValue!16063 (text!56668 List!46606)) (BytesLiteralValue!8031 (value!242853 List!46606)) (CommentValue!16063 (value!242854 List!46606)) (StringLiteralValue!24095 (value!242855 List!46606)) (ErrorTokenValue!8031 (msg!8092 List!46606)) )
))
(declare-datatypes ((C!25606 0))(
  ( (C!25607 (val!14965 Int)) )
))
(declare-datatypes ((List!46607 0))(
  ( (Nil!46483) (Cons!46483 (h!51903 C!25606) (t!349192 List!46607)) )
))
(declare-datatypes ((IArray!28029 0))(
  ( (IArray!28030 (innerList!14072 List!46607)) )
))
(declare-datatypes ((Conc!14012 0))(
  ( (Node!14012 (left!34556 Conc!14012) (right!34886 Conc!14012) (csize!28254 Int) (cheight!14223 Int)) (Leaf!21657 (xs!17318 IArray!28029) (csize!28255 Int)) (Empty!14012) )
))
(declare-datatypes ((BalanceConc!27618 0))(
  ( (BalanceConc!27619 (c!718455 Conc!14012)) )
))
(declare-datatypes ((TokenValueInjection!15490 0))(
  ( (TokenValueInjection!15491 (toValue!10525 Int) (toChars!10384 Int)) )
))
(declare-datatypes ((Regex!12706 0))(
  ( (ElementMatch!12706 (c!718456 C!25606)) (Concat!20738 (regOne!25924 Regex!12706) (regTwo!25924 Regex!12706)) (EmptyExpr!12706) (Star!12706 (reg!13035 Regex!12706)) (EmptyLang!12706) (Union!12706 (regOne!25925 Regex!12706) (regTwo!25925 Regex!12706)) )
))
(declare-datatypes ((String!54027 0))(
  ( (String!54028 (value!242856 String)) )
))
(declare-datatypes ((Rule!15402 0))(
  ( (Rule!15403 (regex!7801 Regex!12706) (tag!8665 String!54027) (isSeparator!7801 Bool) (transformation!7801 TokenValueInjection!15490)) )
))
(declare-datatypes ((List!46608 0))(
  ( (Nil!46484) (Cons!46484 (h!51904 Rule!15402) (t!349193 List!46608)) )
))
(declare-fun rules!4013 () List!46608)

(declare-fun r!4313 () Rule!15402)

(declare-fun contains!9624 (List!46608 Rule!15402) Bool)

(assert (=> b!4223353 (= res!1736228 (contains!9624 rules!4013 r!4313))))

(declare-fun b!4223354 () Bool)

(assert (=> b!4223354 (= e!2622113 false)))

(declare-datatypes ((Token!14300 0))(
  ( (Token!14301 (value!242857 TokenValue!8031) (rule!10941 Rule!15402) (size!34126 Int) (originalCharacters!8181 List!46607)) )
))
(declare-datatypes ((tuple2!44196 0))(
  ( (tuple2!44197 (_1!25232 Token!14300) (_2!25232 List!46607)) )
))
(declare-datatypes ((Option!9987 0))(
  ( (None!9986) (Some!9986 (v!40884 tuple2!44196)) )
))
(declare-fun lt!1502503 () Option!9987)

(declare-fun input!3561 () List!46607)

(declare-datatypes ((LexerInterface!7396 0))(
  ( (LexerInterfaceExt!7393 (__x!28286 Int)) (Lexer!7394) )
))
(declare-fun thiss!26728 () LexerInterface!7396)

(declare-fun maxPrefix!4434 (LexerInterface!7396 List!46608 List!46607) Option!9987)

(assert (=> b!4223354 (= lt!1502503 (maxPrefix!4434 thiss!26728 rules!4013 input!3561))))

(declare-fun e!2622112 () Bool)

(assert (=> b!4223355 (= e!2622112 (and tp!1292525 tp!1292527))))

(declare-fun b!4223356 () Bool)

(declare-fun e!2622110 () Bool)

(declare-fun e!2622116 () Bool)

(declare-fun tp!1292530 () Bool)

(assert (=> b!4223356 (= e!2622110 (and e!2622116 tp!1292530))))

(declare-fun res!1736226 () Bool)

(assert (=> start!403712 (=> (not res!1736226) (not e!2622113))))

(assert (=> start!403712 (= res!1736226 (is-Lexer!7394 thiss!26728))))

(assert (=> start!403712 e!2622113))

(assert (=> start!403712 true))

(assert (=> start!403712 e!2622110))

(declare-fun e!2622109 () Bool)

(assert (=> start!403712 e!2622109))

(declare-fun e!2622111 () Bool)

(assert (=> start!403712 e!2622111))

(declare-fun b!4223357 () Bool)

(declare-fun tp!1292529 () Bool)

(declare-fun inv!61155 (String!54027) Bool)

(declare-fun inv!61158 (TokenValueInjection!15490) Bool)

(assert (=> b!4223357 (= e!2622116 (and tp!1292529 (inv!61155 (tag!8665 (h!51904 rules!4013))) (inv!61158 (transformation!7801 (h!51904 rules!4013))) e!2622112))))

(declare-fun b!4223358 () Bool)

(declare-fun res!1736227 () Bool)

(assert (=> b!4223358 (=> (not res!1736227) (not e!2622113))))

(declare-fun isEmpty!27540 (List!46608) Bool)

(assert (=> b!4223358 (= res!1736227 (not (isEmpty!27540 rules!4013)))))

(declare-fun b!4223359 () Bool)

(declare-fun tp_is_empty!22375 () Bool)

(declare-fun tp!1292523 () Bool)

(assert (=> b!4223359 (= e!2622111 (and tp_is_empty!22375 tp!1292523))))

(declare-fun tp!1292528 () Bool)

(declare-fun e!2622114 () Bool)

(declare-fun b!4223360 () Bool)

(assert (=> b!4223360 (= e!2622109 (and tp!1292528 (inv!61155 (tag!8665 r!4313)) (inv!61158 (transformation!7801 r!4313)) e!2622114))))

(assert (=> b!4223361 (= e!2622114 (and tp!1292526 tp!1292524))))

(declare-fun b!4223362 () Bool)

(declare-fun res!1736225 () Bool)

(assert (=> b!4223362 (=> (not res!1736225) (not e!2622113))))

(declare-fun rulesValidInductive!2905 (LexerInterface!7396 List!46608) Bool)

(assert (=> b!4223362 (= res!1736225 (rulesValidInductive!2905 thiss!26728 rules!4013))))

(assert (= (and start!403712 res!1736226) b!4223358))

(assert (= (and b!4223358 res!1736227) b!4223362))

(assert (= (and b!4223362 res!1736225) b!4223353))

(assert (= (and b!4223353 res!1736228) b!4223354))

(assert (= b!4223357 b!4223355))

(assert (= b!4223356 b!4223357))

(assert (= (and start!403712 (is-Cons!46484 rules!4013)) b!4223356))

(assert (= b!4223360 b!4223361))

(assert (= start!403712 b!4223360))

(assert (= (and start!403712 (is-Cons!46483 input!3561)) b!4223359))

(declare-fun m!4811939 () Bool)

(assert (=> b!4223353 m!4811939))

(declare-fun m!4811941 () Bool)

(assert (=> b!4223357 m!4811941))

(declare-fun m!4811943 () Bool)

(assert (=> b!4223357 m!4811943))

(declare-fun m!4811945 () Bool)

(assert (=> b!4223358 m!4811945))

(declare-fun m!4811947 () Bool)

(assert (=> b!4223354 m!4811947))

(declare-fun m!4811949 () Bool)

(assert (=> b!4223362 m!4811949))

(declare-fun m!4811951 () Bool)

(assert (=> b!4223360 m!4811951))

(declare-fun m!4811953 () Bool)

(assert (=> b!4223360 m!4811953))

(push 1)

(assert (not b_next!124903))

(assert tp_is_empty!22375)

(assert (not b!4223354))

(assert b_and!333407)

(assert (not b!4223360))

(assert b_and!333409)

(assert (not b!4223357))

(assert b_and!333411)

(assert (not b_next!124905))

(assert (not b!4223362))

(assert (not b!4223358))

(assert (not b_next!124899))

(assert (not b!4223359))

(assert (not b!4223356))

(assert (not b!4223353))

(assert b_and!333405)

(assert (not b_next!124901))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!124903))

(assert (not b_next!124905))

(assert (not b_next!124899))

(assert b_and!333407)

(assert b_and!333409)

(assert b_and!333411)

(assert b_and!333405)

(assert (not b_next!124901))

(check-sat)

(pop 1)

