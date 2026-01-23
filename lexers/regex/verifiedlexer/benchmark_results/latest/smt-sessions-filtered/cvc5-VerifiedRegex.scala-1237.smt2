; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!64574 () Bool)

(assert start!64574)

(declare-fun b!660552 () Bool)

(declare-fun e!408531 () Bool)

(assert (=> b!660552 (= e!408531 false)))

(declare-fun res!293162 () Bool)

(assert (=> start!64574 (=> (not res!293162) (not e!408531))))

(declare-datatypes ((List!7165 0))(
  ( (Nil!7151) (Cons!7151 (h!12552 (_ BitVec 16)) (t!86237 List!7165)) )
))
(declare-datatypes ((TokenValue!1477 0))(
  ( (FloatLiteralValue!2954 (text!10784 List!7165)) (TokenValueExt!1476 (__x!5058 Int)) (Broken!7385 (value!46252 List!7165)) (Object!1490) (End!1477) (Def!1477) (Underscore!1477) (Match!1477) (Else!1477) (Error!1477) (Case!1477) (If!1477) (Extends!1477) (Abstract!1477) (Class!1477) (Val!1477) (DelimiterValue!2954 (del!1537 List!7165)) (KeywordValue!1483 (value!46253 List!7165)) (CommentValue!2954 (value!46254 List!7165)) (WhitespaceValue!2954 (value!46255 List!7165)) (IndentationValue!1477 (value!46256 List!7165)) (String!9124) (Int32!1477) (Broken!7386 (value!46257 List!7165)) (Boolean!1478) (Unit!12423) (OperatorValue!1480 (op!1537 List!7165)) (IdentifierValue!2954 (value!46258 List!7165)) (IdentifierValue!2955 (value!46259 List!7165)) (WhitespaceValue!2955 (value!46260 List!7165)) (True!2954) (False!2954) (Broken!7387 (value!46261 List!7165)) (Broken!7388 (value!46262 List!7165)) (True!2955) (RightBrace!1477) (RightBracket!1477) (Colon!1477) (Null!1477) (Comma!1477) (LeftBracket!1477) (False!2955) (LeftBrace!1477) (ImaginaryLiteralValue!1477 (text!10785 List!7165)) (StringLiteralValue!4431 (value!46263 List!7165)) (EOFValue!1477 (value!46264 List!7165)) (IdentValue!1477 (value!46265 List!7165)) (DelimiterValue!2955 (value!46266 List!7165)) (DedentValue!1477 (value!46267 List!7165)) (NewLineValue!1477 (value!46268 List!7165)) (IntegerValue!4431 (value!46269 (_ BitVec 32)) (text!10786 List!7165)) (IntegerValue!4432 (value!46270 Int) (text!10787 List!7165)) (Times!1477) (Or!1477) (Equal!1477) (Minus!1477) (Broken!7389 (value!46271 List!7165)) (And!1477) (Div!1477) (LessEqual!1477) (Mod!1477) (Concat!3255) (Not!1477) (Plus!1477) (SpaceValue!1477 (value!46272 List!7165)) (IntegerValue!4433 (value!46273 Int) (text!10788 List!7165)) (StringLiteralValue!4432 (text!10789 List!7165)) (FloatLiteralValue!2955 (text!10790 List!7165)) (BytesLiteralValue!1477 (value!46274 List!7165)) (CommentValue!2955 (value!46275 List!7165)) (StringLiteralValue!4433 (value!46276 List!7165)) (ErrorTokenValue!1477 (msg!1538 List!7165)) )
))
(declare-datatypes ((Regex!1778 0))(
  ( (ElementMatch!1778 (c!118916 (_ BitVec 16))) (Concat!3256 (regOne!4068 Regex!1778) (regTwo!4068 Regex!1778)) (EmptyExpr!1778) (Star!1778 (reg!2107 Regex!1778)) (EmptyLang!1778) (Union!1778 (regOne!4069 Regex!1778) (regTwo!4069 Regex!1778)) )
))
(declare-datatypes ((String!9125 0))(
  ( (String!9126 (value!46277 String)) )
))
(declare-datatypes ((IArray!5055 0))(
  ( (IArray!5056 (innerList!2585 List!7165)) )
))
(declare-datatypes ((Conc!2527 0))(
  ( (Node!2527 (left!5798 Conc!2527) (right!6128 Conc!2527) (csize!5284 Int) (cheight!2738 Int)) (Leaf!3765 (xs!5176 IArray!5055) (csize!5285 Int)) (Empty!2527) )
))
(declare-datatypes ((BalanceConc!5066 0))(
  ( (BalanceConc!5067 (c!118917 Conc!2527)) )
))
(declare-datatypes ((TokenValueInjection!2706 0))(
  ( (TokenValueInjection!2707 (toValue!2384 Int) (toChars!2243 Int)) )
))
(declare-datatypes ((Rule!2686 0))(
  ( (Rule!2687 (regex!1443 Regex!1778) (tag!1705 String!9125) (isSeparator!1443 Bool) (transformation!1443 TokenValueInjection!2706)) )
))
(declare-datatypes ((Token!2608 0))(
  ( (Token!2609 (value!46278 TokenValue!1477) (rule!2238 Rule!2686) (size!5679 Int) (originalCharacters!1475 List!7165)) )
))
(declare-datatypes ((List!7166 0))(
  ( (Nil!7152) (Cons!7152 (h!12553 Token!2608) (t!86238 List!7166)) )
))
(declare-datatypes ((IArray!5057 0))(
  ( (IArray!5058 (innerList!2586 List!7166)) )
))
(declare-datatypes ((Conc!2528 0))(
  ( (Node!2528 (left!5799 Conc!2528) (right!6129 Conc!2528) (csize!5286 Int) (cheight!2739 Int)) (Leaf!3766 (xs!5177 IArray!5057) (csize!5287 Int)) (Empty!2528) )
))
(declare-datatypes ((List!7167 0))(
  ( (Nil!7153) (Cons!7153 (h!12554 Rule!2686) (t!86239 List!7167)) )
))
(declare-datatypes ((BalanceConc!5068 0))(
  ( (BalanceConc!5069 (c!118918 Conc!2528)) )
))
(declare-datatypes ((PrintableTokens!190 0))(
  ( (PrintableTokens!191 (rules!8284 List!7167) (tokens!1262 BalanceConc!5068)) )
))
(declare-fun objs!31 () PrintableTokens!190)

