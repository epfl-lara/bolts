; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!389776 () Bool)

(assert start!389776)

(declare-fun b!4113614 () Bool)

(declare-fun b_free!115787 () Bool)

(declare-fun b_next!116491 () Bool)

(assert (=> b!4113614 (= b_free!115787 (not b_next!116491))))

(declare-fun tp!1252396 () Bool)

(declare-fun b_and!317673 () Bool)

(assert (=> b!4113614 (= tp!1252396 b_and!317673)))

(declare-fun b_free!115789 () Bool)

(declare-fun b_next!116493 () Bool)

(assert (=> b!4113614 (= b_free!115789 (not b_next!116493))))

(declare-fun tp!1252398 () Bool)

(declare-fun b_and!317675 () Bool)

(assert (=> b!4113614 (= tp!1252398 b_and!317675)))

(declare-fun res!1680190 () Bool)

(declare-fun e!2551975 () Bool)

(assert (=> start!389776 (=> (not res!1680190) (not e!2551975))))

(declare-datatypes ((LexerInterface!6801 0))(
  ( (LexerInterfaceExt!6798 (__x!27101 Int)) (Lexer!6799) )
))
(declare-fun thiss!26911 () LexerInterface!6801)

(get-info :version)

(assert (=> start!389776 (= res!1680190 ((_ is Lexer!6799) thiss!26911))))

(assert (=> start!389776 e!2551975))

(assert (=> start!389776 true))

(declare-fun e!2551974 () Bool)

(assert (=> start!389776 e!2551974))

(declare-fun e!2551972 () Bool)

(assert (=> start!389776 e!2551972))

(declare-fun e!2551978 () Bool)

(assert (=> start!389776 e!2551978))

(declare-fun b!4113612 () Bool)

(declare-fun e!2551976 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((String!50959 0))(
  ( (String!50960 (value!226103 String)) )
))
(declare-fun lt!1468409 () (InoxSet String!50959))

(declare-fun lt!1468411 () (InoxSet String!50959))

(assert (=> b!4113612 (= e!2551976 (not (= ((_ map implies) lt!1468409 lt!1468411) ((as const (InoxSet String!50959)) true))))))

(declare-datatypes ((Unit!63724 0))(
  ( (Unit!63725) )
))
(declare-fun lt!1468410 () Unit!63724)

(declare-datatypes ((List!44448 0))(
  ( (Nil!44324) (Cons!44324 (h!49744 String!50959) (t!340199 List!44448)) )
))
(declare-fun acc!555 () List!44448)

(declare-fun newAcc!81 () List!44448)

(declare-fun subsetContains!76 (List!44448 List!44448) Unit!63724)

(assert (=> b!4113612 (= lt!1468410 (subsetContains!76 acc!555 newAcc!81))))

(declare-fun b!4113613 () Bool)

(assert (=> b!4113613 (= e!2551975 e!2551976)))

(declare-fun res!1680188 () Bool)

(assert (=> b!4113613 (=> (not res!1680188) (not e!2551976))))

