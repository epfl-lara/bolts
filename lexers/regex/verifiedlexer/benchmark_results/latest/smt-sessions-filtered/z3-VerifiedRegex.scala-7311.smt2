; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!389584 () Bool)

(assert start!389584)

(declare-fun b!4110488 () Bool)

(declare-fun b_free!115515 () Bool)

(declare-fun b_next!116219 () Bool)

(assert (=> b!4110488 (= b_free!115515 (not b_next!116219))))

(declare-fun tp!1249389 () Bool)

(declare-fun b_and!317401 () Bool)

(assert (=> b!4110488 (= tp!1249389 b_and!317401)))

(declare-fun b_free!115517 () Bool)

(declare-fun b_next!116221 () Bool)

(assert (=> b!4110488 (= b_free!115517 (not b_next!116221))))

(declare-fun tp!1249392 () Bool)

(declare-fun b_and!317403 () Bool)

(assert (=> b!4110488 (= tp!1249392 b_and!317403)))

(declare-fun b!4110487 () Bool)

(declare-fun b_free!115519 () Bool)

(declare-fun b_next!116223 () Bool)

(assert (=> b!4110487 (= b_free!115519 (not b_next!116223))))

(declare-fun tp!1249398 () Bool)

(declare-fun b_and!317405 () Bool)

(assert (=> b!4110487 (= tp!1249398 b_and!317405)))

(declare-fun b_free!115521 () Bool)

(declare-fun b_next!116225 () Bool)

(assert (=> b!4110487 (= b_free!115521 (not b_next!116225))))

(declare-fun tp!1249390 () Bool)

(declare-fun b_and!317407 () Bool)

(assert (=> b!4110487 (= tp!1249390 b_and!317407)))

(declare-fun b!4110495 () Bool)

(declare-fun b_free!115523 () Bool)

(declare-fun b_next!116227 () Bool)

(assert (=> b!4110495 (= b_free!115523 (not b_next!116227))))

(declare-fun tp!1249391 () Bool)

(declare-fun b_and!317409 () Bool)

(assert (=> b!4110495 (= tp!1249391 b_and!317409)))

(declare-fun b_free!115525 () Bool)

(declare-fun b_next!116229 () Bool)

(assert (=> b!4110495 (= b_free!115525 (not b_next!116229))))

(declare-fun tp!1249396 () Bool)

(declare-fun b_and!317411 () Bool)

(assert (=> b!4110495 (= tp!1249396 b_and!317411)))

(declare-fun res!1679546 () Bool)

(declare-fun e!2550214 () Bool)

(assert (=> start!389584 (=> (not res!1679546) (not e!2550214))))

(declare-datatypes ((LexerInterface!6783 0))(
  ( (LexerInterfaceExt!6780 (__x!27065 Int)) (Lexer!6781) )
))
(declare-fun thiss!26878 () LexerInterface!6783)

(get-info :version)

(assert (=> start!389584 (= res!1679546 ((_ is Lexer!6781) thiss!26878))))

(assert (=> start!389584 e!2550214))

(assert (=> start!389584 true))

(declare-fun e!2550212 () Bool)

(assert (=> start!389584 e!2550212))

(declare-fun e!2550206 () Bool)

(assert (=> start!389584 e!2550206))

(declare-fun e!2550202 () Bool)

(assert (=> start!389584 e!2550202))