(declare-fun usesJsonRules!0 (PrintableTokens!190) Bool)

(assert (=> start!64574 (= res!293162 (usesJsonRules!0 objs!31))))

(assert (=> start!64574 e!408531))

(declare-fun e!408527 () Bool)

(declare-fun inv!9173 (PrintableTokens!190) Bool)

(assert (=> start!64574 (and (inv!9173 objs!31) e!408527)))

(declare-fun sepL!1 () PrintableTokens!190)

(declare-fun e!408525 () Bool)

(assert (=> start!64574 (and (inv!9173 sepL!1) e!408525)))

(declare-fun sepR!1 () PrintableTokens!190)

(declare-fun e!408526 () Bool)

(assert (=> start!64574 (and (inv!9173 sepR!1) e!408526)))

(declare-fun b!660553 () Bool)

(declare-fun e!408530 () Bool)

(declare-fun tp!201406 () Bool)

(declare-fun inv!9174 (Conc!2528) Bool)

(assert (=> b!660553 (= e!408530 (and (inv!9174 (c!118918 (tokens!1262 sepL!1))) tp!201406))))

(declare-fun b!660554 () Bool)

(declare-fun e!408529 () Bool)

(declare-fun tp!201404 () Bool)

(assert (=> b!660554 (= e!408529 (and (inv!9174 (c!118918 (tokens!1262 sepR!1))) tp!201404))))