(declare-datatypes ((List!44449 0))(
  ( (Nil!44325) (Cons!44325 (h!49745 (_ BitVec 16)) (t!340200 List!44449)) )
))
(declare-datatypes ((TokenValue!7442 0))(
  ( (FloatLiteralValue!14884 (text!52539 List!44449)) (TokenValueExt!7441 (__x!27102 Int)) (Broken!37210 (value!226104 List!44449)) (Object!7565) (End!7442) (Def!7442) (Underscore!7442) (Match!7442) (Else!7442) (Error!7442) (Case!7442) (If!7442) (Extends!7442) (Abstract!7442) (Class!7442) (Val!7442) (DelimiterValue!14884 (del!7502 List!44449)) (KeywordValue!7448 (value!226105 List!44449)) (CommentValue!14884 (value!226106 List!44449)) (WhitespaceValue!14884 (value!226107 List!44449)) (IndentationValue!7442 (value!226108 List!44449)) (String!50961) (Int32!7442) (Broken!37211 (value!226109 List!44449)) (Boolean!7443) (Unit!63726) (OperatorValue!7445 (op!7502 List!44449)) (IdentifierValue!14884 (value!226110 List!44449)) (IdentifierValue!14885 (value!226111 List!44449)) (WhitespaceValue!14885 (value!226112 List!44449)) (True!14884) (False!14884) (Broken!37212 (value!226113 List!44449)) (Broken!37213 (value!226114 List!44449)) (True!14885) (RightBrace!7442) (RightBracket!7442) (Colon!7442) (Null!7442) (Comma!7442) (LeftBracket!7442) (False!14885) (LeftBrace!7442) (ImaginaryLiteralValue!7442 (text!52540 List!44449)) (StringLiteralValue!22326 (value!226115 List!44449)) (EOFValue!7442 (value!226116 List!44449)) (IdentValue!7442 (value!226117 List!44449)) (DelimiterValue!14885 (value!226118 List!44449)) (DedentValue!7442 (value!226119 List!44449)) (NewLineValue!7442 (value!226120 List!44449)) (IntegerValue!22326 (value!226121 (_ BitVec 32)) (text!52541 List!44449)) (IntegerValue!22327 (value!226122 Int) (text!52542 List!44449)) (Times!7442) (Or!7442) (Equal!7442) (Minus!7442) (Broken!37214 (value!226123 List!44449)) (And!7442) (Div!7442) (LessEqual!7442) (Mod!7442) (Concat!19559) (Not!7442) (Plus!7442) (SpaceValue!7442 (value!226124 List!44449)) (IntegerValue!22328 (value!226125 Int) (text!52543 List!44449)) (StringLiteralValue!22327 (text!52544 List!44449)) (FloatLiteralValue!14885 (text!52545 List!44449)) (BytesLiteralValue!7442 (value!226126 List!44449)) (CommentValue!14885 (value!226127 List!44449)) (StringLiteralValue!22328 (value!226128 List!44449)) (ErrorTokenValue!7442 (msg!7503 List!44449)) )
))
(declare-datatypes ((C!24420 0))(
  ( (C!24421 (val!14320 Int)) )
))
(declare-datatypes ((List!44450 0))(
  ( (Nil!44326) (Cons!44326 (h!49746 C!24420) (t!340201 List!44450)) )
))
(declare-datatypes ((IArray!26851 0))(
  ( (IArray!26852 (innerList!13483 List!44450)) )
))
(declare-datatypes ((Conc!13423 0))(
  ( (Node!13423 (left!33231 Conc!13423) (right!33561 Conc!13423) (csize!27076 Int) (cheight!13634 Int)) (Leaf!20744 (xs!16729 IArray!26851) (csize!27077 Int)) (Empty!13423) )
))
(declare-datatypes ((BalanceConc!26440 0))(
  ( (BalanceConc!26441 (c!706938 Conc!13423)) )
))
(declare-datatypes ((TokenValueInjection!14312 0))(
  ( (TokenValueInjection!14313 (toValue!9856 Int) (toChars!9715 Int)) )
))
(declare-datatypes ((Regex!12117 0))(
  ( (ElementMatch!12117 (c!706939 C!24420)) (Concat!19560 (regOne!24746 Regex!12117) (regTwo!24746 Regex!12117)) (EmptyExpr!12117) (Star!12117 (reg!12446 Regex!12117)) (EmptyLang!12117) (Union!12117 (regOne!24747 Regex!12117) (regTwo!24747 Regex!12117)) )
))
(declare-datatypes ((Rule!14224 0))(
  ( (Rule!14225 (regex!7212 Regex!12117) (tag!8072 String!50959) (isSeparator!7212 Bool) (transformation!7212 TokenValueInjection!14312)) )
))
(declare-datatypes ((List!44451 0))(
  ( (Nil!44327) (Cons!44327 (h!49747 Rule!14224) (t!340202 List!44451)) )
))
(declare-fun l!6467 () List!44451)

