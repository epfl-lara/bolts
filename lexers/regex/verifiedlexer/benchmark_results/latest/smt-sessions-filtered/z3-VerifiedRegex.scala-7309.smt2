; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!389576 () Bool)

(assert start!389576)

(declare-fun b!4110362 () Bool)

(declare-fun b_free!115467 () Bool)

(declare-fun b_next!116171 () Bool)

(assert (=> b!4110362 (= b_free!115467 (not b_next!116171))))

(declare-fun tp!1249277 () Bool)

(declare-fun b_and!317353 () Bool)

(assert (=> b!4110362 (= tp!1249277 b_and!317353)))

(declare-fun b_free!115469 () Bool)

(declare-fun b_next!116173 () Bool)

(assert (=> b!4110362 (= b_free!115469 (not b_next!116173))))

(declare-fun tp!1249278 () Bool)

(declare-fun b_and!317355 () Bool)

(assert (=> b!4110362 (= tp!1249278 b_and!317355)))

(declare-fun b!4110369 () Bool)

(declare-fun b_free!115471 () Bool)

(declare-fun b_next!116175 () Bool)

(assert (=> b!4110369 (= b_free!115471 (not b_next!116175))))

(declare-fun tp!1249269 () Bool)

(declare-fun b_and!317357 () Bool)

(assert (=> b!4110369 (= tp!1249269 b_and!317357)))

(declare-fun b_free!115473 () Bool)

(declare-fun b_next!116177 () Bool)

(assert (=> b!4110369 (= b_free!115473 (not b_next!116177))))

(declare-fun tp!1249271 () Bool)

(declare-fun b_and!317359 () Bool)

(assert (=> b!4110369 (= tp!1249271 b_and!317359)))

(declare-fun b!4110365 () Bool)

(declare-fun b_free!115475 () Bool)

(declare-fun b_next!116179 () Bool)

(assert (=> b!4110365 (= b_free!115475 (not b_next!116179))))

(declare-fun tp!1249276 () Bool)

(declare-fun b_and!317361 () Bool)

(assert (=> b!4110365 (= tp!1249276 b_and!317361)))

(declare-fun b_free!115477 () Bool)

(declare-fun b_next!116181 () Bool)

(assert (=> b!4110365 (= b_free!115477 (not b_next!116181))))

(declare-fun tp!1249273 () Bool)

(declare-fun b_and!317363 () Bool)

(assert (=> b!4110365 (= tp!1249273 b_and!317363)))

(declare-fun e!2550056 () Bool)

(assert (=> b!4110362 (= e!2550056 (and tp!1249277 tp!1249278))))

(declare-fun e!2550050 () Bool)

(declare-fun tp!1249272 () Bool)

(declare-fun b!4110363 () Bool)

