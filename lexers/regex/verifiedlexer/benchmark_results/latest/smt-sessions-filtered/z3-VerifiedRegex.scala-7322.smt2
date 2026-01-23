; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!389784 () Bool)

(assert start!389784)

(declare-fun b!4113748 () Bool)

(declare-fun b_free!115803 () Bool)

(declare-fun b_next!116507 () Bool)

(assert (=> b!4113748 (= b_free!115803 (not b_next!116507))))

(declare-fun tp!1252467 () Bool)

(declare-fun b_and!317689 () Bool)

(assert (=> b!4113748 (= tp!1252467 b_and!317689)))

(declare-fun b_free!115805 () Bool)

(declare-fun b_next!116509 () Bool)

(assert (=> b!4113748 (= b_free!115805 (not b_next!116509))))

(declare-fun tp!1252469 () Bool)

(declare-fun b_and!317691 () Bool)

(assert (=> b!4113748 (= tp!1252469 b_and!317691)))

(declare-fun b!4113746 () Bool)

(declare-fun tp!1252468 () Bool)

(declare-datatypes ((List!44464 0))(
  ( (Nil!44340) (Cons!44340 (h!49760 (_ BitVec 16)) (t!340215 List!44464)) )
))
(declare-datatypes ((TokenValue!7446 0))(
  ( (FloatLiteralValue!14892 (text!52567 List!44464)) (TokenValueExt!7445 (__x!27109 Int)) (Broken!37230 (value!226213 List!44464)) (Object!7569) (End!7446) (Def!7446) (Underscore!7446) (Match!7446) (Else!7446) (Error!7446) (Case!7446) (If!7446) (Extends!7446) (Abstract!7446) (Class!7446) (Val!7446) (DelimiterValue!14892 (del!7506 List!44464)) (KeywordValue!7452 (value!226214 List!44464)) (CommentValue!14892 (value!226215 List!44464)) (WhitespaceValue!14892 (value!226216 List!44464)) (IndentationValue!7446 (value!226217 List!44464)) (String!50979) (Int32!7446) (Broken!37231 (value!226218 List!44464)) (Boolean!7447) (Unit!63736) (OperatorValue!7449 (op!7506 List!44464)) (IdentifierValue!14892 (value!226219 List!44464)) (IdentifierValue!14893 (value!226220 List!44464)) (WhitespaceValue!14893 (value!226221 List!44464)) (True!14892) (False!14892) (Broken!37232 (value!226222 List!44464)) (Broken!37233 (value!226223 List!44464)) (True!14893) (RightBrace!7446) (RightBracket!7446) (Colon!7446) (Null!7446) (Comma!7446) (LeftBracket!7446) (False!14893) (LeftBrace!7446) (ImaginaryLiteralValue!7446 (text!52568 List!44464)) (StringLiteralValue!22338 (value!226224 List!44464)) (EOFValue!7446 (value!226225 List!44464)) (IdentValue!7446 (value!226226 List!44464)) (DelimiterValue!14893 (value!226227 List!44464)) (DedentValue!7446 (value!226228 List!44464)) (NewLineValue!7446 (value!226229 List!44464)) (IntegerValue!22338 (value!226230 (_ BitVec 32)) (text!52569 List!44464)) (IntegerValue!22339 (value!226231 Int) (text!52570 List!44464)) (Times!7446) (Or!7446) (Equal!7446) (Minus!7446) (Broken!37234 (value!226232 List!44464)) (And!7446) (Div!7446) (LessEqual!7446) (Mod!7446) (Concat!19567) (Not!7446) (Plus!7446) (SpaceValue!7446 (value!226233 List!44464)) (IntegerValue!22340 (value!226234 Int) (text!52571 List!44464)) (StringLiteralValue!22339 (text!52572 List!44464)) (FloatLiteralValue!14893 (text!52573 List!44464)) (BytesLiteralValue!7446 (value!226235 List!44464)) (CommentValue!14893 (value!226236 List!44464)) (StringLiteralValue!22340 (value!226237 List!44464)) (ErrorTokenValue!7446 (msg!7507 List!44464)) )
))
(declare-datatypes ((C!24428 0))(
  ( (C!24429 (val!14324 Int)) )
))
(declare-datatypes ((List!44465 0))(
  ( (Nil!44341) (Cons!44341 (h!49761 C!24428) (t!340216 List!44465)) )
))
(declare-datatypes ((IArray!26859 0))(
  ( (IArray!26860 (innerList!13487 List!44465)) )
))
(declare-datatypes ((Conc!13427 0))(
  ( (Node!13427 (left!33237 Conc!13427) (right!33567 Conc!13427) (csize!27084 Int) (cheight!13638 Int)) (Leaf!20750 (xs!16733 IArray!26859) (csize!27085 Int)) (Empty!13427) )
))
(declare-datatypes ((BalanceConc!26448 0))(
  ( (BalanceConc!26449 (c!706946 Conc!13427)) )
))
(declare-datatypes ((TokenValueInjection!14320 0))(
  ( (TokenValueInjection!14321 (toValue!9860 Int) (toChars!9719 Int)) )
))
(declare-datatypes ((Regex!12121 0))(
  ( (ElementMatch!12121 (c!706947 C!24428)) (Concat!19568 (regOne!24754 Regex!12121) (regTwo!24754 Regex!12121)) (EmptyExpr!12121) (Star!12121 (reg!12450 Regex!12121)) (EmptyLang!12121) (Union!12121 (regOne!24755 Regex!12121) (regTwo!24755 Regex!12121)) )
))
(declare-datatypes ((String!50980 0))(
  ( (String!50981 (value!226238 String)) )
))
(declare-datatypes ((Rule!14232 0))(
  ( (Rule!14233 (regex!7216 Regex!12121) (tag!8076 String!50980) (isSeparator!7216 Bool) (transformation!7216 TokenValueInjection!14320)) )
))
(declare-datatypes ((List!44466 0))(
  ( (Nil!44342) (Cons!44342 (h!49762 Rule!14232) (t!340217 List!44466)) )
))
(declare-fun l!6467 () List!44466)

