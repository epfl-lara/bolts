; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!389672 () Bool)

(assert start!389672)

(declare-fun b!4111999 () Bool)

(declare-fun b_free!115675 () Bool)

(declare-fun b_next!116379 () Bool)

(assert (=> b!4111999 (= b_free!115675 (not b_next!116379))))

(declare-fun tp!1250906 () Bool)

(declare-fun b_and!317561 () Bool)

(assert (=> b!4111999 (= tp!1250906 b_and!317561)))

(declare-fun b_free!115677 () Bool)

(declare-fun b_next!116381 () Bool)

(assert (=> b!4111999 (= b_free!115677 (not b_next!116381))))

(declare-fun tp!1250899 () Bool)

(declare-fun b_and!317563 () Bool)

(assert (=> b!4111999 (= tp!1250899 b_and!317563)))

(declare-fun b!4112007 () Bool)

(declare-fun b_free!115679 () Bool)

(declare-fun b_next!116383 () Bool)

(assert (=> b!4112007 (= b_free!115679 (not b_next!116383))))

(declare-fun tp!1250902 () Bool)

(declare-fun b_and!317565 () Bool)

(assert (=> b!4112007 (= tp!1250902 b_and!317565)))

(declare-fun b_free!115681 () Bool)

(declare-fun b_next!116385 () Bool)

(assert (=> b!4112007 (= b_free!115681 (not b_next!116385))))

(declare-fun tp!1250901 () Bool)

(declare-fun b_and!317567 () Bool)

(assert (=> b!4112007 (= tp!1250901 b_and!317567)))

(declare-fun b!4112001 () Bool)

(declare-fun b_free!115683 () Bool)

(declare-fun b_next!116387 () Bool)

(assert (=> b!4112001 (= b_free!115683 (not b_next!116387))))

(declare-fun tp!1250897 () Bool)

(declare-fun b_and!317569 () Bool)

(assert (=> b!4112001 (= tp!1250897 b_and!317569)))

(declare-fun b_free!115685 () Bool)

(declare-fun b_next!116389 () Bool)

(assert (=> b!4112001 (= b_free!115685 (not b_next!116389))))

(declare-fun tp!1250903 () Bool)

(declare-fun b_and!317571 () Bool)

(assert (=> b!4112001 (= tp!1250903 b_and!317571)))

(declare-fun e!2551106 () Bool)

(assert (=> b!4111999 (= e!2551106 (and tp!1250906 tp!1250899))))

(declare-fun b!4112000 () Bool)

(declare-fun e!2551109 () Bool)

(declare-fun e!2551101 () Bool)

(assert (=> b!4112000 (= e!2551109 e!2551101)))

(declare-fun res!1679848 () Bool)

(assert (=> b!4112000 (=> (not res!1679848) (not e!2551101))))

(declare-datatypes ((LexerInterface!6793 0))(
  ( (LexerInterfaceExt!6790 (__x!27085 Int)) (Lexer!6791) )
))
(declare-fun thiss!26878 () LexerInterface!6793)

(declare-datatypes ((String!50919 0))(
  ( (String!50920 (value!225883 String)) )
))
(declare-datatypes ((List!44416 0))(
  ( (Nil!44292) (Cons!44292 (h!49712 String!50919) (t!340167 List!44416)) )
))
(declare-fun lt!1468281 () List!44416)