(declare-datatypes ((List!44360 0))(
  ( (Nil!44236) (Cons!44236 (h!49656 (_ BitVec 16)) (t!340111 List!44360)) )
))
(declare-datatypes ((TokenValue!7420 0))(
  ( (FloatLiteralValue!14840 (text!52385 List!44360)) (TokenValueExt!7419 (__x!27057 Int)) (Broken!37100 (value!225498 List!44360)) (Object!7543) (End!7420) (Def!7420) (Underscore!7420) (Match!7420) (Else!7420) (Error!7420) (Case!7420) (If!7420) (Extends!7420) (Abstract!7420) (Class!7420) (Val!7420) (DelimiterValue!14840 (del!7480 List!44360)) (KeywordValue!7426 (value!225499 List!44360)) (CommentValue!14840 (value!225500 List!44360)) (WhitespaceValue!14840 (value!225501 List!44360)) (IndentationValue!7420 (value!225502 List!44360)) (String!50849) (Int32!7420) (Broken!37101 (value!225503 List!44360)) (Boolean!7421) (Unit!63692) (OperatorValue!7423 (op!7480 List!44360)) (IdentifierValue!14840 (value!225504 List!44360)) (IdentifierValue!14841 (value!225505 List!44360)) (WhitespaceValue!14841 (value!225506 List!44360)) (True!14840) (False!14840) (Broken!37102 (value!225507 List!44360)) (Broken!37103 (value!225508 List!44360)) (True!14841) (RightBrace!7420) (RightBracket!7420) (Colon!7420) (Null!7420) (Comma!7420) (LeftBracket!7420) (False!14841) (LeftBrace!7420) (ImaginaryLiteralValue!7420 (text!52386 List!44360)) (StringLiteralValue!22260 (value!225509 List!44360)) (EOFValue!7420 (value!225510 List!44360)) (IdentValue!7420 (value!225511 List!44360)) (DelimiterValue!14841 (value!225512 List!44360)) (DedentValue!7420 (value!225513 List!44360)) (NewLineValue!7420 (value!225514 List!44360)) (IntegerValue!22260 (value!225515 (_ BitVec 32)) (text!52387 List!44360)) (IntegerValue!22261 (value!225516 Int) (text!52388 List!44360)) (Times!7420) (Or!7420) (Equal!7420) (Minus!7420) (Broken!37104 (value!225517 List!44360)) (And!7420) (Div!7420) (LessEqual!7420) (Mod!7420) (Concat!19515) (Not!7420) (Plus!7420) (SpaceValue!7420 (value!225518 List!44360)) (IntegerValue!22262 (value!225519 Int) (text!52389 List!44360)) (StringLiteralValue!22261 (text!52390 List!44360)) (FloatLiteralValue!14841 (text!52391 List!44360)) (BytesLiteralValue!7420 (value!225520 List!44360)) (CommentValue!14841 (value!225521 List!44360)) (StringLiteralValue!22262 (value!225522 List!44360)) (ErrorTokenValue!7420 (msg!7481 List!44360)) )
))
(declare-datatypes ((C!24376 0))(
  ( (C!24377 (val!14298 Int)) )
))
(declare-datatypes ((List!44361 0))(
  ( (Nil!44237) (Cons!44237 (h!49657 C!24376) (t!340112 List!44361)) )
))
(declare-datatypes ((IArray!26807 0))(
  ( (IArray!26808 (innerList!13461 List!44361)) )
))
(declare-datatypes ((Conc!13401 0))(
  ( (Node!13401 (left!33186 Conc!13401) (right!33516 Conc!13401) (csize!27032 Int) (cheight!13612 Int)) (Leaf!20711 (xs!16707 IArray!26807) (csize!27033 Int)) (Empty!13401) )
))
(declare-datatypes ((BalanceConc!26396 0))(
  ( (BalanceConc!26397 (c!706832 Conc!13401)) )
))
(declare-datatypes ((Regex!12095 0))(
  ( (ElementMatch!12095 (c!706833 C!24376)) (Concat!19516 (regOne!24702 Regex!12095) (regTwo!24702 Regex!12095)) (EmptyExpr!12095) (Star!12095 (reg!12424 Regex!12095)) (EmptyLang!12095) (Union!12095 (regOne!24703 Regex!12095) (regTwo!24703 Regex!12095)) )
))
(declare-datatypes ((String!50850 0))(
  ( (String!50851 (value!225523 String)) )
))
(declare-datatypes ((TokenValueInjection!14268 0))(
  ( (TokenValueInjection!14269 (toValue!9822 Int) (toChars!9681 Int)) )
))
(declare-datatypes ((Rule!14180 0))(
  ( (Rule!14181 (regex!7190 Regex!12095) (tag!8050 String!50850) (isSeparator!7190 Bool) (transformation!7190 TokenValueInjection!14268)) )
))
(declare-datatypes ((List!44362 0))(
  ( (Nil!44238) (Cons!44238 (h!49658 Rule!14180) (t!340113 List!44362)) )
))
(declare-fun l!6462 () List!44362)

(declare-fun inv!58884 (String!50850) Bool)

(declare-fun inv!58886 (TokenValueInjection!14268) Bool)

(assert (=> b!4110363 (= e!2550050 (and tp!1249272 (inv!58884 (tag!8050 (h!49658 l!6462))) (inv!58886 (transformation!7190 (h!49658 l!6462))) e!2550056))))

(declare-fun b!4110364 () Bool)

(declare-fun e!2550059 () Bool)

(declare-fun tp!1249270 () Bool)

