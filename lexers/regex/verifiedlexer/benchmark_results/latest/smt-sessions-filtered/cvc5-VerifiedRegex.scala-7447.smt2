; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!395608 () Bool)

(assert start!395608)

(declare-fun b!4155211 () Bool)

(declare-fun b_free!119183 () Bool)

(declare-fun b_next!119887 () Bool)

(assert (=> b!4155211 (= b_free!119183 (not b_next!119887))))

(declare-fun tp!1267302 () Bool)

(declare-fun b_and!323545 () Bool)

(assert (=> b!4155211 (= tp!1267302 b_and!323545)))

(declare-fun b_free!119185 () Bool)

(declare-fun b_next!119889 () Bool)

(assert (=> b!4155211 (= b_free!119185 (not b_next!119889))))

(declare-fun tp!1267301 () Bool)

(declare-fun b_and!323547 () Bool)

(assert (=> b!4155211 (= tp!1267301 b_and!323547)))

(declare-fun b!4155208 () Bool)

(declare-fun b_free!119187 () Bool)

(declare-fun b_next!119891 () Bool)

(assert (=> b!4155208 (= b_free!119187 (not b_next!119891))))

(declare-fun tp!1267304 () Bool)

(declare-fun b_and!323549 () Bool)

(assert (=> b!4155208 (= tp!1267304 b_and!323549)))

(declare-fun b_free!119189 () Bool)

(declare-fun b_next!119893 () Bool)

(assert (=> b!4155208 (= b_free!119189 (not b_next!119893))))

(declare-fun tp!1267305 () Bool)

(declare-fun b_and!323551 () Bool)

(assert (=> b!4155208 (= tp!1267305 b_and!323551)))

(declare-fun b!4155204 () Bool)

(declare-fun b_free!119191 () Bool)

(declare-fun b_next!119895 () Bool)

(assert (=> b!4155204 (= b_free!119191 (not b_next!119895))))

(declare-fun tp!1267308 () Bool)

(declare-fun b_and!323553 () Bool)

(assert (=> b!4155204 (= tp!1267308 b_and!323553)))

(declare-fun b_free!119193 () Bool)

(declare-fun b_next!119897 () Bool)

(assert (=> b!4155204 (= b_free!119193 (not b_next!119897))))

(declare-fun tp!1267309 () Bool)

(declare-fun b_and!323555 () Bool)

(assert (=> b!4155204 (= tp!1267309 b_and!323555)))

(declare-fun b!4155203 () Bool)

(declare-fun res!1701732 () Bool)

(declare-fun e!2578373 () Bool)

(assert (=> b!4155203 (=> (not res!1701732) (not e!2578373))))

