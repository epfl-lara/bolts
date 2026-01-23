; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!2166 () Bool)

(assert start!2166)

(declare-datatypes ((List!433 0))(
  ( (Nil!431) (Cons!431 (h!5827 (_ BitVec 16)) (t!15284 List!433)) )
))
(declare-datatypes ((TokenValue!119 0))(
  ( (FloatLiteralValue!238 (text!1278 List!433)) (TokenValueExt!118 (__x!794 Int)) (Broken!595 (value!6457 List!433)) (Object!120) (End!119) (Def!119) (Underscore!119) (Match!119) (Else!119) (Error!119) (Case!119) (If!119) (Extends!119) (Abstract!119) (Class!119) (Val!119) (DelimiterValue!238 (del!179 List!433)) (KeywordValue!125 (value!6458 List!433)) (CommentValue!238 (value!6459 List!433)) (WhitespaceValue!238 (value!6460 List!433)) (IndentationValue!119 (value!6461 List!433)) (String!878) (Int32!119) (Broken!596 (value!6462 List!433)) (Boolean!120) (Unit!211) (OperatorValue!122 (op!179 List!433)) (IdentifierValue!238 (value!6463 List!433)) (IdentifierValue!239 (value!6464 List!433)) (WhitespaceValue!239 (value!6465 List!433)) (True!238) (False!238) (Broken!597 (value!6466 List!433)) (Broken!598 (value!6467 List!433)) (True!239) (RightBrace!119) (RightBracket!119) (Colon!119) (Null!119) (Comma!119) (LeftBracket!119) (False!239) (LeftBrace!119) (ImaginaryLiteralValue!119 (text!1279 List!433)) (StringLiteralValue!357 (value!6468 List!433)) (EOFValue!119 (value!6469 List!433)) (IdentValue!119 (value!6470 List!433)) (DelimiterValue!239 (value!6471 List!433)) (DedentValue!119 (value!6472 List!433)) (NewLineValue!119 (value!6473 List!433)) (IntegerValue!357 (value!6474 (_ BitVec 32)) (text!1280 List!433)) (IntegerValue!358 (value!6475 Int) (text!1281 List!433)) (Times!119) (Or!119) (Equal!119) (Minus!119) (Broken!599 (value!6476 List!433)) (And!119) (Div!119) (LessEqual!119) (Mod!119) (Concat!307) (Not!119) (Plus!119) (SpaceValue!119 (value!6477 List!433)) (IntegerValue!359 (value!6478 Int) (text!1282 List!433)) (StringLiteralValue!358 (text!1283 List!433)) (FloatLiteralValue!239 (text!1284 List!433)) (BytesLiteralValue!119 (value!6479 List!433)) (CommentValue!239 (value!6480 List!433)) (StringLiteralValue!359 (value!6481 List!433)) (ErrorTokenValue!119 (msg!180 List!433)) )
))
(declare-datatypes ((Regex!188 0))(
  ( (ElementMatch!188 (c!15733 (_ BitVec 16))) (Concat!308 (regOne!888 Regex!188) (regTwo!888 Regex!188)) (EmptyExpr!188) (Star!188 (reg!517 Regex!188)) (EmptyLang!188) (Union!188 (regOne!889 Regex!188) (regTwo!889 Regex!188)) )
))
(declare-datatypes ((String!879 0))(
  ( (String!880 (value!6482 String)) )
))
(declare-datatypes ((IArray!127 0))(
  ( (IArray!128 (innerList!121 List!433)) )
))
(declare-datatypes ((Conc!63 0))(
  ( (Node!63 (left!439 Conc!63) (right!769 Conc!63) (csize!356 Int) (cheight!274 Int)) (Leaf!236 (xs!2642 IArray!127) (csize!357 Int)) (Empty!63) )
))
(declare-datatypes ((BalanceConc!126 0))(
  ( (BalanceConc!127 (c!15734 Conc!63)) )
))
(declare-datatypes ((TokenValueInjection!62 0))(
  ( (TokenValueInjection!63 (toValue!608 Int) (toChars!467 Int)) )
))
(declare-datatypes ((Rule!58 0))(
  ( (Rule!59 (regex!129 Regex!188) (tag!307 String!879) (isSeparator!129 Bool) (transformation!129 TokenValueInjection!62)) )
))
(declare-datatypes ((List!434 0))(
  ( (Nil!432) (Cons!432 (h!5828 Rule!58) (t!15285 List!434)) )
))
(declare-fun lt!3328 () List!434)

(declare-datatypes ((JsonLexer!20 0))(
  ( (JsonLexer!21) )
))
(declare-fun rules!109 (JsonLexer!20) List!434)

(assert (=> start!2166 (= lt!3328 (rules!109 JsonLexer!21))))

(assert (=> start!2166 false))

(declare-fun bs!5002 () Bool)

(assert (= bs!5002 start!2166))

(declare-fun m!12458 () Bool)

(assert (=> bs!5002 m!12458))

(push 1)

(assert (not start!2166))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