(declare-fun e!2552097 () Bool)

(declare-fun e!2552105 () Bool)

(declare-fun inv!58949 (String!50980) Bool)

(declare-fun inv!58951 (TokenValueInjection!14320) Bool)

(assert (=> b!4113746 (= e!2552097 (and tp!1252468 (inv!58949 (tag!8076 (h!49762 l!6467))) (inv!58951 (transformation!7216 (h!49762 l!6467))) e!2552105))))

(declare-fun b!4113747 () Bool)

(declare-fun res!1680265 () Bool)

(declare-fun e!2552107 () Bool)

(assert (=> b!4113747 (=> (not res!1680265) (not e!2552107))))

(declare-datatypes ((List!44467 0))(
  ( (Nil!44343) (Cons!44343 (h!49763 String!50980) (t!340218 List!44467)) )
))
(declare-fun acc!555 () List!44467)

(declare-fun newAcc!81 () List!44467)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!6836 (List!44467) (InoxSet String!50980))

(assert (=> b!4113747 (= res!1680265 (= (content!6836 acc!555) (content!6836 newAcc!81)))))

(assert (=> b!4113748 (= e!2552105 (and tp!1252467 tp!1252469))))

(declare-fun b!4113750 () Bool)

(declare-fun res!1680267 () Bool)

(assert (=> b!4113750 (=> (not res!1680267) (not e!2552107))))

(get-info :version)

(assert (=> b!4113750 (= res!1680267 ((_ is Cons!44342) l!6467))))

(declare-fun b!4113751 () Bool)

(declare-fun res!1680263 () Bool)

(declare-fun e!2552106 () Bool)

(assert (=> b!4113751 (=> (not res!1680263) (not e!2552106))))

(declare-fun lt!1468452 () List!44467)

(declare-fun lt!1468450 () List!44467)

(assert (=> b!4113751 (= res!1680263 (= (content!6836 lt!1468452) (content!6836 lt!1468450)))))

(declare-fun b!4113752 () Bool)

(declare-fun e!2552101 () Bool)

(declare-fun tp!1252470 () Bool)

(assert (=> b!4113752 (= e!2552101 (and (inv!58949 (h!49763 newAcc!81)) tp!1252470))))

(declare-fun b!4113753 () Bool)

(declare-fun e!2552102 () Bool)

(declare-fun tp!1252471 () Bool)

(assert (=> b!4113753 (= e!2552102 (and (inv!58949 (h!49763 acc!555)) tp!1252471))))

(declare-fun b!4113754 () Bool)

(declare-fun e!2552104 () Bool)

(assert (=> b!4113754 (= e!2552107 e!2552104)))

(declare-fun res!1680264 () Bool)

(assert (=> b!4113754 (=> (not res!1680264) (not e!2552104))))

(declare-fun contains!8886 (List!44467 String!50980) Bool)

(assert (=> b!4113754 (= res!1680264 (= (contains!8886 acc!555 (tag!8076 (h!49762 l!6467))) (contains!8886 newAcc!81 (tag!8076 (h!49762 l!6467)))))))

(declare-datatypes ((Unit!63737 0))(
  ( (Unit!63738) )
))
(declare-fun lt!1468451 () Unit!63737)

(declare-fun subsetContains!80 (List!44467 List!44467) Unit!63737)

(assert (=> b!4113754 (= lt!1468451 (subsetContains!80 newAcc!81 acc!555))))

(declare-fun lt!1468449 () Unit!63737)

(assert (=> b!4113754 (= lt!1468449 (subsetContains!80 acc!555 newAcc!81))))

(declare-fun b!4113755 () Bool)

(declare-fun e!2552098 () Bool)

(declare-fun tp!1252472 () Bool)

(assert (=> b!4113755 (= e!2552098 (and e!2552097 tp!1252472))))

(declare-fun res!1680266 () Bool)

(assert (=> start!389784 (=> (not res!1680266) (not e!2552107))))