(declare-datatypes ((List!45360 0))(
  ( (Nil!45236) (Cons!45236 (h!50656 (_ BitVec 16)) (t!343391 List!45360)) )
))
(declare-datatypes ((TokenValue!7695 0))(
  ( (FloatLiteralValue!15390 (text!54310 List!45360)) (TokenValueExt!7694 (__x!27607 Int)) (Broken!38475 (value!233254 List!45360)) (Object!7818) (End!7695) (Def!7695) (Underscore!7695) (Match!7695) (Else!7695) (Error!7695) (Case!7695) (If!7695) (Extends!7695) (Abstract!7695) (Class!7695) (Val!7695) (DelimiterValue!15390 (del!7755 List!45360)) (KeywordValue!7701 (value!233255 List!45360)) (CommentValue!15390 (value!233256 List!45360)) (WhitespaceValue!15390 (value!233257 List!45360)) (IndentationValue!7695 (value!233258 List!45360)) (String!52226) (Int32!7695) (Broken!38476 (value!233259 List!45360)) (Boolean!7696) (Unit!64445) (OperatorValue!7698 (op!7755 List!45360)) (IdentifierValue!15390 (value!233260 List!45360)) (IdentifierValue!15391 (value!233261 List!45360)) (WhitespaceValue!15391 (value!233262 List!45360)) (True!15390) (False!15390) (Broken!38477 (value!233263 List!45360)) (Broken!38478 (value!233264 List!45360)) (True!15391) (RightBrace!7695) (RightBracket!7695) (Colon!7695) (Null!7695) (Comma!7695) (LeftBracket!7695) (False!15391) (LeftBrace!7695) (ImaginaryLiteralValue!7695 (text!54311 List!45360)) (StringLiteralValue!23085 (value!233265 List!45360)) (EOFValue!7695 (value!233266 List!45360)) (IdentValue!7695 (value!233267 List!45360)) (DelimiterValue!15391 (value!233268 List!45360)) (DedentValue!7695 (value!233269 List!45360)) (NewLineValue!7695 (value!233270 List!45360)) (IntegerValue!23085 (value!233271 (_ BitVec 32)) (text!54312 List!45360)) (IntegerValue!23086 (value!233272 Int) (text!54313 List!45360)) (Times!7695) (Or!7695) (Equal!7695) (Minus!7695) (Broken!38479 (value!233273 List!45360)) (And!7695) (Div!7695) (LessEqual!7695) (Mod!7695) (Concat!20065) (Not!7695) (Plus!7695) (SpaceValue!7695 (value!233274 List!45360)) (IntegerValue!23087 (value!233275 Int) (text!54314 List!45360)) (StringLiteralValue!23086 (text!54315 List!45360)) (FloatLiteralValue!15391 (text!54316 List!45360)) (BytesLiteralValue!7695 (value!233276 List!45360)) (CommentValue!15391 (value!233277 List!45360)) (StringLiteralValue!23087 (value!233278 List!45360)) (ErrorTokenValue!7695 (msg!7756 List!45360)) )
))
(declare-datatypes ((C!24926 0))(
  ( (C!24927 (val!14573 Int)) )
))
(declare-datatypes ((List!45361 0))(
  ( (Nil!45237) (Cons!45237 (h!50657 C!24926) (t!343392 List!45361)) )
))
(declare-datatypes ((IArray!27357 0))(
  ( (IArray!27358 (innerList!13736 List!45361)) )
))
(declare-datatypes ((Conc!13676 0))(
  ( (Node!13676 (left!33831 Conc!13676) (right!34161 Conc!13676) (csize!27582 Int) (cheight!13887 Int)) (Leaf!21124 (xs!16982 IArray!27357) (csize!27583 Int)) (Empty!13676) )
))
(declare-datatypes ((Regex!12370 0))(
  ( (ElementMatch!12370 (c!711346 C!24926)) (Concat!20066 (regOne!25252 Regex!12370) (regTwo!25252 Regex!12370)) (EmptyExpr!12370) (Star!12370 (reg!12699 Regex!12370)) (EmptyLang!12370) (Union!12370 (regOne!25253 Regex!12370) (regTwo!25253 Regex!12370)) )
))
(declare-datatypes ((String!52227 0))(
  ( (String!52228 (value!233279 String)) )
))
(declare-datatypes ((BalanceConc!26946 0))(
  ( (BalanceConc!26947 (c!711347 Conc!13676)) )
))
(declare-datatypes ((TokenValueInjection!14818 0))(
  ( (TokenValueInjection!14819 (toValue!10129 Int) (toChars!9988 Int)) )
))
(declare-datatypes ((Rule!14730 0))(
  ( (Rule!14731 (regex!7465 Regex!12370) (tag!8329 String!52227) (isSeparator!7465 Bool) (transformation!7465 TokenValueInjection!14818)) )
))
(declare-datatypes ((List!45362 0))(
  ( (Nil!45238) (Cons!45238 (h!50658 Rule!14730) (t!343393 List!45362)) )
))
(declare-fun rules!4102 () List!45362)

(declare-fun r1!615 () Rule!14730)

(declare-fun contains!9166 (List!45362 Rule!14730) Bool)

(assert (=> b!4155203 (= res!1701732 (contains!9166 rules!4102 r1!615))))

(declare-fun e!2578380 () Bool)

(declare-fun e!2578379 () Bool)

(declare-fun b!4155205 () Bool)

(declare-fun tp!1267303 () Bool)

(declare-fun inv!59808 (String!52227) Bool)

(declare-fun inv!59811 (TokenValueInjection!14818) Bool)

(assert (=> b!4155205 (= e!2578380 (and tp!1267303 (inv!59808 (tag!8329 r1!615)) (inv!59811 (transformation!7465 r1!615)) e!2578379))))

(declare-fun b!4155206 () Bool)

(assert (=> b!4155206 (= e!2578373 false)))

(declare-fun lt!1481357 () Int)

(declare-fun r2!597 () Rule!14730)

(declare-fun getIndex!807 (List!45362 Rule!14730) Int)

(assert (=> b!4155206 (= lt!1481357 (getIndex!807 rules!4102 r2!597))))

(declare-fun lt!1481358 () Int)

(assert (=> b!4155206 (= lt!1481358 (getIndex!807 rules!4102 r1!615))))

(declare-fun b!4155207 () Bool)

(declare-fun e!2578376 () Bool)

(declare-fun tp!1267307 () Bool)

(declare-fun e!2578372 () Bool)

(assert (=> b!4155207 (= e!2578376 (and tp!1267307 (inv!59808 (tag!8329 r2!597)) (inv!59811 (transformation!7465 r2!597)) e!2578372))))

(assert (=> b!4155208 (= e!2578379 (and tp!1267304 tp!1267305))))

(declare-fun e!2578375 () Bool)

(declare-fun tp!1267310 () Bool)

(declare-fun b!4155209 () Bool)

(declare-fun e!2578377 () Bool)

(assert (=> b!4155209 (= e!2578375 (and tp!1267310 (inv!59808 (tag!8329 (h!50658 rules!4102))) (inv!59811 (transformation!7465 (h!50658 rules!4102))) e!2578377))))

