; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!252886 () Bool)

(assert start!252886)

(declare-fun b!2601159 () Bool)

(declare-fun b_free!72977 () Bool)

(declare-fun b_next!73681 () Bool)

(assert (=> b!2601159 (= b_free!72977 (not b_next!73681))))

(declare-fun tp!824047 () Bool)

(declare-fun b_and!190267 () Bool)

(assert (=> b!2601159 (= tp!824047 b_and!190267)))

(declare-fun b_free!72979 () Bool)

(declare-fun b_next!73683 () Bool)

(assert (=> b!2601159 (= b_free!72979 (not b_next!73683))))

(declare-fun tp!824051 () Bool)

(declare-fun b_and!190269 () Bool)

(assert (=> b!2601159 (= tp!824051 b_and!190269)))

(declare-fun res!1095809 () Bool)

(declare-fun e!1641978 () Bool)

(assert (=> start!252886 (=> (not res!1095809) (not e!1641978))))

(declare-datatypes ((LexerInterface!4121 0))(
  ( (LexerInterfaceExt!4118 (__x!19325 Int)) (Lexer!4119) )
))
(declare-fun thiss!14197 () LexerInterface!4121)

(declare-fun from!862 () Int)

(assert (=> start!252886 (= res!1095809 (and (is-Lexer!4119 thiss!14197) (>= from!862 0)))))

(assert (=> start!252886 e!1641978))

(assert (=> start!252886 true))