(declare-datatypes ((List!44376 0))(
  ( (Nil!44252) (Cons!44252 (h!49672 (_ BitVec 16)) (t!340127 List!44376)) )
))
(declare-datatypes ((TokenValue!7424 0))(
  ( (FloatLiteralValue!14848 (text!52413 List!44376)) (TokenValueExt!7423 (__x!27066 Int)) (Broken!37120 (value!225608 List!44376)) (Object!7547) (End!7424) (Def!7424) (Underscore!7424) (Match!7424) (Else!7424) (Error!7424) (Case!7424) (If!7424) (Extends!7424) (Abstract!7424) (Class!7424) (Val!7424) (DelimiterValue!14848 (del!7484 List!44376)) (KeywordValue!7430 (value!225609 List!44376)) (CommentValue!14848 (value!225610 List!44376)) (WhitespaceValue!14848 (value!225611 List!44376)) (IndentationValue!7424 (value!225612 List!44376)) (String!50869) (Int32!7424) (Broken!37121 (value!225613 List!44376)) (Boolean!7425) (Unit!63696) (OperatorValue!7427 (op!7484 List!44376)) (IdentifierValue!14848 (value!225614 List!44376)) (IdentifierValue!14849 (value!225615 List!44376)) (WhitespaceValue!14849 (value!225616 List!44376)) (True!14848) (False!14848) (Broken!37122 (value!225617 List!44376)) (Broken!37123 (value!225618 List!44376)) (True!14849) (RightBrace!7424) (RightBracket!7424) (Colon!7424) (Null!7424) (Comma!7424) (LeftBracket!7424) (False!14849) (LeftBrace!7424) (ImaginaryLiteralValue!7424 (text!52414 List!44376)) (StringLiteralValue!22272 (value!225619 List!44376)) (EOFValue!7424 (value!225620 List!44376)) (IdentValue!7424 (value!225621 List!44376)) (DelimiterValue!14849 (value!225622 List!44376)) (DedentValue!7424 (value!225623 List!44376)) (NewLineValue!7424 (value!225624 List!44376)) (IntegerValue!22272 (value!225625 (_ BitVec 32)) (text!52415 List!44376)) (IntegerValue!22273 (value!225626 Int) (text!52416 List!44376)) (Times!7424) (Or!7424) (Equal!7424) (Minus!7424) (Broken!37124 (value!225627 List!44376)) (And!7424) (Div!7424) (LessEqual!7424) (Mod!7424) (Concat!19523) (Not!7424) (Plus!7424) (SpaceValue!7424 (value!225628 List!44376)) (IntegerValue!22274 (value!225629 Int) (text!52417 List!44376)) (StringLiteralValue!22273 (text!52418 List!44376)) (FloatLiteralValue!14849 (text!52419 List!44376)) (BytesLiteralValue!7424 (value!225630 List!44376)) (CommentValue!14849 (value!225631 List!44376)) (StringLiteralValue!22274 (value!225632 List!44376)) (ErrorTokenValue!7424 (msg!7485 List!44376)) )
))
(declare-datatypes ((C!24384 0))(
  ( (C!24385 (val!14302 Int)) )
))
(declare-datatypes ((List!44377 0))(
  ( (Nil!44253) (Cons!44253 (h!49673 C!24384) (t!340128 List!44377)) )
))
(declare-datatypes ((IArray!26815 0))(
  ( (IArray!26816 (innerList!13465 List!44377)) )
))
(declare-datatypes ((Conc!13405 0))(
  ( (Node!13405 (left!33192 Conc!13405) (right!33522 Conc!13405) (csize!27040 Int) (cheight!13616 Int)) (Leaf!20717 (xs!16711 IArray!26815) (csize!27041 Int)) (Empty!13405) )
))
(declare-datatypes ((BalanceConc!26404 0))(
  ( (BalanceConc!26405 (c!706840 Conc!13405)) )
))
(declare-datatypes ((Regex!12099 0))(
  ( (ElementMatch!12099 (c!706841 C!24384)) (Concat!19524 (regOne!24710 Regex!12099) (regTwo!24710 Regex!12099)) (EmptyExpr!12099) (Star!12099 (reg!12428 Regex!12099)) (EmptyLang!12099) (Union!12099 (regOne!24711 Regex!12099) (regTwo!24711 Regex!12099)) )
))
(declare-datatypes ((String!50870 0))(
  ( (String!50871 (value!225633 String)) )
))
(declare-datatypes ((TokenValueInjection!14276 0))(
  ( (TokenValueInjection!14277 (toValue!9826 Int) (toChars!9685 Int)) )
))
(declare-datatypes ((Rule!14188 0))(
  ( (Rule!14189 (regex!7194 Regex!12099) (tag!8054 String!50870) (isSeparator!7194 Bool) (transformation!7194 TokenValueInjection!14276)) )
))
(declare-fun e1!99 () Rule!14188)

(declare-fun tp!1249395 () Bool)

(declare-fun b!4110484 () Bool)

(declare-fun e!2550210 () Bool)

(declare-fun inv!58894 (String!50870) Bool)

(declare-fun inv!58896 (TokenValueInjection!14276) Bool)

(assert (=> b!4110484 (= e!2550212 (and tp!1249395 (inv!58894 (tag!8054 e1!99)) (inv!58896 (transformation!7194 e1!99)) e!2550210))))

(declare-fun b!4110485 () Bool)

(declare-fun e!2550203 () Bool)

(assert (=> b!4110485 (= e!2550203 false)))

(declare-fun b!4110486 () Bool)

(declare-fun e!2550208 () Bool)

(declare-fun e!2550215 () Bool)

(declare-fun tp!1249394 () Bool)

(declare-datatypes ((List!44378 0))(
  ( (Nil!44254) (Cons!44254 (h!49674 Rule!14188) (t!340129 List!44378)) )
))
(declare-fun l!6462 () List!44378)

(assert (=> b!4110486 (= e!2550215 (and tp!1249394 (inv!58894 (tag!8054 (h!49674 l!6462))) (inv!58896 (transformation!7194 (h!49674 l!6462))) e!2550208))))

(declare-fun e!2550204 () Bool)

(assert (=> b!4110487 (= e!2550204 (and tp!1249398 tp!1249390))))

(assert (=> b!4110488 (= e!2550210 (and tp!1249389 tp!1249392))))

(declare-fun b!4110489 () Bool)

(declare-fun tp!1249397 () Bool)

(assert (=> b!4110489 (= e!2550202 (and e!2550215 tp!1249397))))

(declare-fun b!4110490 () Bool)

(declare-fun e!2550213 () Bool)

(declare-fun e!2550207 () Bool)

(assert (=> b!4110490 (= e!2550213 e!2550207)))

(declare-fun res!1679549 () Bool)