(declare-fun b!660555 () Bool)

(declare-fun res!293161 () Bool)

(assert (=> b!660555 (=> (not res!293161) (not e!408531))))

(declare-datatypes ((Option!1686 0))(
  ( (None!1685) (Some!1685 (v!17327 PrintableTokens!190)) )
))
(declare-fun append!267 (PrintableTokens!190 PrintableTokens!190) Option!1686)

(assert (=> b!660555 (= res!293161 (not (is-Some!1685 (append!267 sepL!1 objs!31))))))

(declare-fun b!660556 () Bool)

(declare-fun e!408528 () Bool)

(declare-fun tp!201405 () Bool)

(assert (=> b!660556 (= e!408528 (and (inv!9174 (c!118918 (tokens!1262 objs!31))) tp!201405))))

(declare-fun b!660557 () Bool)

(declare-fun tp!201402 () Bool)

(declare-fun inv!9175 (BalanceConc!5068) Bool)

(assert (=> b!660557 (= e!408525 (and tp!201402 (inv!9175 (tokens!1262 sepL!1)) e!408530))))

(declare-fun b!660558 () Bool)

(declare-fun res!293163 () Bool)

(assert (=> b!660558 (=> (not res!293163) (not e!408531))))

(assert (=> b!660558 (= res!293163 (usesJsonRules!0 sepR!1))))

(declare-fun b!660559 () Bool)

(declare-fun tp!201403 () Bool)

(assert (=> b!660559 (= e!408527 (and tp!201403 (inv!9175 (tokens!1262 objs!31)) e!408528))))

(declare-fun b!660560 () Bool)

(declare-fun res!293164 () Bool)

(assert (=> b!660560 (=> (not res!293164) (not e!408531))))

(assert (=> b!660560 (= res!293164 (usesJsonRules!0 sepL!1))))

(declare-fun tp!201401 () Bool)

(declare-fun b!660561 () Bool)

(assert (=> b!660561 (= e!408526 (and tp!201401 (inv!9175 (tokens!1262 sepR!1)) e!408529))))

(assert (= (and start!64574 res!293162) b!660560))

(assert (= (and b!660560 res!293164) b!660558))

(assert (= (and b!660558 res!293163) b!660555))

(assert (= (and b!660555 res!293161) b!660552))

(assert (= b!660559 b!660556))

(assert (= start!64574 b!660559))

(assert (= b!660557 b!660553))

(assert (= start!64574 b!660557))

(assert (= b!660561 b!660554))

(assert (= start!64574 b!660561))

(declare-fun m!926695 () Bool)

(assert (=> b!660558 m!926695))

(declare-fun m!926697 () Bool)

(assert (=> b!660555 m!926697))

(declare-fun m!926699 () Bool)

(assert (=> b!660559 m!926699))

(declare-fun m!926701 () Bool)

(assert (=> b!660554 m!926701))

(declare-fun m!926703 () Bool)

(assert (=> b!660557 m!926703))

(declare-fun m!926705 () Bool)

(assert (=> start!64574 m!926705))

(declare-fun m!926707 () Bool)

(assert (=> start!64574 m!926707))

(declare-fun m!926709 () Bool)

(assert (=> start!64574 m!926709))

(declare-fun m!926711 () Bool)

(assert (=> start!64574 m!926711))

(declare-fun m!926713 () Bool)

(assert (=> b!660560 m!926713))

(declare-fun m!926715 () Bool)

(assert (=> b!660556 m!926715))

(declare-fun m!926717 () Bool)

(assert (=> b!660561 m!926717))

(declare-fun m!926719 () Bool)

(assert (=> b!660553 m!926719))

(push 1)

(assert (not b!660553))

(assert (not b!660554))

(assert (not b!660555))

(assert (not b!660558))

(assert (not b!660557))

(assert (not b!660560))

(assert (not start!64574))

(assert (not b!660556))

(assert (not b!660559))

(assert (not b!660561))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