(declare-datatypes ((C!15494 0))(
  ( (C!15495 (val!9681 Int)) )
))
(declare-datatypes ((List!30114 0))(
  ( (Nil!30014) (Cons!30014 (h!35434 (_ BitVec 16)) (t!213163 List!30114)) )
))
(declare-datatypes ((TokenValue!4746 0))(
  ( (FloatLiteralValue!9492 (text!33667 List!30114)) (TokenValueExt!4745 (__x!19326 Int)) (Broken!23730 (value!146514 List!30114)) (Object!4845) (End!4746) (Def!4746) (Underscore!4746) (Match!4746) (Else!4746) (Error!4746) (Case!4746) (If!4746) (Extends!4746) (Abstract!4746) (Class!4746) (Val!4746) (DelimiterValue!9492 (del!4806 List!30114)) (KeywordValue!4752 (value!146515 List!30114)) (CommentValue!9492 (value!146516 List!30114)) (WhitespaceValue!9492 (value!146517 List!30114)) (IndentationValue!4746 (value!146518 List!30114)) (String!33615) (Int32!4746) (Broken!23731 (value!146519 List!30114)) (Boolean!4747) (Unit!44033) (OperatorValue!4749 (op!4806 List!30114)) (IdentifierValue!9492 (value!146520 List!30114)) (IdentifierValue!9493 (value!146521 List!30114)) (WhitespaceValue!9493 (value!146522 List!30114)) (True!9492) (False!9492) (Broken!23732 (value!146523 List!30114)) (Broken!23733 (value!146524 List!30114)) (True!9493) (RightBrace!4746) (RightBracket!4746) (Colon!4746) (Null!4746) (Comma!4746) (LeftBracket!4746) (False!9493) (LeftBrace!4746) (ImaginaryLiteralValue!4746 (text!33668 List!30114)) (StringLiteralValue!14238 (value!146525 List!30114)) (EOFValue!4746 (value!146526 List!30114)) (IdentValue!4746 (value!146527 List!30114)) (DelimiterValue!9493 (value!146528 List!30114)) (DedentValue!4746 (value!146529 List!30114)) (NewLineValue!4746 (value!146530 List!30114)) (IntegerValue!14238 (value!146531 (_ BitVec 32)) (text!33669 List!30114)) (IntegerValue!14239 (value!146532 Int) (text!33670 List!30114)) (Times!4746) (Or!4746) (Equal!4746) (Minus!4746) (Broken!23734 (value!146533 List!30114)) (And!4746) (Div!4746) (LessEqual!4746) (Mod!4746) (Concat!12414) (Not!4746) (Plus!4746) (SpaceValue!4746 (value!146534 List!30114)) (IntegerValue!14240 (value!146535 Int) (text!33671 List!30114)) (StringLiteralValue!14239 (text!33672 List!30114)) (FloatLiteralValue!9493 (text!33673 List!30114)) (BytesLiteralValue!4746 (value!146536 List!30114)) (CommentValue!9493 (value!146537 List!30114)) (StringLiteralValue!14240 (value!146538 List!30114)) (ErrorTokenValue!4746 (msg!4807 List!30114)) )
))
(declare-datatypes ((Regex!7668 0))(
  ( (ElementMatch!7668 (c!418675 C!15494)) (Concat!12415 (regOne!15848 Regex!7668) (regTwo!15848 Regex!7668)) (EmptyExpr!7668) (Star!7668 (reg!7997 Regex!7668)) (EmptyLang!7668) (Union!7668 (regOne!15849 Regex!7668) (regTwo!15849 Regex!7668)) )
))
(declare-datatypes ((String!33616 0))(
  ( (String!33617 (value!146539 String)) )
))
(declare-datatypes ((List!30115 0))(
  ( (Nil!30015) (Cons!30015 (h!35435 C!15494) (t!213164 List!30115)) )
))
(declare-datatypes ((IArray!18585 0))(
  ( (IArray!18586 (innerList!9350 List!30115)) )
))
(declare-datatypes ((Conc!9290 0))(
  ( (Node!9290 (left!23084 Conc!9290) (right!23414 Conc!9290) (csize!18810 Int) (cheight!9501 Int)) (Leaf!14293 (xs!12274 IArray!18585) (csize!18811 Int)) (Empty!9290) )
))
(declare-datatypes ((BalanceConc!18194 0))(
  ( (BalanceConc!18195 (c!418676 Conc!9290)) )
))
(declare-datatypes ((TokenValueInjection!8932 0))(
  ( (TokenValueInjection!8933 (toValue!6418 Int) (toChars!6277 Int)) )
))
(declare-datatypes ((Rule!8848 0))(
  ( (Rule!8849 (regex!4524 Regex!7668) (tag!5014 String!33616) (isSeparator!4524 Bool) (transformation!4524 TokenValueInjection!8932)) )
))
(declare-datatypes ((Token!8518 0))(
  ( (Token!8519 (value!146540 TokenValue!4746) (rule!6894 Rule!8848) (size!23247 Int) (originalCharacters!5290 List!30115)) )
))
(declare-datatypes ((List!30116 0))(
  ( (Nil!30016) (Cons!30016 (h!35436 Token!8518) (t!213165 List!30116)) )
))
(declare-datatypes ((IArray!18587 0))(
  ( (IArray!18588 (innerList!9351 List!30116)) )
))
(declare-datatypes ((Conc!9291 0))(
  ( (Node!9291 (left!23085 Conc!9291) (right!23415 Conc!9291) (csize!18812 Int) (cheight!9502 Int)) (Leaf!14294 (xs!12275 IArray!18587) (csize!18813 Int)) (Empty!9291) )
))
(declare-datatypes ((BalanceConc!18196 0))(
  ( (BalanceConc!18197 (c!418677 Conc!9291)) )
))
(declare-fun v!6381 () BalanceConc!18196)

(declare-fun e!1641979 () Bool)

(declare-fun inv!40575 (BalanceConc!18196) Bool)

(assert (=> start!252886 (and (inv!40575 v!6381) e!1641979)))

(declare-fun e!1641977 () Bool)

(assert (=> start!252886 e!1641977))

(declare-fun b!2601156 () Bool)

(declare-fun e!1641976 () Bool)

(declare-fun tp!824049 () Bool)

(assert (=> b!2601156 (= e!1641977 (and e!1641976 tp!824049))))

(declare-fun e!1641980 () Bool)

(declare-fun tp!824048 () Bool)

(declare-fun b!2601157 () Bool)

(declare-datatypes ((List!30117 0))(
  ( (Nil!30017) (Cons!30017 (h!35437 Rule!8848) (t!213166 List!30117)) )
))
(declare-fun rules!1726 () List!30117)

