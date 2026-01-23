; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!395730 () Bool)

(assert start!395730)

(declare-fun b!4156029 () Bool)

(declare-fun b_free!119315 () Bool)

(declare-fun b_next!120019 () Bool)

(assert (=> b!4156029 (= b_free!119315 (not b_next!120019))))

(declare-fun tp!1267802 () Bool)

(declare-fun b_and!323677 () Bool)

(assert (=> b!4156029 (= tp!1267802 b_and!323677)))

(declare-fun b_free!119317 () Bool)

(declare-fun b_next!120021 () Bool)

(assert (=> b!4156029 (= b_free!119317 (not b_next!120021))))

(declare-fun tp!1267793 () Bool)

(declare-fun b_and!323679 () Bool)

(assert (=> b!4156029 (= tp!1267793 b_and!323679)))

(declare-fun b!4156028 () Bool)

(declare-fun b_free!119319 () Bool)

(declare-fun b_next!120023 () Bool)

(assert (=> b!4156028 (= b_free!119319 (not b_next!120023))))

(declare-fun tp!1267794 () Bool)

(declare-fun b_and!323681 () Bool)

(assert (=> b!4156028 (= tp!1267794 b_and!323681)))

(declare-fun b_free!119321 () Bool)

(declare-fun b_next!120025 () Bool)

(assert (=> b!4156028 (= b_free!119321 (not b_next!120025))))

(declare-fun tp!1267796 () Bool)

(declare-fun b_and!323683 () Bool)

(assert (=> b!4156028 (= tp!1267796 b_and!323683)))

(declare-fun b!4156035 () Bool)

(declare-fun b_free!119323 () Bool)

(declare-fun b_next!120027 () Bool)

(assert (=> b!4156035 (= b_free!119323 (not b_next!120027))))

(declare-fun tp!1267797 () Bool)

(declare-fun b_and!323685 () Bool)

(assert (=> b!4156035 (= tp!1267797 b_and!323685)))

(declare-fun b_free!119325 () Bool)

(declare-fun b_next!120029 () Bool)

(assert (=> b!4156035 (= b_free!119325 (not b_next!120029))))

(declare-fun tp!1267801 () Bool)

(declare-fun b_and!323687 () Bool)

(assert (=> b!4156035 (= tp!1267801 b_and!323687)))

(declare-fun b!4156025 () Bool)

(declare-fun e!2579006 () Bool)