(assert (=> b!4110364 (= e!2550059 (and e!2550050 tp!1249270))))

(declare-fun e!2550051 () Bool)

(assert (=> b!4110365 (= e!2550051 (and tp!1249276 tp!1249273))))

(declare-fun res!1679507 () Bool)

(declare-fun e!2550058 () Bool)

(assert (=> start!389576 (=> (not res!1679507) (not e!2550058))))

(declare-datatypes ((LexerInterface!6779 0))(
  ( (LexerInterfaceExt!6776 (__x!27058 Int)) (Lexer!6777) )
))
(declare-fun thiss!26878 () LexerInterface!6779)

(get-info :version)

(assert (=> start!389576 (= res!1679507 ((_ is Lexer!6777) thiss!26878))))

(assert (=> start!389576 e!2550058))

(assert (=> start!389576 true))

(declare-fun e!2550052 () Bool)

(assert (=> start!389576 e!2550052))

(declare-fun e!2550053 () Bool)

(assert (=> start!389576 e!2550053))

(assert (=> start!389576 e!2550059))

(declare-fun e!2550049 () Bool)

(declare-fun tp!1249274 () Bool)

(declare-fun e1!99 () Rule!14180)

(declare-fun b!4110366 () Bool)

(assert (=> b!4110366 (= e!2550052 (and tp!1249274 (inv!58884 (tag!8050 e1!99)) (inv!58886 (transformation!7190 e1!99)) e!2550049))))

(declare-fun b!4110367 () Bool)

(assert (=> b!4110367 (= e!2550058 false)))

(declare-fun e2!99 () Rule!14180)

(declare-fun lt!1468135 () Bool)

(declare-datatypes ((List!44363 0))(
  ( (Nil!44239) (Cons!44239 (h!49659 String!50850) (t!340114 List!44363)) )
))
(declare-fun noDuplicateTag!2867 (LexerInterface!6779 List!44362 List!44363) Bool)

(assert (=> b!4110367 (= lt!1468135 (noDuplicateTag!2867 thiss!26878 (Cons!44238 e1!99 (Cons!44238 e2!99 l!6462)) Nil!44239))))

(declare-fun tp!1249275 () Bool)

(declare-fun b!4110368 () Bool)

(assert (=> b!4110368 (= e!2550053 (and tp!1249275 (inv!58884 (tag!8050 e2!99)) (inv!58886 (transformation!7190 e2!99)) e!2550051))))

(assert (=> b!4110369 (= e!2550049 (and tp!1249269 tp!1249271))))

(assert (= (and start!389576 res!1679507) b!4110367))

(assert (= b!4110366 b!4110369))

(assert (= start!389576 b!4110366))

(assert (= b!4110368 b!4110365))

(assert (= start!389576 b!4110368))

(assert (= b!4110363 b!4110362))

(assert (= b!4110364 b!4110363))

(assert (= (and start!389576 ((_ is Cons!44238) l!6462)) b!4110364))

(declare-fun m!4712723 () Bool)

(assert (=> b!4110363 m!4712723))

(declare-fun m!4712725 () Bool)

(assert (=> b!4110363 m!4712725))

(declare-fun m!4712727 () Bool)

(assert (=> b!4110366 m!4712727))

(declare-fun m!4712729 () Bool)

(assert (=> b!4110366 m!4712729))

(declare-fun m!4712731 () Bool)

(assert (=> b!4110367 m!4712731))

(declare-fun m!4712733 () Bool)

(assert (=> b!4110368 m!4712733))

(declare-fun m!4712735 () Bool)

(assert (=> b!4110368 m!4712735))

(check-sat (not b!4110368) (not b_next!116175) (not b_next!116177) b_and!317359 (not b_next!116181) b_and!317357 b_and!317361 b_and!317353 (not b!4110367) (not b!4110366) (not b!4110363) (not b_next!116179) (not b_next!116173) b_and!317363 (not b_next!116171) (not b!4110364) b_and!317355)
(check-sat (not b_next!116175) (not b_next!116177) b_and!317359 (not b_next!116181) b_and!317357 b_and!317361 b_and!317353 b_and!317355 (not b_next!116179) (not b_next!116173) b_and!317363 (not b_next!116171))
