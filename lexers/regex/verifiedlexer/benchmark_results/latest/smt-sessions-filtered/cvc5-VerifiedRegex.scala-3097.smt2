; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!183796 () Bool)

(assert start!183796)

(assert (=> start!183796 false))

(declare-fun e!1178675 () Bool)

(assert (=> start!183796 e!1178675))

(declare-fun b!1844408 () Bool)

(declare-fun e!1178676 () Bool)

(declare-datatypes ((List!20399 0))(
  ( (Nil!20329) (Cons!20329 (h!25730 (_ BitVec 16)) (t!171936 List!20399)) )
))
(declare-datatypes ((TokenValue!3752 0))(
  ( (FloatLiteralValue!7504 (text!26709 List!20399)) (TokenValueExt!3751 (__x!12800 Int)) (Broken!18760 (value!114143 List!20399)) (Object!3821) (End!3752) (Def!3752) (Underscore!3752) (Match!3752) (Else!3752) (Error!3752) (Case!3752) (If!3752) (Extends!3752) (Abstract!3752) (Class!3752) (Val!3752) (DelimiterValue!7504 (del!3812 List!20399)) (KeywordValue!3758 (value!114144 List!20399)) (CommentValue!7504 (value!114145 List!20399)) (WhitespaceValue!7504 (value!114146 List!20399)) (IndentationValue!3752 (value!114147 List!20399)) (String!23273) (Int32!3752) (Broken!18761 (value!114148 List!20399)) (Boolean!3753) (Unit!35023) (OperatorValue!3755 (op!3812 List!20399)) (IdentifierValue!7504 (value!114149 List!20399)) (IdentifierValue!7505 (value!114150 List!20399)) (WhitespaceValue!7505 (value!114151 List!20399)) (True!7504) (False!7504) (Broken!18762 (value!114152 List!20399)) (Broken!18763 (value!114153 List!20399)) (True!7505) (RightBrace!3752) (RightBracket!3752) (Colon!3752) (Null!3752) (Comma!3752) (LeftBracket!3752) (False!7505) (LeftBrace!3752) (ImaginaryLiteralValue!3752 (text!26710 List!20399)) (StringLiteralValue!11256 (value!114154 List!20399)) (EOFValue!3752 (value!114155 List!20399)) (IdentValue!3752 (value!114156 List!20399)) (DelimiterValue!7505 (value!114157 List!20399)) (DedentValue!3752 (value!114158 List!20399)) (NewLineValue!3752 (value!114159 List!20399)) (IntegerValue!11256 (value!114160 (_ BitVec 32)) (text!26711 List!20399)) (IntegerValue!11257 (value!114161 Int) (text!26712 List!20399)) (Times!3752) (Or!3752) (Equal!3752) (Minus!3752) (Broken!18764 (value!114162 List!20399)) (And!3752) (Div!3752) (LessEqual!3752) (Mod!3752) (Concat!8740) (Not!3752) (Plus!3752) (SpaceValue!3752 (value!114163 List!20399)) (IntegerValue!11258 (value!114164 Int) (text!26713 List!20399)) (StringLiteralValue!11257 (text!26714 List!20399)) (FloatLiteralValue!7505 (text!26715 List!20399)) (BytesLiteralValue!3752 (value!114165 List!20399)) (CommentValue!7505 (value!114166 List!20399)) (StringLiteralValue!11258 (value!114167 List!20399)) (ErrorTokenValue!3752 (msg!3813 List!20399)) )
))
(declare-datatypes ((Regex!4988 0))(
  ( (ElementMatch!4988 (c!301087 (_ BitVec 16))) (Concat!8741 (regOne!10488 Regex!4988) (regTwo!10488 Regex!4988)) (EmptyExpr!4988) (Star!4988 (reg!5317 Regex!4988)) (EmptyLang!4988) (Union!4988 (regOne!10489 Regex!4988) (regTwo!10489 Regex!4988)) )
))
(declare-datatypes ((String!23274 0))(
  ( (String!23275 (value!114168 String)) )
))
(declare-datatypes ((IArray!13469 0))(
  ( (IArray!13470 (innerList!6792 List!20399)) )
))
(declare-datatypes ((Conc!6732 0))(
  ( (Node!6732 (left!16263 Conc!6732) (right!16593 Conc!6732) (csize!13694 Int) (cheight!6943 Int)) (Leaf!9830 (xs!9608 IArray!13469) (csize!13695 Int)) (Empty!6732) )
))
(declare-datatypes ((BalanceConc!13384 0))(
  ( (BalanceConc!13385 (c!301088 Conc!6732)) )
))
(declare-datatypes ((TokenValueInjection!7160 0))(
  ( (TokenValueInjection!7161 (toValue!5215 Int) (toChars!5074 Int)) )
))
(declare-datatypes ((Rule!7120 0))(
  ( (Rule!7121 (regex!3660 Regex!4988) (tag!4074 String!23274) (isSeparator!3660 Bool) (transformation!3660 TokenValueInjection!7160)) )
))
(declare-datatypes ((Token!6874 0))(
  ( (Token!6875 (value!114169 TokenValue!3752) (rule!5854 Rule!7120) (size!16103 Int) (originalCharacters!4468 List!20399)) )
))
(declare-datatypes ((List!20400 0))(
  ( (Nil!20330) (Cons!20330 (h!25731 Token!6874) (t!171937 List!20400)) )
))
(declare-datatypes ((IArray!13471 0))(
  ( (IArray!13472 (innerList!6793 List!20400)) )
))
(declare-datatypes ((Conc!6733 0))(
  ( (Node!6733 (left!16264 Conc!6733) (right!16594 Conc!6733) (csize!13696 Int) (cheight!6944 Int)) (Leaf!9831 (xs!9609 IArray!13471) (csize!13697 Int)) (Empty!6733) )
))
(declare-datatypes ((List!20401 0))(
  ( (Nil!20331) (Cons!20331 (h!25732 Rule!7120) (t!171938 List!20401)) )
))
(declare-datatypes ((BalanceConc!13386 0))(
  ( (BalanceConc!13387 (c!301089 Conc!6733)) )
))
(declare-datatypes ((PrintableTokens!1238 0))(
  ( (PrintableTokens!1239 (rules!15023 List!20401) (tokens!2445 BalanceConc!13386)) )
))
(declare-datatypes ((tuple2!19692 0))(
  ( (tuple2!19693 (_1!11248 Int) (_2!11248 PrintableTokens!1238)) )
))
(declare-datatypes ((List!20402 0))(
  ( (Nil!20332) (Cons!20332 (h!25733 tuple2!19692) (t!171939 List!20402)) )
))
(declare-fun l!2176 () List!20402)

