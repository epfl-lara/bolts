; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!64580 () Bool)

(assert start!64580)

(declare-fun tp!201458 () Bool)

(declare-fun e!408592 () Bool)

(declare-fun e!408589 () Bool)

(declare-fun b!660637 () Bool)

(declare-datatypes ((List!7174 0))(
  ( (Nil!7160) (Cons!7160 (h!12561 (_ BitVec 16)) (t!86246 List!7174)) )
))
(declare-datatypes ((TokenValue!1480 0))(
  ( (FloatLiteralValue!2960 (text!10805 List!7174)) (TokenValueExt!1479 (__x!5061 Int)) (Broken!7400 (value!46336 List!7174)) (Object!1493) (End!1480) (Def!1480) (Underscore!1480) (Match!1480) (Else!1480) (Error!1480) (Case!1480) (If!1480) (Extends!1480) (Abstract!1480) (Class!1480) (Val!1480) (DelimiterValue!2960 (del!1540 List!7174)) (KeywordValue!1486 (value!46337 List!7174)) (CommentValue!2960 (value!46338 List!7174)) (WhitespaceValue!2960 (value!46339 List!7174)) (IndentationValue!1480 (value!46340 List!7174)) (String!9137) (Int32!1480) (Broken!7401 (value!46341 List!7174)) (Boolean!1481) (Unit!12426) (OperatorValue!1483 (op!1540 List!7174)) (IdentifierValue!2960 (value!46342 List!7174)) (IdentifierValue!2961 (value!46343 List!7174)) (WhitespaceValue!2961 (value!46344 List!7174)) (True!2960) (False!2960) (Broken!7402 (value!46345 List!7174)) (Broken!7403 (value!46346 List!7174)) (True!2961) (RightBrace!1480) (RightBracket!1480) (Colon!1480) (Null!1480) (Comma!1480) (LeftBracket!1480) (False!2961) (LeftBrace!1480) (ImaginaryLiteralValue!1480 (text!10806 List!7174)) (StringLiteralValue!4440 (value!46347 List!7174)) (EOFValue!1480 (value!46348 List!7174)) (IdentValue!1480 (value!46349 List!7174)) (DelimiterValue!2961 (value!46350 List!7174)) (DedentValue!1480 (value!46351 List!7174)) (NewLineValue!1480 (value!46352 List!7174)) (IntegerValue!4440 (value!46353 (_ BitVec 32)) (text!10807 List!7174)) (IntegerValue!4441 (value!46354 Int) (text!10808 List!7174)) (Times!1480) (Or!1480) (Equal!1480) (Minus!1480) (Broken!7404 (value!46355 List!7174)) (And!1480) (Div!1480) (LessEqual!1480) (Mod!1480) (Concat!3261) (Not!1480) (Plus!1480) (SpaceValue!1480 (value!46356 List!7174)) (IntegerValue!4442 (value!46357 Int) (text!10809 List!7174)) (StringLiteralValue!4441 (text!10810 List!7174)) (FloatLiteralValue!2961 (text!10811 List!7174)) (BytesLiteralValue!1480 (value!46358 List!7174)) (CommentValue!2961 (value!46359 List!7174)) (StringLiteralValue!4442 (value!46360 List!7174)) (ErrorTokenValue!1480 (msg!1541 List!7174)) )
))
(declare-datatypes ((Regex!1781 0))(
  ( (ElementMatch!1781 (c!118925 (_ BitVec 16))) (Concat!3262 (regOne!4074 Regex!1781) (regTwo!4074 Regex!1781)) (EmptyExpr!1781) (Star!1781 (reg!2110 Regex!1781)) (EmptyLang!1781) (Union!1781 (regOne!4075 Regex!1781) (regTwo!4075 Regex!1781)) )
))
(declare-datatypes ((String!9138 0))(
  ( (String!9139 (value!46361 String)) )
))
(declare-datatypes ((IArray!5067 0))(
  ( (IArray!5068 (innerList!2591 List!7174)) )
))
(declare-datatypes ((Conc!2533 0))(
  ( (Node!2533 (left!5805 Conc!2533) (right!6135 Conc!2533) (csize!5296 Int) (cheight!2744 Int)) (Leaf!3772 (xs!5182 IArray!5067) (csize!5297 Int)) (Empty!2533) )
))
(declare-datatypes ((BalanceConc!5078 0))(
  ( (BalanceConc!5079 (c!118926 Conc!2533)) )
))
(declare-datatypes ((TokenValueInjection!2712 0))(
  ( (TokenValueInjection!2713 (toValue!2387 Int) (toChars!2246 Int)) )
))
(declare-datatypes ((Rule!2692 0))(
  ( (Rule!2693 (regex!1446 Regex!1781) (tag!1708 String!9138) (isSeparator!1446 Bool) (transformation!1446 TokenValueInjection!2712)) )
))
(declare-datatypes ((Token!2614 0))(
  ( (Token!2615 (value!46362 TokenValue!1480) (rule!2241 Rule!2692) (size!5682 Int) (originalCharacters!1478 List!7174)) )
))
(declare-datatypes ((List!7175 0))(
  ( (Nil!7161) (Cons!7161 (h!12562 Token!2614) (t!86247 List!7175)) )
))
(declare-datatypes ((IArray!5069 0))(
  ( (IArray!5070 (innerList!2592 List!7175)) )
))
(declare-datatypes ((Conc!2534 0))(
  ( (Node!2534 (left!5806 Conc!2534) (right!6136 Conc!2534) (csize!5298 Int) (cheight!2745 Int)) (Leaf!3773 (xs!5183 IArray!5069) (csize!5299 Int)) (Empty!2534) )
))
(declare-datatypes ((List!7176 0))(
  ( (Nil!7162) (Cons!7162 (h!12563 Rule!2692) (t!86248 List!7176)) )
))
(declare-datatypes ((BalanceConc!5080 0))(
  ( (BalanceConc!5081 (c!118927 Conc!2534)) )
))
(declare-datatypes ((PrintableTokens!196 0))(
  ( (PrintableTokens!197 (rules!8287 List!7176) (tokens!1265 BalanceConc!5080)) )
))
(declare-fun sepL!1 () PrintableTokens!196)