(declare-datatypes ((List!45396 0))(
  ( (Nil!45272) (Cons!45272 (h!50692 (_ BitVec 16)) (t!343427 List!45396)) )
))
(declare-datatypes ((TokenValue!7704 0))(
  ( (FloatLiteralValue!15408 (text!54373 List!45396)) (TokenValueExt!7703 (__x!27625 Int)) (Broken!38520 (value!233500 List!45396)) (Object!7827) (End!7704) (Def!7704) (Underscore!7704) (Match!7704) (Else!7704) (Error!7704) (Case!7704) (If!7704) (Extends!7704) (Abstract!7704) (Class!7704) (Val!7704) (DelimiterValue!15408 (del!7764 List!45396)) (KeywordValue!7710 (value!233501 List!45396)) (CommentValue!15408 (value!233502 List!45396)) (WhitespaceValue!15408 (value!233503 List!45396)) (IndentationValue!7704 (value!233504 List!45396)) (String!52269) (Int32!7704) (Broken!38521 (value!233505 List!45396)) (Boolean!7705) (Unit!64456) (OperatorValue!7707 (op!7764 List!45396)) (IdentifierValue!15408 (value!233506 List!45396)) (IdentifierValue!15409 (value!233507 List!45396)) (WhitespaceValue!15409 (value!233508 List!45396)) (True!15408) (False!15408) (Broken!38522 (value!233509 List!45396)) (Broken!38523 (value!233510 List!45396)) (True!15409) (RightBrace!7704) (RightBracket!7704) (Colon!7704) (Null!7704) (Comma!7704) (LeftBracket!7704) (False!15409) (LeftBrace!7704) (ImaginaryLiteralValue!7704 (text!54374 List!45396)) (StringLiteralValue!23112 (value!233511 List!45396)) (EOFValue!7704 (value!233512 List!45396)) (IdentValue!7704 (value!233513 List!45396)) (DelimiterValue!15409 (value!233514 List!45396)) (DedentValue!7704 (value!233515 List!45396)) (NewLineValue!7704 (value!233516 List!45396)) (IntegerValue!23112 (value!233517 (_ BitVec 32)) (text!54375 List!45396)) (IntegerValue!23113 (value!233518 Int) (text!54376 List!45396)) (Times!7704) (Or!7704) (Equal!7704) (Minus!7704) (Broken!38524 (value!233519 List!45396)) (And!7704) (Div!7704) (LessEqual!7704) (Mod!7704) (Concat!20083) (Not!7704) (Plus!7704) (SpaceValue!7704 (value!233520 List!45396)) (IntegerValue!23114 (value!233521 Int) (text!54377 List!45396)) (StringLiteralValue!23113 (text!54378 List!45396)) (FloatLiteralValue!15409 (text!54379 List!45396)) (BytesLiteralValue!7704 (value!233522 List!45396)) (CommentValue!15409 (value!233523 List!45396)) (StringLiteralValue!23114 (value!233524 List!45396)) (ErrorTokenValue!7704 (msg!7765 List!45396)) )
))
(declare-datatypes ((C!24944 0))(
  ( (C!24945 (val!14582 Int)) )
))
(declare-datatypes ((Regex!12379 0))(
  ( (ElementMatch!12379 (c!711412 C!24944)) (Concat!20084 (regOne!25270 Regex!12379) (regTwo!25270 Regex!12379)) (EmptyExpr!12379) (Star!12379 (reg!12708 Regex!12379)) (EmptyLang!12379) (Union!12379 (regOne!25271 Regex!12379) (regTwo!25271 Regex!12379)) )
))
(declare-datatypes ((List!45397 0))(
  ( (Nil!45273) (Cons!45273 (h!50693 C!24944) (t!343428 List!45397)) )
))
(declare-datatypes ((IArray!27375 0))(
  ( (IArray!27376 (innerList!13745 List!45397)) )
))
(declare-datatypes ((String!52270 0))(
  ( (String!52271 (value!233525 String)) )
))
(declare-datatypes ((Conc!13685 0))(
  ( (Node!13685 (left!33844 Conc!13685) (right!34174 Conc!13685) (csize!27600 Int) (cheight!13896 Int)) (Leaf!21137 (xs!16991 IArray!27375) (csize!27601 Int)) (Empty!13685) )
))
(declare-datatypes ((BalanceConc!26964 0))(
  ( (BalanceConc!26965 (c!711413 Conc!13685)) )
))
(declare-datatypes ((TokenValueInjection!14836 0))(
  ( (TokenValueInjection!14837 (toValue!10138 Int) (toChars!9997 Int)) )
))
(declare-datatypes ((Rule!14748 0))(
  ( (Rule!14749 (regex!7474 Regex!12379) (tag!8338 String!52270) (isSeparator!7474 Bool) (transformation!7474 TokenValueInjection!14836)) )
))
(declare-fun r1!615 () Rule!14748)

(declare-fun r2!597 () Rule!14748)

(assert (=> b!4156025 (= e!2579006 (not (= (tag!8338 r1!615) (tag!8338 r2!597))))))

(declare-fun b!4156026 () Bool)

(declare-fun res!1702098 () Bool)

(declare-fun e!2579007 () Bool)

(assert (=> b!4156026 (=> (not res!1702098) (not e!2579007))))

(declare-datatypes ((List!45398 0))(
  ( (Nil!45274) (Cons!45274 (h!50694 Rule!14748) (t!343429 List!45398)) )
))
(declare-fun rules!4102 () List!45398)

(declare-fun head!8796 (List!45398) Rule!14748)

(assert (=> b!4156026 (= res!1702098 (= (head!8796 rules!4102) r1!615))))

(declare-fun b!4156027 () Bool)

(declare-fun e!2579014 () Bool)

(declare-fun e!2579008 () Bool)

(declare-fun tp!1267800 () Bool)

(assert (=> b!4156027 (= e!2579014 (and e!2579008 tp!1267800))))

(declare-fun e!2579004 () Bool)

(assert (=> b!4156028 (= e!2579004 (and tp!1267794 tp!1267796))))