(declare-fun tp!521545 () Bool)

(declare-fun inv!26605 (Conc!6733) Bool)

(assert (=> b!1844408 (= e!1178676 (and (inv!26605 (c!301089 (tokens!2445 (_2!11248 (h!25733 l!2176))))) tp!521545))))

(declare-fun e!1178677 () Bool)

(declare-fun b!1844407 () Bool)

(declare-fun tp!521543 () Bool)

(declare-fun inv!26606 (BalanceConc!13386) Bool)

(assert (=> b!1844407 (= e!1178677 (and tp!521543 (inv!26606 (tokens!2445 (_2!11248 (h!25733 l!2176)))) e!1178676))))

(declare-fun b!1844406 () Bool)

(declare-fun tp!521544 () Bool)

(declare-fun inv!26607 (PrintableTokens!1238) Bool)

(assert (=> b!1844406 (= e!1178675 (and (inv!26607 (_2!11248 (h!25733 l!2176))) e!1178677 tp!521544))))

(assert (= b!1844407 b!1844408))

(assert (= b!1844406 b!1844407))

(assert (= (and start!183796 (is-Cons!20332 l!2176)) b!1844406))

(declare-fun m!2272699 () Bool)

(assert (=> b!1844408 m!2272699))

(declare-fun m!2272701 () Bool)

(assert (=> b!1844407 m!2272701))

(declare-fun m!2272703 () Bool)

(assert (=> b!1844406 m!2272703))

(push 1)

(assert (not b!1844407))

(assert (not b!1844408))

(assert (not b!1844406))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