(declare-fun b!4155210 () Bool)

(declare-fun e!2578378 () Bool)

(declare-fun tp!1267306 () Bool)

(assert (=> b!4155210 (= e!2578378 (and e!2578375 tp!1267306))))

(assert (=> b!4155211 (= e!2578372 (and tp!1267302 tp!1267301))))

(declare-fun b!4155212 () Bool)

(declare-fun res!1701731 () Bool)

(assert (=> b!4155212 (=> (not res!1701731) (not e!2578373))))

(declare-datatypes ((LexerInterface!7054 0))(
  ( (LexerInterfaceExt!7051 (__x!27608 Int)) (Lexer!7052) )
))
(declare-fun thiss!26968 () LexerInterface!7054)

(declare-datatypes ((List!45363 0))(
  ( (Nil!45239) (Cons!45239 (h!50659 String!52227) (t!343394 List!45363)) )
))
(declare-fun noDuplicateTag!3042 (LexerInterface!7054 List!45362 List!45363) Bool)

(declare-fun noDuplicateTag$default$2!47 (LexerInterface!7054) List!45363)

(assert (=> b!4155212 (= res!1701731 (noDuplicateTag!3042 thiss!26968 rules!4102 (noDuplicateTag$default$2!47 thiss!26968)))))

(declare-fun b!4155213 () Bool)

(declare-fun res!1701733 () Bool)

(assert (=> b!4155213 (=> (not res!1701733) (not e!2578373))))

(assert (=> b!4155213 (= res!1701733 (contains!9166 rules!4102 r2!597))))

(assert (=> b!4155204 (= e!2578377 (and tp!1267308 tp!1267309))))

(declare-fun res!1701730 () Bool)

(assert (=> start!395608 (=> (not res!1701730) (not e!2578373))))

(assert (=> start!395608 (= res!1701730 (is-Lexer!7052 thiss!26968))))

(assert (=> start!395608 e!2578373))

(assert (=> start!395608 true))

(assert (=> start!395608 e!2578378))

(assert (=> start!395608 e!2578380))

(assert (=> start!395608 e!2578376))

(assert (= (and start!395608 res!1701730) b!4155203))

(assert (= (and b!4155203 res!1701732) b!4155213))

(assert (= (and b!4155213 res!1701733) b!4155212))

(assert (= (and b!4155212 res!1701731) b!4155206))

(assert (= b!4155209 b!4155204))

(assert (= b!4155210 b!4155209))

(assert (= (and start!395608 (is-Cons!45238 rules!4102)) b!4155210))

(assert (= b!4155205 b!4155208))

(assert (= start!395608 b!4155205))

(assert (= b!4155207 b!4155211))

(assert (= start!395608 b!4155207))

(declare-fun m!4749769 () Bool)

(assert (=> b!4155206 m!4749769))

(declare-fun m!4749771 () Bool)

(assert (=> b!4155206 m!4749771))

(declare-fun m!4749773 () Bool)

(assert (=> b!4155205 m!4749773))

(declare-fun m!4749775 () Bool)

(assert (=> b!4155205 m!4749775))

(declare-fun m!4749777 () Bool)

(assert (=> b!4155209 m!4749777))

(declare-fun m!4749779 () Bool)

(assert (=> b!4155209 m!4749779))

(declare-fun m!4749781 () Bool)

(assert (=> b!4155203 m!4749781))

(declare-fun m!4749783 () Bool)

(assert (=> b!4155212 m!4749783))

(assert (=> b!4155212 m!4749783))

(declare-fun m!4749785 () Bool)

(assert (=> b!4155212 m!4749785))

(declare-fun m!4749787 () Bool)

(assert (=> b!4155207 m!4749787))

(declare-fun m!4749789 () Bool)

(assert (=> b!4155207 m!4749789))

(declare-fun m!4749791 () Bool)

(assert (=> b!4155213 m!4749791))

(push 1)

(assert (not b!4155209))

(assert (not b!4155212))

(assert (not b_next!119895))

(assert (not b!4155210))

(assert (not b_next!119889))

(assert (not b!4155206))

(assert (not b!4155213))

(assert b_and!323547)

(assert b_and!323555)

(assert (not b_next!119897))

(assert (not b_next!119893))

(assert (not b!4155207))

(assert (not b_next!119887))

(assert (not b!4155205))

(assert (not b_next!119891))

(assert b_and!323551)

(assert b_and!323545)

(assert (not b!4155203))

(assert b_and!323553)

(assert b_and!323549)

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!119895))

(assert (not b_next!119889))

(assert b_and!323547)

(assert b_and!323545)

(assert b_and!323555)

(assert (not b_next!119897))

(assert (not b_next!119893))

(assert (not b_next!119887))

(assert (not b_next!119891))

(assert b_and!323551)

(assert b_and!323553)

(assert b_and!323549)

(check-sat)

(pop 1)