(declare-fun inv!40572 (String!33616) Bool)

(declare-fun inv!40576 (TokenValueInjection!8932) Bool)

(assert (=> b!2601157 (= e!1641976 (and tp!824048 (inv!40572 (tag!5014 (h!35437 rules!1726))) (inv!40576 (transformation!4524 (h!35437 rules!1726))) e!1641980))))

(declare-fun b!2601158 () Bool)

(declare-fun res!1095811 () Bool)

(assert (=> b!2601158 (=> (not res!1095811) (not e!1641978))))

(declare-fun size!23248 (BalanceConc!18196) Int)

(assert (=> b!2601158 (= res!1095811 (<= from!862 (size!23248 v!6381)))))

(assert (=> b!2601159 (= e!1641980 (and tp!824047 tp!824051))))

(declare-fun b!2601160 () Bool)

(assert (=> b!2601160 (= e!1641978 false)))

(declare-fun lt!915372 () Bool)

(declare-fun rulesProduceEachTokenIndividually!941 (LexerInterface!4121 List!30117 BalanceConc!18196) Bool)

(assert (=> b!2601160 (= lt!915372 (rulesProduceEachTokenIndividually!941 thiss!14197 rules!1726 v!6381))))

(declare-fun b!2601161 () Bool)

(declare-fun tp!824050 () Bool)

(declare-fun inv!40577 (Conc!9291) Bool)

(assert (=> b!2601161 (= e!1641979 (and (inv!40577 (c!418677 v!6381)) tp!824050))))

(declare-fun b!2601162 () Bool)

(declare-fun res!1095808 () Bool)

(assert (=> b!2601162 (=> (not res!1095808) (not e!1641978))))

(declare-fun isEmpty!17167 (List!30117) Bool)

(assert (=> b!2601162 (= res!1095808 (not (isEmpty!17167 rules!1726)))))

(declare-fun b!2601163 () Bool)

(declare-fun res!1095810 () Bool)

(assert (=> b!2601163 (=> (not res!1095810) (not e!1641978))))

(declare-fun rulesInvariant!3621 (LexerInterface!4121 List!30117) Bool)

(assert (=> b!2601163 (= res!1095810 (rulesInvariant!3621 thiss!14197 rules!1726))))

(assert (= (and start!252886 res!1095809) b!2601158))

(assert (= (and b!2601158 res!1095811) b!2601162))

(assert (= (and b!2601162 res!1095808) b!2601163))

(assert (= (and b!2601163 res!1095810) b!2601160))

(assert (= start!252886 b!2601161))

(assert (= b!2601157 b!2601159))

(assert (= b!2601156 b!2601157))

(assert (= (and start!252886 (is-Cons!30017 rules!1726)) b!2601156))

(declare-fun m!2936289 () Bool)

(assert (=> b!2601158 m!2936289))

(declare-fun m!2936291 () Bool)

(assert (=> b!2601162 m!2936291))

(declare-fun m!2936293 () Bool)

(assert (=> start!252886 m!2936293))

(declare-fun m!2936295 () Bool)

(assert (=> b!2601160 m!2936295))

(declare-fun m!2936297 () Bool)

(assert (=> b!2601163 m!2936297))

(declare-fun m!2936299 () Bool)

(assert (=> b!2601157 m!2936299))

(declare-fun m!2936301 () Bool)

(assert (=> b!2601157 m!2936301))

(declare-fun m!2936303 () Bool)

(assert (=> b!2601161 m!2936303))

(push 1)

(assert b_and!190269)

(assert (not start!252886))

(assert (not b!2601162))

(assert (not b!2601161))

(assert b_and!190267)

(assert (not b!2601163))

(assert (not b!2601160))

(assert (not b!2601157))

(assert (not b!2601156))

(assert (not b!2601158))

(assert (not b_next!73683))

(assert (not b_next!73681))

(check-sat)

(pop 1)

(push 1)

(assert b_and!190267)

(assert b_and!190269)

(assert (not b_next!73681))

(assert (not b_next!73683))

(check-sat)

(pop 1)