(declare-fun inv!9185 (BalanceConc!5080) Bool)

(assert (=> b!660637 (= e!408592 (and tp!201458 (inv!9185 (tokens!1265 sepL!1)) e!408589))))

(declare-fun res!293192 () Bool)

(declare-fun e!408590 () Bool)

(assert (=> start!64580 (=> (not res!293192) (not e!408590))))

(declare-fun objs!31 () PrintableTokens!196)

(declare-fun usesJsonRules!0 (PrintableTokens!196) Bool)

(assert (=> start!64580 (= res!293192 (usesJsonRules!0 objs!31))))

(assert (=> start!64580 e!408590))

(declare-fun e!408591 () Bool)

(declare-fun inv!9186 (PrintableTokens!196) Bool)

(assert (=> start!64580 (and (inv!9186 objs!31) e!408591)))

(assert (=> start!64580 (and (inv!9186 sepL!1) e!408592)))

(declare-fun sepR!1 () PrintableTokens!196)

(declare-fun e!408593 () Bool)

(assert (=> start!64580 (and (inv!9186 sepR!1) e!408593)))

(declare-fun b!660638 () Bool)

(declare-fun res!293193 () Bool)

(assert (=> b!660638 (=> (not res!293193) (not e!408590))))

(assert (=> b!660638 (= res!293193 (usesJsonRules!0 sepL!1))))

(declare-fun b!660639 () Bool)

(declare-fun res!293194 () Bool)

(assert (=> b!660639 (=> (not res!293194) (not e!408590))))

(assert (=> b!660639 (= res!293194 (usesJsonRules!0 sepR!1))))

(declare-fun b!660640 () Bool)

(declare-fun tp!201455 () Bool)

(declare-fun inv!9187 (Conc!2534) Bool)

(assert (=> b!660640 (= e!408589 (and (inv!9187 (c!118927 (tokens!1265 sepL!1))) tp!201455))))

(declare-fun b!660641 () Bool)

(declare-fun e!408594 () Bool)

(declare-fun tp!201457 () Bool)

(assert (=> b!660641 (= e!408593 (and tp!201457 (inv!9185 (tokens!1265 sepR!1)) e!408594))))

(declare-fun tp!201460 () Bool)

(declare-fun b!660642 () Bool)

(declare-fun e!408588 () Bool)

(assert (=> b!660642 (= e!408591 (and tp!201460 (inv!9185 (tokens!1265 objs!31)) e!408588))))

(declare-fun b!660643 () Bool)

(assert (=> b!660643 (= e!408590 false)))

(declare-datatypes ((Option!1689 0))(
  ( (None!1688) (Some!1688 (v!17330 PrintableTokens!196)) )
))
(declare-fun lt!281561 () Option!1689)

(declare-fun append!270 (PrintableTokens!196 PrintableTokens!196) Option!1689)

(assert (=> b!660643 (= lt!281561 (append!270 sepL!1 objs!31))))

(declare-fun b!660644 () Bool)

(declare-fun tp!201456 () Bool)

(assert (=> b!660644 (= e!408588 (and (inv!9187 (c!118927 (tokens!1265 objs!31))) tp!201456))))

(declare-fun b!660645 () Bool)

(declare-fun tp!201459 () Bool)

(assert (=> b!660645 (= e!408594 (and (inv!9187 (c!118927 (tokens!1265 sepR!1))) tp!201459))))

(assert (= (and start!64580 res!293192) b!660638))

(assert (= (and b!660638 res!293193) b!660639))

(assert (= (and b!660639 res!293194) b!660643))

(assert (= b!660642 b!660644))

(assert (= start!64580 b!660642))

(assert (= b!660637 b!660640))

(assert (= start!64580 b!660637))

(assert (= b!660641 b!660645))

(assert (= start!64580 b!660641))

(declare-fun m!926773 () Bool)

(assert (=> start!64580 m!926773))

(declare-fun m!926775 () Bool)

(assert (=> start!64580 m!926775))

(declare-fun m!926777 () Bool)

(assert (=> start!64580 m!926777))

(declare-fun m!926779 () Bool)

(assert (=> start!64580 m!926779))

(declare-fun m!926781 () Bool)

(assert (=> b!660644 m!926781))

(declare-fun m!926783 () Bool)

(assert (=> b!660641 m!926783))

(declare-fun m!926785 () Bool)

(assert (=> b!660638 m!926785))

(declare-fun m!926787 () Bool)

(assert (=> b!660639 m!926787))

(declare-fun m!926789 () Bool)

(assert (=> b!660645 m!926789))

(declare-fun m!926791 () Bool)

(assert (=> b!660643 m!926791))

(declare-fun m!926793 () Bool)

(assert (=> b!660637 m!926793))

(declare-fun m!926795 () Bool)

(assert (=> b!660640 m!926795))

(declare-fun m!926797 () Bool)

(assert (=> b!660642 m!926797))

(check-sat (not b!660640) (not b!660641) (not b!660644) (not b!660643) (not start!64580) (not b!660645) (not b!660642) (not b!660637) (not b!660638) (not b!660639))
(check-sat)
