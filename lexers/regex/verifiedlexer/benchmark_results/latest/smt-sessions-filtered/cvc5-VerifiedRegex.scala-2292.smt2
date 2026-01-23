; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!112196 () Bool)

(assert start!112196)

(declare-fun b!1284439 () Bool)

(declare-fun b_free!30063 () Bool)

(declare-fun b_next!30767 () Bool)

(assert (=> b!1284439 (= b_free!30063 (not b_next!30767))))

(declare-fun tp!373690 () Bool)

(declare-fun b_and!85207 () Bool)

(assert (=> b!1284439 (= tp!373690 b_and!85207)))

(declare-fun b_free!30065 () Bool)

(declare-fun b_next!30769 () Bool)

(assert (=> b!1284439 (= b_free!30065 (not b_next!30769))))

(declare-fun tp!373696 () Bool)

(declare-fun b_and!85209 () Bool)

(assert (=> b!1284439 (= tp!373696 b_and!85209)))

(declare-fun b!1284440 () Bool)

(declare-fun b_free!30067 () Bool)

(declare-fun b_next!30771 () Bool)

(assert (=> b!1284440 (= b_free!30067 (not b_next!30771))))

(declare-fun tp!373689 () Bool)

(declare-fun b_and!85211 () Bool)

(assert (=> b!1284440 (= tp!373689 b_and!85211)))

(declare-fun b_free!30069 () Bool)

(declare-fun b_next!30773 () Bool)

(assert (=> b!1284440 (= b_free!30069 (not b_next!30773))))

(declare-fun tp!373695 () Bool)

(declare-fun b_and!85213 () Bool)

(assert (=> b!1284440 (= tp!373695 b_and!85213)))

(declare-fun e!823638 () Bool)

(declare-fun b!1284432 () Bool)

(declare-fun tp!373693 () Bool)

(declare-fun e!823633 () Bool)

