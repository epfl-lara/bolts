; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!389772 () Bool)

(assert start!389772)

(declare-fun b!4113567 () Bool)

(declare-fun b_free!115779 () Bool)

(declare-fun b_next!116483 () Bool)

(assert (=> b!4113567 (= b_free!115779 (not b_next!116483))))

(declare-fun tp!1252363 () Bool)

(declare-fun b_and!317665 () Bool)

(assert (=> b!4113567 (= tp!1252363 b_and!317665)))

(declare-fun b_free!115781 () Bool)

(declare-fun b_next!116485 () Bool)

(assert (=> b!4113567 (= b_free!115781 (not b_next!116485))))

(declare-fun tp!1252364 () Bool)

(declare-fun b_and!317667 () Bool)

(assert (=> b!4113567 (= tp!1252364 b_and!317667)))

(declare-fun b!4113565 () Bool)

(declare-fun res!1680172 () Bool)

(declare-fun e!2551919 () Bool)

(assert (=> b!4113565 (=> (not res!1680172) (not e!2551919))))

(declare-datatypes ((LexerInterface!6799 0))(
  ( (LexerInterfaceExt!6796 (__x!27097 Int)) (Lexer!6797) )
))
(declare-fun thiss!26911 () LexerInterface!6799)

(declare-datatypes ((String!50949 0))(
  ( (String!50950 (value!226048 String)) )
))
(declare-datatypes ((List!44440 0))(
  ( (Nil!44316) (Cons!44316 (h!49736 String!50949) (t!340191 List!44440)) )
))
(declare-fun acc!555 () List!44440)

(declare-datatypes ((List!44441 0))(
  ( (Nil!44317) (Cons!44317 (h!49737 (_ BitVec 16)) (t!340192 List!44441)) )
))
(declare-datatypes ((TokenValue!7440 0))(
  ( (FloatLiteralValue!14880 (text!52525 List!44441)) (TokenValueExt!7439 (__x!27098 Int)) (Broken!37200 (value!226049 List!44441)) (Object!7563) (End!7440) (Def!7440) (Underscore!7440) (Match!7440) (Else!7440) (Error!7440) (Case!7440) (If!7440) (Extends!7440) (Abstract!7440) (Class!7440) (Val!7440) (DelimiterValue!14880 (del!7500 List!44441)) (KeywordValue!7446 (value!226050 List!44441)) (CommentValue!14880 (value!226051 List!44441)) (WhitespaceValue!14880 (value!226052 List!44441)) (IndentationValue!7440 (value!226053 List!44441)) (String!50951) (Int32!7440) (Broken!37201 (value!226054 List!44441)) (Boolean!7441) (Unit!63720) (OperatorValue!7443 (op!7500 List!44441)) (IdentifierValue!14880 (value!226055 List!44441)) (IdentifierValue!14881 (value!226056 List!44441)) (WhitespaceValue!14881 (value!226057 List!44441)) (True!14880) (False!14880) (Broken!37202 (value!226058 List!44441)) (Broken!37203 (value!226059 List!44441)) (True!14881) (RightBrace!7440) (RightBracket!7440) (Colon!7440) (Null!7440) (Comma!7440) (LeftBracket!7440) (False!14881) (LeftBrace!7440) (ImaginaryLiteralValue!7440 (text!52526 List!44441)) (StringLiteralValue!22320 (value!226060 List!44441)) (EOFValue!7440 (value!226061 List!44441)) (IdentValue!7440 (value!226062 List!44441)) (DelimiterValue!14881 (value!226063 List!44441)) (DedentValue!7440 (value!226064 List!44441)) (NewLineValue!7440 (value!226065 List!44441)) (IntegerValue!22320 (value!226066 (_ BitVec 32)) (text!52527 List!44441)) (IntegerValue!22321 (value!226067 Int) (text!52528 List!44441)) (Times!7440) (Or!7440) (Equal!7440) (Minus!7440) (Broken!37204 (value!226068 List!44441)) (And!7440) (Div!7440) (LessEqual!7440) (Mod!7440) (Concat!19555) (Not!7440) (Plus!7440) (SpaceValue!7440 (value!226069 List!44441)) (IntegerValue!22322 (value!226070 Int) (text!52529 List!44441)) (StringLiteralValue!22321 (text!52530 List!44441)) (FloatLiteralValue!14881 (text!52531 List!44441)) (BytesLiteralValue!7440 (value!226071 List!44441)) (CommentValue!14881 (value!226072 List!44441)) (StringLiteralValue!22322 (value!226073 List!44441)) (ErrorTokenValue!7440 (msg!7501 List!44441)) )
))
(declare-datatypes ((C!24416 0))(
  ( (C!24417 (val!14318 Int)) )
))
(declare-datatypes ((List!44442 0))(
  ( (Nil!44318) (Cons!44318 (h!49738 C!24416) (t!340193 List!44442)) )
))
(declare-datatypes ((IArray!26847 0))(
  ( (IArray!26848 (innerList!13481 List!44442)) )
))
(declare-datatypes ((Conc!13421 0))(
  ( (Node!13421 (left!33228 Conc!13421) (right!33558 Conc!13421) (csize!27072 Int) (cheight!13632 Int)) (Leaf!20741 (xs!16727 IArray!26847) (csize!27073 Int)) (Empty!13421) )
))
(declare-datatypes ((BalanceConc!26436 0))(
  ( (BalanceConc!26437 (c!706934 Conc!13421)) )
))
(declare-datatypes ((TokenValueInjection!14308 0))(
  ( (TokenValueInjection!14309 (toValue!9854 Int) (toChars!9713 Int)) )
))
(declare-datatypes ((Regex!12115 0))(
  ( (ElementMatch!12115 (c!706935 C!24416)) (Concat!19556 (regOne!24742 Regex!12115) (regTwo!24742 Regex!12115)) (EmptyExpr!12115) (Star!12115 (reg!12444 Regex!12115)) (EmptyLang!12115) (Union!12115 (regOne!24743 Regex!12115) (regTwo!24743 Regex!12115)) )
))
(declare-datatypes ((Rule!14220 0))(
  ( (Rule!14221 (regex!7210 Regex!12115) (tag!8070 String!50949) (isSeparator!7210 Bool) (transformation!7210 TokenValueInjection!14308)) )
))
(declare-datatypes ((List!44443 0))(
  ( (Nil!44319) (Cons!44319 (h!49739 Rule!14220) (t!340194 List!44443)) )
))
(declare-fun l!6467 () List!44443)