(declare-fun e!2579005 () Bool)

(assert (=> b!4156029 (= e!2579005 (and tp!1267802 tp!1267793))))

(declare-fun b!4156030 () Bool)

(declare-fun res!1702096 () Bool)

(assert (=> b!4156030 (=> (not res!1702096) (not e!2579007))))

(declare-fun contains!9181 (List!45398 Rule!14748) Bool)

(assert (=> b!4156030 (= res!1702096 (contains!9181 rules!4102 r2!597))))

(declare-fun b!4156031 () Bool)

(assert (=> b!4156031 (= e!2579007 (not e!2579006))))

(declare-fun res!1702099 () Bool)

(assert (=> b!4156031 (=> res!1702099 e!2579006)))

(declare-fun lt!1481466 () List!45398)

(declare-datatypes ((List!45399 0))(
  ( (Nil!45275) (Cons!45275 (h!50695 String!52270) (t!343430 List!45399)) )
))
(declare-fun lt!1481468 () List!45399)

(declare-datatypes ((LexerInterface!7063 0))(
  ( (LexerInterfaceExt!7060 (__x!27626 Int)) (Lexer!7061) )
))
(declare-fun thiss!26968 () LexerInterface!7063)

(declare-fun noDuplicateTag!3051 (LexerInterface!7063 List!45398 List!45399) Bool)

(assert (=> b!4156031 (= res!1702099 (not (noDuplicateTag!3051 thiss!26968 lt!1481466 lt!1481468)))))

(assert (=> b!4156031 (not (= (tag!8338 r2!597) (tag!8338 r1!615)))))

(declare-datatypes ((Unit!64457 0))(
  ( (Unit!64458) )
))
(declare-fun lt!1481467 () Unit!64457)

(declare-fun lemmaNoDuplicateAndTagInAccThenRuleCannotHaveSame!14 (LexerInterface!7063 List!45398 Rule!14748 String!52270 List!45399) Unit!64457)

(assert (=> b!4156031 (= lt!1481467 (lemmaNoDuplicateAndTagInAccThenRuleCannotHaveSame!14 thiss!26968 lt!1481466 r2!597 (tag!8338 r1!615) lt!1481468))))

(assert (=> b!4156031 (= lt!1481468 (Cons!45275 (tag!8338 r1!615) Nil!45275))))

(declare-fun tail!6631 (List!45398) List!45398)

(assert (=> b!4156031 (= lt!1481466 (tail!6631 rules!4102))))

(declare-fun b!4156032 () Bool)

(declare-fun res!1702100 () Bool)

(assert (=> b!4156032 (=> (not res!1702100) (not e!2579007))))

(assert (=> b!4156032 (= res!1702100 (contains!9181 rules!4102 r1!615))))

(declare-fun e!2579012 () Bool)

(declare-fun tp!1267795 () Bool)

(declare-fun e!2579009 () Bool)

(declare-fun b!4156033 () Bool)

(declare-fun inv!59830 (String!52270) Bool)

(declare-fun inv!59832 (TokenValueInjection!14836) Bool)

(assert (=> b!4156033 (= e!2579012 (and tp!1267795 (inv!59830 (tag!8338 r1!615)) (inv!59832 (transformation!7474 r1!615)) e!2579009))))

(declare-fun b!4156034 () Bool)

(declare-fun tp!1267799 () Bool)

(declare-fun e!2579013 () Bool)

(assert (=> b!4156034 (= e!2579013 (and tp!1267799 (inv!59830 (tag!8338 r2!597)) (inv!59832 (transformation!7474 r2!597)) e!2579005))))

(assert (=> b!4156035 (= e!2579009 (and tp!1267797 tp!1267801))))

(declare-fun b!4156036 () Bool)

(declare-fun tp!1267798 () Bool)

(assert (=> b!4156036 (= e!2579008 (and tp!1267798 (inv!59830 (tag!8338 (h!50694 rules!4102))) (inv!59832 (transformation!7474 (h!50694 rules!4102))) e!2579004))))

(declare-fun b!4156037 () Bool)

(declare-fun res!1702095 () Bool)

(assert (=> b!4156037 (=> (not res!1702095) (not e!2579007))))