(declare-datatypes ((List!12827 0))(
  ( (Nil!12761) (Cons!12761 (h!18162 (_ BitVec 16)) (t!116688 List!12827)) )
))
(declare-datatypes ((TokenValue!2282 0))(
  ( (FloatLiteralValue!4564 (text!16419 List!12827)) (TokenValueExt!2281 (__x!8393 Int)) (Broken!11410 (value!72080 List!12827)) (Object!2347) (End!2282) (Def!2282) (Underscore!2282) (Match!2282) (Else!2282) (Error!2282) (Case!2282) (If!2282) (Extends!2282) (Abstract!2282) (Class!2282) (Val!2282) (DelimiterValue!4564 (del!2342 List!12827)) (KeywordValue!2288 (value!72081 List!12827)) (CommentValue!4564 (value!72082 List!12827)) (WhitespaceValue!4564 (value!72083 List!12827)) (IndentationValue!2282 (value!72084 List!12827)) (String!15647) (Int32!2282) (Broken!11411 (value!72085 List!12827)) (Boolean!2283) (Unit!18982) (OperatorValue!2285 (op!2342 List!12827)) (IdentifierValue!4564 (value!72086 List!12827)) (IdentifierValue!4565 (value!72087 List!12827)) (WhitespaceValue!4565 (value!72088 List!12827)) (True!4564) (False!4564) (Broken!11412 (value!72089 List!12827)) (Broken!11413 (value!72090 List!12827)) (True!4565) (RightBrace!2282) (RightBracket!2282) (Colon!2282) (Null!2282) (Comma!2282) (LeftBracket!2282) (False!4565) (LeftBrace!2282) (ImaginaryLiteralValue!2282 (text!16420 List!12827)) (StringLiteralValue!6846 (value!72091 List!12827)) (EOFValue!2282 (value!72092 List!12827)) (IdentValue!2282 (value!72093 List!12827)) (DelimiterValue!4565 (value!72094 List!12827)) (DedentValue!2282 (value!72095 List!12827)) (NewLineValue!2282 (value!72096 List!12827)) (IntegerValue!6846 (value!72097 (_ BitVec 32)) (text!16421 List!12827)) (IntegerValue!6847 (value!72098 Int) (text!16422 List!12827)) (Times!2282) (Or!2282) (Equal!2282) (Minus!2282) (Broken!11414 (value!72099 List!12827)) (And!2282) (Div!2282) (LessEqual!2282) (Mod!2282) (Concat!5788) (Not!2282) (Plus!2282) (SpaceValue!2282 (value!72100 List!12827)) (IntegerValue!6848 (value!72101 Int) (text!16423 List!12827)) (StringLiteralValue!6847 (text!16424 List!12827)) (FloatLiteralValue!4565 (text!16425 List!12827)) (BytesLiteralValue!2282 (value!72102 List!12827)) (CommentValue!4565 (value!72103 List!12827)) (StringLiteralValue!6848 (value!72104 List!12827)) (ErrorTokenValue!2282 (msg!2343 List!12827)) )
))
(declare-datatypes ((C!7302 0))(
  ( (C!7303 (val!4211 Int)) )
))
(declare-datatypes ((List!12828 0))(
  ( (Nil!12762) (Cons!12762 (h!18163 C!7302) (t!116689 List!12828)) )
))
(declare-datatypes ((IArray!8393 0))(
  ( (IArray!8394 (innerList!4254 List!12828)) )
))
(declare-datatypes ((Conc!4194 0))(
  ( (Node!4194 (left!11008 Conc!4194) (right!11338 Conc!4194) (csize!8618 Int) (cheight!4405 Int)) (Leaf!6487 (xs!6905 IArray!8393) (csize!8619 Int)) (Empty!4194) )
))
(declare-datatypes ((BalanceConc!8328 0))(
  ( (BalanceConc!8329 (c!211509 Conc!4194)) )
))
(declare-datatypes ((Regex!3506 0))(
  ( (ElementMatch!3506 (c!211510 C!7302)) (Concat!5789 (regOne!7524 Regex!3506) (regTwo!7524 Regex!3506)) (EmptyExpr!3506) (Star!3506 (reg!3835 Regex!3506)) (EmptyLang!3506) (Union!3506 (regOne!7525 Regex!3506) (regTwo!7525 Regex!3506)) )
))
(declare-datatypes ((String!15648 0))(
  ( (String!15649 (value!72105 String)) )
))
(declare-datatypes ((TokenValueInjection!4224 0))(
  ( (TokenValueInjection!4225 (toValue!3371 Int) (toChars!3230 Int)) )
))
(declare-datatypes ((Rule!4184 0))(
  ( (Rule!4185 (regex!2192 Regex!3506) (tag!2454 String!15648) (isSeparator!2192 Bool) (transformation!2192 TokenValueInjection!4224)) )
))
(declare-datatypes ((List!12829 0))(
  ( (Nil!12763) (Cons!12763 (h!18164 Rule!4184) (t!116690 List!12829)) )
))
(declare-fun rules!2550 () List!12829)

(declare-fun inv!17160 (String!15648) Bool)

(declare-fun inv!17163 (TokenValueInjection!4224) Bool)

(assert (=> b!1284432 (= e!823633 (and tp!373693 (inv!17160 (tag!2454 (h!18164 rules!2550))) (inv!17163 (transformation!2192 (h!18164 rules!2550))) e!823638))))

(declare-fun b!1284433 () Bool)

(declare-fun e!823637 () Bool)

(declare-fun tp!373694 () Bool)

(assert (=> b!1284433 (= e!823637 (and e!823633 tp!373694))))

(declare-fun b!1284434 () Bool)

(declare-fun e!823631 () Bool)

(assert (=> b!1284434 (= e!823631 false)))

(declare-fun lt!423503 () Bool)

(declare-datatypes ((Token!4046 0))(
  ( (Token!4047 (value!72106 TokenValue!2282) (rule!3931 Rule!4184) (size!10396 Int) (originalCharacters!3054 List!12828)) )
))
(declare-fun t1!34 () Token!4046)

(declare-datatypes ((LexerInterface!1887 0))(
  ( (LexerInterfaceExt!1884 (__x!8394 Int)) (Lexer!1885) )
))
(declare-fun thiss!19762 () LexerInterface!1887)

(declare-fun rulesProduceIndividualToken!856 (LexerInterface!1887 List!12829 Token!4046) Bool)

(assert (=> b!1284434 (= lt!423503 (rulesProduceIndividualToken!856 thiss!19762 rules!2550 t1!34))))