(assert (=> b!4113613 (= res!1680188 (and (= lt!1468411 lt!1468409) ((_ is Cons!44327) l!6467)))))

(declare-fun content!6832 (List!44448) (InoxSet String!50959))

(assert (=> b!4113613 (= lt!1468409 (content!6832 newAcc!81))))

(assert (=> b!4113613 (= lt!1468411 (content!6832 acc!555))))

(declare-fun e!2551977 () Bool)

(assert (=> b!4113614 (= e!2551977 (and tp!1252396 tp!1252398))))

(declare-fun b!4113615 () Bool)

(declare-fun e!2551981 () Bool)

(declare-fun tp!1252397 () Bool)

(assert (=> b!4113615 (= e!2551974 (and e!2551981 tp!1252397))))

(declare-fun b!4113616 () Bool)

(declare-fun tp!1252400 () Bool)

(declare-fun inv!58939 (String!50959) Bool)

(assert (=> b!4113616 (= e!2551972 (and (inv!58939 (h!49744 acc!555)) tp!1252400))))

(declare-fun b!4113617 () Bool)

(declare-fun res!1680189 () Bool)

(assert (=> b!4113617 (=> (not res!1680189) (not e!2551975))))

(declare-fun noDuplicateTag!2889 (LexerInterface!6801 List!44451 List!44448) Bool)

(assert (=> b!4113617 (= res!1680189 (noDuplicateTag!2889 thiss!26911 l!6467 acc!555))))

(declare-fun tp!1252399 () Bool)

(declare-fun b!4113618 () Bool)

(declare-fun inv!58941 (TokenValueInjection!14312) Bool)

(assert (=> b!4113618 (= e!2551981 (and tp!1252399 (inv!58939 (tag!8072 (h!49747 l!6467))) (inv!58941 (transformation!7212 (h!49747 l!6467))) e!2551977))))

(declare-fun b!4113619 () Bool)

(declare-fun tp!1252395 () Bool)

(assert (=> b!4113619 (= e!2551978 (and (inv!58939 (h!49744 newAcc!81)) tp!1252395))))

(assert (= (and start!389776 res!1680190) b!4113617))

(assert (= (and b!4113617 res!1680189) b!4113613))

(assert (= (and b!4113613 res!1680188) b!4113612))

(assert (= b!4113618 b!4113614))

(assert (= b!4113615 b!4113618))

(assert (= (and start!389776 ((_ is Cons!44327) l!6467)) b!4113615))

(assert (= (and start!389776 ((_ is Cons!44324) acc!555)) b!4113616))

(assert (= (and start!389776 ((_ is Cons!44324) newAcc!81)) b!4113619))

(declare-fun m!4714289 () Bool)

(assert (=> b!4113617 m!4714289))

(declare-fun m!4714291 () Bool)

(assert (=> b!4113616 m!4714291))

(declare-fun m!4714293 () Bool)

(assert (=> b!4113619 m!4714293))

(declare-fun m!4714295 () Bool)

(assert (=> b!4113618 m!4714295))

(declare-fun m!4714297 () Bool)

(assert (=> b!4113618 m!4714297))

(declare-fun m!4714299 () Bool)

(assert (=> b!4113612 m!4714299))

(declare-fun m!4714301 () Bool)

(assert (=> b!4113613 m!4714301))

(declare-fun m!4714303 () Bool)

(assert (=> b!4113613 m!4714303))

(check-sat (not b!4113615) (not b!4113616) (not b_next!116491) (not b!4113613) (not b!4113618) (not b!4113617) b_and!317673 b_and!317675 (not b_next!116493) (not b!4113612) (not b!4113619))
(check-sat b_and!317675 b_and!317673 (not b_next!116493) (not b_next!116491))