(declare-fun noDuplicateTag$default$2!56 (LexerInterface!7063) List!45399)

(assert (=> b!4156037 (= res!1702095 (noDuplicateTag!3051 thiss!26968 rules!4102 (noDuplicateTag$default$2!56 thiss!26968)))))

(declare-fun res!1702097 () Bool)

(assert (=> start!395730 (=> (not res!1702097) (not e!2579007))))

(get-info :version)

(assert (=> start!395730 (= res!1702097 ((_ is Lexer!7061) thiss!26968))))

(assert (=> start!395730 e!2579007))

(assert (=> start!395730 true))

(assert (=> start!395730 e!2579014))

(assert (=> start!395730 e!2579012))

(assert (=> start!395730 e!2579013))

(declare-fun b!4156038 () Bool)

(declare-fun res!1702094 () Bool)

(assert (=> b!4156038 (=> (not res!1702094) (not e!2579007))))

(declare-fun getIndex!816 (List!45398 Rule!14748) Int)

(assert (=> b!4156038 (= res!1702094 (< (getIndex!816 rules!4102 r1!615) (getIndex!816 rules!4102 r2!597)))))

(assert (= (and start!395730 res!1702097) b!4156032))

(assert (= (and b!4156032 res!1702100) b!4156030))

(assert (= (and b!4156030 res!1702096) b!4156037))

(assert (= (and b!4156037 res!1702095) b!4156038))

(assert (= (and b!4156038 res!1702094) b!4156026))

(assert (= (and b!4156026 res!1702098) b!4156031))

(assert (= (and b!4156031 (not res!1702099)) b!4156025))

(assert (= b!4156036 b!4156028))

(assert (= b!4156027 b!4156036))

(assert (= (and start!395730 ((_ is Cons!45274) rules!4102)) b!4156027))

(assert (= b!4156033 b!4156035))

(assert (= start!395730 b!4156033))

(assert (= b!4156034 b!4156029))

(assert (= start!395730 b!4156034))

(declare-fun m!4750305 () Bool)

(assert (=> b!4156032 m!4750305))

(declare-fun m!4750307 () Bool)

(assert (=> b!4156034 m!4750307))

(declare-fun m!4750309 () Bool)

(assert (=> b!4156034 m!4750309))

(declare-fun m!4750311 () Bool)

(assert (=> b!4156030 m!4750311))

(declare-fun m!4750313 () Bool)

(assert (=> b!4156036 m!4750313))

(declare-fun m!4750315 () Bool)

(assert (=> b!4156036 m!4750315))

(declare-fun m!4750317 () Bool)

(assert (=> b!4156037 m!4750317))

(assert (=> b!4156037 m!4750317))

(declare-fun m!4750319 () Bool)

(assert (=> b!4156037 m!4750319))

(declare-fun m!4750321 () Bool)

(assert (=> b!4156026 m!4750321))

(declare-fun m!4750323 () Bool)

(assert (=> b!4156038 m!4750323))

(declare-fun m!4750325 () Bool)

(assert (=> b!4156038 m!4750325))

(declare-fun m!4750327 () Bool)

(assert (=> b!4156033 m!4750327))

(declare-fun m!4750329 () Bool)

(assert (=> b!4156033 m!4750329))

(declare-fun m!4750331 () Bool)

(assert (=> b!4156031 m!4750331))

(declare-fun m!4750333 () Bool)

(assert (=> b!4156031 m!4750333))

(declare-fun m!4750335 () Bool)

(assert (=> b!4156031 m!4750335))

(check-sat (not b_next!120025) b_and!323685 (not b!4156034) (not b!4156033) b_and!323683 b_and!323677 (not b!4156036) (not b_next!120023) (not b_next!120029) (not b!4156031) (not b_next!120021) (not b_next!120027) (not b!4156038) b_and!323687 (not b_next!120019) (not b!4156037) (not b!4156032) (not b!4156030) (not b!4156027) (not b!4156026) b_and!323681 b_and!323679)
(check-sat (not b_next!120025) b_and!323685 (not b_next!120021) (not b_next!120027) b_and!323683 b_and!323677 (not b_next!120023) (not b_next!120029) b_and!323687 (not b_next!120019) b_and!323681 b_and!323679)