(declare-fun b!1284435 () Bool)

(declare-fun res!576006 () Bool)

(assert (=> b!1284435 (=> (not res!576006) (not e!823631))))

(declare-fun rulesInvariant!1757 (LexerInterface!1887 List!12829) Bool)

(assert (=> b!1284435 (= res!576006 (rulesInvariant!1757 thiss!19762 rules!2550))))

(declare-fun res!576004 () Bool)

(assert (=> start!112196 (=> (not res!576004) (not e!823631))))

(assert (=> start!112196 (= res!576004 (is-Lexer!1885 thiss!19762))))

(assert (=> start!112196 e!823631))

(assert (=> start!112196 true))

(assert (=> start!112196 e!823637))

(declare-fun e!823632 () Bool)

(declare-fun inv!17164 (Token!4046) Bool)

(assert (=> start!112196 (and (inv!17164 t1!34) e!823632)))

(declare-fun b!1284436 () Bool)

(declare-fun tp!373691 () Bool)

(declare-fun e!823640 () Bool)

(declare-fun inv!21 (TokenValue!2282) Bool)

(assert (=> b!1284436 (= e!823632 (and (inv!21 (value!72106 t1!34)) e!823640 tp!373691))))

(declare-fun b!1284437 () Bool)

(declare-fun res!576005 () Bool)

(assert (=> b!1284437 (=> (not res!576005) (not e!823631))))

(declare-fun isEmpty!7571 (List!12829) Bool)

(assert (=> b!1284437 (= res!576005 (not (isEmpty!7571 rules!2550)))))

(declare-fun e!823636 () Bool)

(declare-fun tp!373692 () Bool)

(declare-fun b!1284438 () Bool)

(assert (=> b!1284438 (= e!823640 (and tp!373692 (inv!17160 (tag!2454 (rule!3931 t1!34))) (inv!17163 (transformation!2192 (rule!3931 t1!34))) e!823636))))

(assert (=> b!1284439 (= e!823638 (and tp!373690 tp!373696))))

(assert (=> b!1284440 (= e!823636 (and tp!373689 tp!373695))))

(assert (= (and start!112196 res!576004) b!1284437))

(assert (= (and b!1284437 res!576005) b!1284435))

(assert (= (and b!1284435 res!576006) b!1284434))

(assert (= b!1284432 b!1284439))

(assert (= b!1284433 b!1284432))

(assert (= (and start!112196 (is-Cons!12763 rules!2550)) b!1284433))

(assert (= b!1284438 b!1284440))

(assert (= b!1284436 b!1284438))

(assert (= start!112196 b!1284436))

(declare-fun m!1434647 () Bool)

(assert (=> b!1284434 m!1434647))

(declare-fun m!1434649 () Bool)

(assert (=> b!1284438 m!1434649))

(declare-fun m!1434651 () Bool)

(assert (=> b!1284438 m!1434651))

(declare-fun m!1434653 () Bool)

(assert (=> b!1284436 m!1434653))

(declare-fun m!1434655 () Bool)

(assert (=> start!112196 m!1434655))

(declare-fun m!1434657 () Bool)

(assert (=> b!1284432 m!1434657))

(declare-fun m!1434659 () Bool)

(assert (=> b!1284432 m!1434659))

(declare-fun m!1434661 () Bool)

(assert (=> b!1284437 m!1434661))

(declare-fun m!1434663 () Bool)

(assert (=> b!1284435 m!1434663))

(push 1)

(assert (not b_next!30769))

(assert (not b!1284435))

(assert b_and!85211)

(assert (not b!1284432))

(assert (not b_next!30771))

(assert (not b!1284437))

(assert b_and!85207)

(assert (not b_next!30767))

(assert (not b!1284434))

(assert b_and!85209)

(assert (not b!1284433))

(assert (not start!112196))

(assert (not b!1284436))

(assert (not b!1284438))

(assert b_and!85213)

(assert (not b_next!30773))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!30769))

(assert b_and!85211)

(assert (not b_next!30771))

(assert b_and!85207)

(assert (not b_next!30767))

(assert b_and!85209)

(assert b_and!85213)

(assert (not b_next!30773))

(check-sat)

(pop 1)