(assert (=> b!4110490 (=> (not res!1679549) (not e!2550207))))

(declare-fun lt!1468165 () List!44378)

(declare-datatypes ((List!44379 0))(
  ( (Nil!44255) (Cons!44255 (h!49675 String!50870) (t!340130 List!44379)) )
))
(declare-fun lt!1468164 () List!44379)

(declare-fun noDuplicateTag!2871 (LexerInterface!6783 List!44378 List!44379) Bool)

(assert (=> b!4110490 (= res!1679549 (noDuplicateTag!2871 thiss!26878 lt!1468165 lt!1468164))))

(assert (=> b!4110490 (= lt!1468164 (Cons!44255 (tag!8054 e1!99) Nil!44255))))

(declare-fun b!4110491 () Bool)

(declare-fun res!1679548 () Bool)

(assert (=> b!4110491 (=> (not res!1679548) (not e!2550203))))

(declare-fun lt!1468163 () List!44379)

(declare-fun e2!99 () Rule!14188)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun toSet!3 (List!44379) (InoxSet String!50870))

(assert (=> b!4110491 (= res!1679548 (= (toSet!3 lt!1468163) (toSet!3 (Cons!44255 (tag!8054 e1!99) (Cons!44255 (tag!8054 e2!99) Nil!44255)))))))

(declare-fun b!4110492 () Bool)

(assert (=> b!4110492 (= e!2550207 e!2550203)))

(declare-fun res!1679545 () Bool)

(assert (=> b!4110492 (=> (not res!1679545) (not e!2550203))))

(assert (=> b!4110492 (= res!1679545 (noDuplicateTag!2871 thiss!26878 l!6462 lt!1468163))))

(assert (=> b!4110492 (= lt!1468163 (Cons!44255 (tag!8054 e2!99) lt!1468164))))

(declare-fun b!4110493 () Bool)

(assert (=> b!4110493 (= e!2550214 e!2550213)))

(declare-fun res!1679547 () Bool)

(assert (=> b!4110493 (=> (not res!1679547) (not e!2550213))))

(assert (=> b!4110493 (= res!1679547 (noDuplicateTag!2871 thiss!26878 (Cons!44254 e1!99 lt!1468165) Nil!44255))))

(assert (=> b!4110493 (= lt!1468165 (Cons!44254 e2!99 l!6462))))

(declare-fun b!4110494 () Bool)

(declare-fun tp!1249393 () Bool)

(assert (=> b!4110494 (= e!2550206 (and tp!1249393 (inv!58894 (tag!8054 e2!99)) (inv!58896 (transformation!7194 e2!99)) e!2550204))))

(assert (=> b!4110495 (= e!2550208 (and tp!1249391 tp!1249396))))

(assert (= (and start!389584 res!1679546) b!4110493))

(assert (= (and b!4110493 res!1679547) b!4110490))

(assert (= (and b!4110490 res!1679549) b!4110492))

(assert (= (and b!4110492 res!1679545) b!4110491))

(assert (= (and b!4110491 res!1679548) b!4110485))

(assert (= b!4110484 b!4110488))

(assert (= start!389584 b!4110484))

(assert (= b!4110494 b!4110487))

(assert (= start!389584 b!4110494))

(assert (= b!4110486 b!4110495))

(assert (= b!4110489 b!4110486))

(assert (= (and start!389584 ((_ is Cons!44254) l!6462)) b!4110489))

(declare-fun m!4712791 () Bool)

(assert (=> b!4110492 m!4712791))

(declare-fun m!4712793 () Bool)

(assert (=> b!4110490 m!4712793))

(declare-fun m!4712795 () Bool)

(assert (=> b!4110494 m!4712795))

(declare-fun m!4712797 () Bool)

(assert (=> b!4110494 m!4712797))

(declare-fun m!4712799 () Bool)

(assert (=> b!4110491 m!4712799))

(declare-fun m!4712801 () Bool)

(assert (=> b!4110491 m!4712801))

(declare-fun m!4712803 () Bool)

(assert (=> b!4110486 m!4712803))

(declare-fun m!4712805 () Bool)

(assert (=> b!4110486 m!4712805))

(declare-fun m!4712807 () Bool)

(assert (=> b!4110493 m!4712807))

(declare-fun m!4712809 () Bool)

(assert (=> b!4110484 m!4712809))

(declare-fun m!4712811 () Bool)

(assert (=> b!4110484 m!4712811))

(check-sat (not b!4110492) (not b!4110491) b_and!317409 (not b!4110493) (not b_next!116223) b_and!317401 b_and!317407 b_and!317405 b_and!317403 (not b_next!116219) (not b!4110484) (not b_next!116227) (not b_next!116221) (not b_next!116229) (not b!4110494) (not b!4110490) (not b!4110489) (not b!4110486) (not b_next!116225) b_and!317411)
(check-sat (not b_next!116229) b_and!317409 (not b_next!116223) b_and!317401 b_and!317407 b_and!317405 b_and!317403 (not b_next!116219) (not b_next!116227) (not b_next!116221) (not b_next!116225) b_and!317411)