(declare-datatypes ((List!44417 0))(
  ( (Nil!44293) (Cons!44293 (h!49713 (_ BitVec 16)) (t!340168 List!44417)) )
))
(declare-datatypes ((TokenValue!7434 0))(
  ( (FloatLiteralValue!14868 (text!52483 List!44417)) (TokenValueExt!7433 (__x!27086 Int)) (Broken!37170 (value!225884 List!44417)) (Object!7557) (End!7434) (Def!7434) (Underscore!7434) (Match!7434) (Else!7434) (Error!7434) (Case!7434) (If!7434) (Extends!7434) (Abstract!7434) (Class!7434) (Val!7434) (DelimiterValue!14868 (del!7494 List!44417)) (KeywordValue!7440 (value!225885 List!44417)) (CommentValue!14868 (value!225886 List!44417)) (WhitespaceValue!14868 (value!225887 List!44417)) (IndentationValue!7434 (value!225888 List!44417)) (String!50921) (Int32!7434) (Broken!37171 (value!225889 List!44417)) (Boolean!7435) (Unit!63710) (OperatorValue!7437 (op!7494 List!44417)) (IdentifierValue!14868 (value!225890 List!44417)) (IdentifierValue!14869 (value!225891 List!44417)) (WhitespaceValue!14869 (value!225892 List!44417)) (True!14868) (False!14868) (Broken!37172 (value!225893 List!44417)) (Broken!37173 (value!225894 List!44417)) (True!14869) (RightBrace!7434) (RightBracket!7434) (Colon!7434) (Null!7434) (Comma!7434) (LeftBracket!7434) (False!14869) (LeftBrace!7434) (ImaginaryLiteralValue!7434 (text!52484 List!44417)) (StringLiteralValue!22302 (value!225895 List!44417)) (EOFValue!7434 (value!225896 List!44417)) (IdentValue!7434 (value!225897 List!44417)) (DelimiterValue!14869 (value!225898 List!44417)) (DedentValue!7434 (value!225899 List!44417)) (NewLineValue!7434 (value!225900 List!44417)) (IntegerValue!22302 (value!225901 (_ BitVec 32)) (text!52485 List!44417)) (IntegerValue!22303 (value!225902 Int) (text!52486 List!44417)) (Times!7434) (Or!7434) (Equal!7434) (Minus!7434) (Broken!37174 (value!225903 List!44417)) (And!7434) (Div!7434) (LessEqual!7434) (Mod!7434) (Concat!19543) (Not!7434) (Plus!7434) (SpaceValue!7434 (value!225904 List!44417)) (IntegerValue!22304 (value!225905 Int) (text!52487 List!44417)) (StringLiteralValue!22303 (text!52488 List!44417)) (FloatLiteralValue!14869 (text!52489 List!44417)) (BytesLiteralValue!7434 (value!225906 List!44417)) (CommentValue!14869 (value!225907 List!44417)) (StringLiteralValue!22304 (value!225908 List!44417)) (ErrorTokenValue!7434 (msg!7495 List!44417)) )
))
(declare-datatypes ((C!24404 0))(
  ( (C!24405 (val!14312 Int)) )
))
(declare-datatypes ((List!44418 0))(
  ( (Nil!44294) (Cons!44294 (h!49714 C!24404) (t!340169 List!44418)) )
))
(declare-datatypes ((IArray!26835 0))(
  ( (IArray!26836 (innerList!13475 List!44418)) )
))
(declare-datatypes ((Conc!13415 0))(
  ( (Node!13415 (left!33211 Conc!13415) (right!33541 Conc!13415) (csize!27060 Int) (cheight!13626 Int)) (Leaf!20732 (xs!16721 IArray!26835) (csize!27061 Int)) (Empty!13415) )
))
(declare-datatypes ((BalanceConc!26424 0))(
  ( (BalanceConc!26425 (c!706880 Conc!13415)) )
))
(declare-datatypes ((Regex!12109 0))(
  ( (ElementMatch!12109 (c!706881 C!24404)) (Concat!19544 (regOne!24730 Regex!12109) (regTwo!24730 Regex!12109)) (EmptyExpr!12109) (Star!12109 (reg!12438 Regex!12109)) (EmptyLang!12109) (Union!12109 (regOne!24731 Regex!12109) (regTwo!24731 Regex!12109)) )
))
(declare-datatypes ((TokenValueInjection!14296 0))(
  ( (TokenValueInjection!14297 (toValue!9840 Int) (toChars!9699 Int)) )
))
(declare-datatypes ((Rule!14208 0))(
  ( (Rule!14209 (regex!7204 Regex!12109) (tag!8064 String!50919) (isSeparator!7204 Bool) (transformation!7204 TokenValueInjection!14296)) )
))
(declare-datatypes ((List!44419 0))(
  ( (Nil!44295) (Cons!44295 (h!49715 Rule!14208) (t!340170 List!44419)) )
))
(declare-fun l!6462 () List!44419)

(declare-fun noDuplicateTag!2881 (LexerInterface!6793 List!44419 List!44416) Bool)

(assert (=> b!4112000 (= res!1679848 (noDuplicateTag!2881 thiss!26878 l!6462 lt!1468281))))

(declare-fun e2!99 () Rule!14208)

(declare-fun lt!1468278 () List!44416)

(assert (=> b!4112000 (= lt!1468281 (Cons!44292 (tag!8064 e2!99) lt!1468278))))

(declare-fun e!2551113 () Bool)

(assert (=> b!4112001 (= e!2551113 (and tp!1250897 tp!1250903))))

(declare-fun e!2551105 () Bool)

(declare-fun tp!1250905 () Bool)

(declare-fun e1!99 () Rule!14208)

(declare-fun e!2551108 () Bool)

(declare-fun b!4112002 () Bool)

(declare-fun inv!58919 (String!50919) Bool)

(declare-fun inv!58921 (TokenValueInjection!14296) Bool)

(assert (=> b!4112002 (= e!2551108 (and tp!1250905 (inv!58919 (tag!8064 e1!99)) (inv!58921 (transformation!7204 e1!99)) e!2551105))))

(declare-fun b!4112003 () Bool)

(declare-fun e!2551103 () Bool)

(assert (=> b!4112003 (= e!2551103 e!2551109)))

(declare-fun res!1679851 () Bool)

(assert (=> b!4112003 (=> (not res!1679851) (not e!2551109))))

(declare-fun lt!1468279 () List!44419)

(assert (=> b!4112003 (= res!1679851 (noDuplicateTag!2881 thiss!26878 lt!1468279 lt!1468278))))

(assert (=> b!4112003 (= lt!1468278 (Cons!44292 (tag!8064 e1!99) Nil!44292))))