(declare-fun noDuplicateTag!2887 (LexerInterface!6799 List!44443 List!44440) Bool)

(assert (=> b!4113565 (= res!1680172 (noDuplicateTag!2887 thiss!26911 l!6467 acc!555))))

(declare-fun b!4113566 () Bool)

(declare-fun e!2551916 () Bool)

(declare-fun e!2551920 () Bool)

(declare-fun tp!1252359 () Bool)

(assert (=> b!4113566 (= e!2551916 (and e!2551920 tp!1252359))))

(declare-fun e!2551921 () Bool)

(assert (=> b!4113567 (= e!2551921 (and tp!1252363 tp!1252364))))

(declare-fun b!4113568 () Bool)

(declare-fun e!2551914 () Bool)

(declare-fun newAcc!81 () List!44440)

(declare-fun tp!1252362 () Bool)

(declare-fun inv!58934 (String!50949) Bool)

(assert (=> b!4113568 (= e!2551914 (and (inv!58934 (h!49736 newAcc!81)) tp!1252362))))

(declare-fun tp!1252360 () Bool)

(declare-fun b!4113570 () Bool)

(declare-fun inv!58936 (TokenValueInjection!14308) Bool)

(assert (=> b!4113570 (= e!2551920 (and tp!1252360 (inv!58934 (tag!8070 (h!49739 l!6467))) (inv!58936 (transformation!7210 (h!49739 l!6467))) e!2551921))))

(declare-fun b!4113571 () Bool)

(declare-fun e!2551913 () Bool)

(declare-fun tp!1252361 () Bool)

(assert (=> b!4113571 (= e!2551913 (and (inv!58934 (h!49736 acc!555)) tp!1252361))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun lt!1468393 () (InoxSet String!50949))

(declare-fun lt!1468392 () (InoxSet String!50949))

(declare-fun b!4113569 () Bool)

(get-info :version)

(assert (=> b!4113569 (= e!2551919 (and (= lt!1468393 lt!1468392) ((_ is Cons!44319) l!6467) (not (= ((_ map implies) lt!1468393 lt!1468392) ((as const (InoxSet String!50949)) true)))))))

(declare-fun content!6830 (List!44440) (InoxSet String!50949))

(assert (=> b!4113569 (= lt!1468392 (content!6830 newAcc!81))))

(assert (=> b!4113569 (= lt!1468393 (content!6830 acc!555))))

(declare-fun res!1680171 () Bool)

(assert (=> start!389772 (=> (not res!1680171) (not e!2551919))))

(assert (=> start!389772 (= res!1680171 ((_ is Lexer!6797) thiss!26911))))

(assert (=> start!389772 e!2551919))

(assert (=> start!389772 true))

(assert (=> start!389772 e!2551916))

(assert (=> start!389772 e!2551913))

(assert (=> start!389772 e!2551914))

(assert (= (and start!389772 res!1680171) b!4113565))

(assert (= (and b!4113565 res!1680172) b!4113569))

(assert (= b!4113570 b!4113567))

(assert (= b!4113566 b!4113570))

(assert (= (and start!389772 ((_ is Cons!44319) l!6467)) b!4113566))

(assert (= (and start!389772 ((_ is Cons!44316) acc!555)) b!4113571))

(assert (= (and start!389772 ((_ is Cons!44316) newAcc!81)) b!4113568))

(declare-fun m!4714259 () Bool)

(assert (=> b!4113571 m!4714259))

(declare-fun m!4714261 () Bool)

(assert (=> b!4113570 m!4714261))

(declare-fun m!4714263 () Bool)

(assert (=> b!4113570 m!4714263))

(declare-fun m!4714265 () Bool)

(assert (=> b!4113569 m!4714265))

(declare-fun m!4714267 () Bool)

(assert (=> b!4113569 m!4714267))

(declare-fun m!4714269 () Bool)

(assert (=> b!4113565 m!4714269))

(declare-fun m!4714271 () Bool)

(assert (=> b!4113568 m!4714271))

(check-sat (not b!4113568) (not b_next!116483) (not b!4113571) b_and!317665 b_and!317667 (not b!4113565) (not b!4113569) (not b!4113566) (not b!4113570) (not b_next!116485))
(check-sat b_and!317667 b_and!317665 (not b_next!116485) (not b_next!116483))