(declare-datatypes ((LexerInterface!6805 0))(
  ( (LexerInterfaceExt!6802 (__x!27110 Int)) (Lexer!6803) )
))
(declare-fun thiss!26911 () LexerInterface!6805)

(assert (=> start!389784 (= res!1680266 ((_ is Lexer!6803) thiss!26911))))

(assert (=> start!389784 e!2552107))

(assert (=> start!389784 true))

(assert (=> start!389784 e!2552098))

(assert (=> start!389784 e!2552102))

(assert (=> start!389784 e!2552101))

(declare-fun b!4113749 () Bool)

(assert (=> b!4113749 (= e!2552106 (not true))))

(declare-fun noDuplicateTag!2893 (LexerInterface!6805 List!44466 List!44467) Bool)

(assert (=> b!4113749 (noDuplicateTag!2893 thiss!26911 (t!340217 l!6467) lt!1468450)))

(declare-fun lt!1468453 () Unit!63737)

(declare-fun lemmaNoDuplicateSameWithAccWithSameContent!6 (LexerInterface!6805 List!44466 List!44467 List!44467) Unit!63737)

(assert (=> b!4113749 (= lt!1468453 (lemmaNoDuplicateSameWithAccWithSameContent!6 thiss!26911 (t!340217 l!6467) lt!1468452 lt!1468450))))

(declare-fun b!4113756 () Bool)

(assert (=> b!4113756 (= e!2552104 e!2552106)))

(declare-fun res!1680262 () Bool)

(assert (=> b!4113756 (=> (not res!1680262) (not e!2552106))))

(assert (=> b!4113756 (= res!1680262 (noDuplicateTag!2893 thiss!26911 (t!340217 l!6467) lt!1468452))))

(assert (=> b!4113756 (= lt!1468450 (Cons!44343 (tag!8076 (h!49762 l!6467)) newAcc!81))))

(assert (=> b!4113756 (= lt!1468452 (Cons!44343 (tag!8076 (h!49762 l!6467)) acc!555))))

(declare-fun b!4113757 () Bool)

(declare-fun res!1680268 () Bool)

(assert (=> b!4113757 (=> (not res!1680268) (not e!2552107))))

(assert (=> b!4113757 (= res!1680268 (noDuplicateTag!2893 thiss!26911 l!6467 acc!555))))

(assert (= (and start!389784 res!1680266) b!4113757))

(assert (= (and b!4113757 res!1680268) b!4113747))

(assert (= (and b!4113747 res!1680265) b!4113750))

(assert (= (and b!4113750 res!1680267) b!4113754))

(assert (= (and b!4113754 res!1680264) b!4113756))

(assert (= (and b!4113756 res!1680262) b!4113751))

(assert (= (and b!4113751 res!1680263) b!4113749))

(assert (= b!4113746 b!4113748))

(assert (= b!4113755 b!4113746))

(assert (= (and start!389784 ((_ is Cons!44342) l!6467)) b!4113755))

(assert (= (and start!389784 ((_ is Cons!44343) acc!555)) b!4113753))

(assert (= (and start!389784 ((_ is Cons!44343) newAcc!81)) b!4113752))

(declare-fun m!4714385 () Bool)

(assert (=> b!4113757 m!4714385))

(declare-fun m!4714387 () Bool)

(assert (=> b!4113751 m!4714387))

(declare-fun m!4714389 () Bool)

(assert (=> b!4113751 m!4714389))

(declare-fun m!4714391 () Bool)

(assert (=> b!4113752 m!4714391))

(declare-fun m!4714393 () Bool)

(assert (=> b!4113754 m!4714393))

(declare-fun m!4714395 () Bool)

(assert (=> b!4113754 m!4714395))

(declare-fun m!4714397 () Bool)

(assert (=> b!4113754 m!4714397))

(declare-fun m!4714399 () Bool)

(assert (=> b!4113754 m!4714399))

(declare-fun m!4714401 () Bool)

(assert (=> b!4113749 m!4714401))

(declare-fun m!4714403 () Bool)

(assert (=> b!4113749 m!4714403))

(declare-fun m!4714405 () Bool)

(assert (=> b!4113746 m!4714405))

(declare-fun m!4714407 () Bool)

(assert (=> b!4113746 m!4714407))

(declare-fun m!4714409 () Bool)

(assert (=> b!4113747 m!4714409))

(declare-fun m!4714411 () Bool)

(assert (=> b!4113747 m!4714411))

(declare-fun m!4714413 () Bool)

(assert (=> b!4113753 m!4714413))

(declare-fun m!4714415 () Bool)

(assert (=> b!4113756 m!4714415))

(check-sat b_and!317689 (not b!4113755) (not b!4113753) (not b_next!116509) (not b!4113756) (not b!4113754) (not b!4113746) (not b!4113752) (not b!4113749) (not b_next!116507) (not b!4113757) (not b!4113747) (not b!4113751) b_and!317691)
(check-sat b_and!317691 b_and!317689 (not b_next!116509) (not b_next!116507))