(declare-fun tp!1250900 () Bool)

(declare-fun e!2551111 () Bool)

(declare-fun b!4112004 () Bool)

(assert (=> b!4112004 (= e!2551111 (and tp!1250900 (inv!58919 (tag!8064 (h!49715 l!6462))) (inv!58921 (transformation!7204 (h!49715 l!6462))) e!2551113))))

(declare-fun res!1679849 () Bool)

(declare-fun e!2551107 () Bool)

(assert (=> start!389672 (=> (not res!1679849) (not e!2551107))))

(get-info :version)

(assert (=> start!389672 (= res!1679849 ((_ is Lexer!6791) thiss!26878))))

(assert (=> start!389672 e!2551107))

(assert (=> start!389672 true))

(assert (=> start!389672 e!2551108))

(declare-fun e!2551104 () Bool)

(assert (=> start!389672 e!2551104))

(declare-fun e!2551100 () Bool)

(assert (=> start!389672 e!2551100))

(declare-fun b!4112005 () Bool)

(assert (=> b!4112005 (= e!2551101 false)))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun lt!1468280 () (InoxSet String!50919))

(declare-fun toSet!9 (List!44416) (InoxSet String!50919))

(assert (=> b!4112005 (= lt!1468280 (toSet!9 (Cons!44292 (tag!8064 e1!99) (Cons!44292 (tag!8064 e2!99) Nil!44292))))))

(declare-fun lt!1468277 () (InoxSet String!50919))

(assert (=> b!4112005 (= lt!1468277 (toSet!9 lt!1468281))))

(declare-fun b!4112006 () Bool)

(assert (=> b!4112006 (= e!2551107 e!2551103)))

(declare-fun res!1679850 () Bool)

(assert (=> b!4112006 (=> (not res!1679850) (not e!2551103))))

(assert (=> b!4112006 (= res!1679850 (noDuplicateTag!2881 thiss!26878 (Cons!44295 e1!99 lt!1468279) Nil!44292))))

(assert (=> b!4112006 (= lt!1468279 (Cons!44295 e2!99 l!6462))))

(assert (=> b!4112007 (= e!2551105 (and tp!1250902 tp!1250901))))

(declare-fun b!4112008 () Bool)

(declare-fun tp!1250898 () Bool)

(assert (=> b!4112008 (= e!2551100 (and e!2551111 tp!1250898))))

(declare-fun b!4112009 () Bool)

(declare-fun tp!1250904 () Bool)

(assert (=> b!4112009 (= e!2551104 (and tp!1250904 (inv!58919 (tag!8064 e2!99)) (inv!58921 (transformation!7204 e2!99)) e!2551106))))

(assert (= (and start!389672 res!1679849) b!4112006))

(assert (= (and b!4112006 res!1679850) b!4112003))

(assert (= (and b!4112003 res!1679851) b!4112000))

(assert (= (and b!4112000 res!1679848) b!4112005))

(assert (= b!4112002 b!4112007))

(assert (= start!389672 b!4112002))

(assert (= b!4112009 b!4111999))

(assert (= start!389672 b!4112009))

(assert (= b!4112004 b!4112001))

(assert (= b!4112008 b!4112004))

(assert (= (and start!389672 ((_ is Cons!44295) l!6462)) b!4112008))

(declare-fun m!4713451 () Bool)

(assert (=> b!4112002 m!4713451))

(declare-fun m!4713453 () Bool)

(assert (=> b!4112002 m!4713453))

(declare-fun m!4713455 () Bool)

(assert (=> b!4112004 m!4713455))

(declare-fun m!4713457 () Bool)

(assert (=> b!4112004 m!4713457))

(declare-fun m!4713459 () Bool)

(assert (=> b!4112006 m!4713459))

(declare-fun m!4713461 () Bool)

(assert (=> b!4112003 m!4713461))

(declare-fun m!4713463 () Bool)

(assert (=> b!4112009 m!4713463))

(declare-fun m!4713465 () Bool)

(assert (=> b!4112009 m!4713465))

(declare-fun m!4713467 () Bool)

(assert (=> b!4112005 m!4713467))

(declare-fun m!4713469 () Bool)

(assert (=> b!4112005 m!4713469))

(declare-fun m!4713471 () Bool)

(assert (=> b!4112000 m!4713471))

(check-sat (not b_next!116389) (not b!4112002) b_and!317569 (not b!4112009) (not b_next!116381) (not b_next!116383) b_and!317561 (not b_next!116385) (not b!4112003) (not b!4112004) (not b!4112005) (not b_next!116379) b_and!317565 (not b_next!116387) (not b!4112006) b_and!317567 b_and!317571 (not b!4112000) (not b!4112008) b_and!317563)
(check-sat (not b_next!116387) (not b_next!116389) b_and!317569 (not b_next!116381) (not b_next!116383) b_and!317561 b_and!317563 (not b_next!116385) (not b_next!116379) b_and!317565 b_and!317567 b_and!317571)
