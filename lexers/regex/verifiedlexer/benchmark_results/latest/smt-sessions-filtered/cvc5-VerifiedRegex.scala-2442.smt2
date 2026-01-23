; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!128754 () Bool)

(assert start!128754)

(declare-fun b!1409502 () Bool)

(declare-fun e!899844 () Bool)

(assert (=> b!1409502 (= e!899844 false)))

(declare-datatypes ((List!14435 0))(
  ( (Nil!14369) (Cons!14369 (h!19770 (_ BitVec 16)) (t!123354 List!14435)) )
))
(declare-datatypes ((TokenValue!2582 0))(
  ( (FloatLiteralValue!5164 (text!18519 List!14435)) (TokenValueExt!2581 (__x!8990 Int)) (Broken!12910 (value!80630 List!14435)) (Object!2647) (End!2582) (Def!2582) (Underscore!2582) (Match!2582) (Else!2582) (Error!2582) (Case!2582) (If!2582) (Extends!2582) (Abstract!2582) (Class!2582) (Val!2582) (DelimiterValue!5164 (del!2642 List!14435)) (KeywordValue!2588 (value!80631 List!14435)) (CommentValue!5164 (value!80632 List!14435)) (WhitespaceValue!5164 (value!80633 List!14435)) (IndentationValue!2582 (value!80634 List!14435)) (String!17147) (Int32!2582) (Broken!12911 (value!80635 List!14435)) (Boolean!2583) (Unit!20747) (OperatorValue!2585 (op!2642 List!14435)) (IdentifierValue!5164 (value!80636 List!14435)) (IdentifierValue!5165 (value!80637 List!14435)) (WhitespaceValue!5165 (value!80638 List!14435)) (True!5164) (False!5164) (Broken!12912 (value!80639 List!14435)) (Broken!12913 (value!80640 List!14435)) (True!5165) (RightBrace!2582) (RightBracket!2582) (Colon!2582) (Null!2582) (Comma!2582) (LeftBracket!2582) (False!5165) (LeftBrace!2582) (ImaginaryLiteralValue!2582 (text!18520 List!14435)) (StringLiteralValue!7746 (value!80641 List!14435)) (EOFValue!2582 (value!80642 List!14435)) (IdentValue!2582 (value!80643 List!14435)) (DelimiterValue!5165 (value!80644 List!14435)) (DedentValue!2582 (value!80645 List!14435)) (NewLineValue!2582 (value!80646 List!14435)) (IntegerValue!7746 (value!80647 (_ BitVec 32)) (text!18521 List!14435)) (IntegerValue!7747 (value!80648 Int) (text!18522 List!14435)) (Times!2582) (Or!2582) (Equal!2582) (Minus!2582) (Broken!12914 (value!80649 List!14435)) (And!2582) (Div!2582) (LessEqual!2582) (Mod!2582) (Concat!6388) (Not!2582) (Plus!2582) (SpaceValue!2582 (value!80650 List!14435)) (IntegerValue!7748 (value!80651 Int) (text!18523 List!14435)) (StringLiteralValue!7747 (text!18524 List!14435)) (FloatLiteralValue!5165 (text!18525 List!14435)) (BytesLiteralValue!2582 (value!80652 List!14435)) (CommentValue!5165 (value!80653 List!14435)) (StringLiteralValue!7748 (value!80654 List!14435)) (ErrorTokenValue!2582 (msg!2643 List!14435)) )
))
(declare-datatypes ((Regex!3806 0))(
  ( (ElementMatch!3806 (c!231617 (_ BitVec 16))) (Concat!6389 (regOne!8124 Regex!3806) (regTwo!8124 Regex!3806)) (EmptyExpr!3806) (Star!3806 (reg!4135 Regex!3806)) (EmptyLang!3806) (Union!3806 (regOne!8125 Regex!3806) (regTwo!8125 Regex!3806)) )
))
(declare-datatypes ((String!17148 0))(
  ( (String!17149 (value!80655 String)) )
))
(declare-datatypes ((IArray!9505 0))(
  ( (IArray!9506 (innerList!4810 List!14435)) )
))
(declare-datatypes ((Conc!4750 0))(
  ( (Node!4750 (left!12270 Conc!4750) (right!12600 Conc!4750) (csize!9730 Int) (cheight!4961 Int)) (Leaf!7193 (xs!7477 IArray!9505) (csize!9731 Int)) (Empty!4750) )
))
(declare-datatypes ((BalanceConc!9440 0))(
  ( (BalanceConc!9441 (c!231618 Conc!4750)) )
))
(declare-datatypes ((TokenValueInjection!4824 0))(
  ( (TokenValueInjection!4825 (toValue!3787 Int) (toChars!3646 Int)) )
))
(declare-datatypes ((Rule!4784 0))(
  ( (Rule!4785 (regex!2492 Regex!3806) (tag!2754 String!17148) (isSeparator!2492 Bool) (transformation!2492 TokenValueInjection!4824)) )
))
(declare-datatypes ((Token!4646 0))(
  ( (Token!4647 (value!80656 TokenValue!2582) (rule!4255 Rule!4784) (size!11829 Int) (originalCharacters!3354 List!14435)) )
))
(declare-datatypes ((List!14436 0))(
  ( (Nil!14370) (Cons!14370 (h!19771 Token!4646) (t!123355 List!14436)) )
))
(declare-datatypes ((IArray!9507 0))(
  ( (IArray!9508 (innerList!4811 List!14436)) )
))
(declare-datatypes ((Conc!4751 0))(
  ( (Node!4751 (left!12271 Conc!4751) (right!12601 Conc!4751) (csize!9732 Int) (cheight!4962 Int)) (Leaf!7194 (xs!7478 IArray!9507) (csize!9733 Int)) (Empty!4751) )
))
(declare-datatypes ((List!14437 0))(
  ( (Nil!14371) (Cons!14371 (h!19772 Rule!4784) (t!123356 List!14437)) )
))
(declare-datatypes ((BalanceConc!9442 0))(
  ( (BalanceConc!9443 (c!231619 Conc!4751)) )
))
(declare-datatypes ((PrintableTokens!766 0))(
  ( (PrintableTokens!767 (rules!10963 List!14437) (tokens!1711 BalanceConc!9442)) )
))
(declare-datatypes ((Option!2751 0))(
  ( (None!2750) (Some!2750 (v!21720 PrintableTokens!766)) )
))
(declare-fun lt!470493 () Option!2751)

(declare-fun acc!229 () PrintableTokens!766)

(declare-datatypes ((List!14438 0))(
  ( (Nil!14372) (Cons!14372 (h!19773 PrintableTokens!766) (t!123357 List!14438)) )
))
(declare-datatypes ((IArray!9509 0))(
  ( (IArray!9510 (innerList!4812 List!14438)) )
))
(declare-datatypes ((Conc!4752 0))(
  ( (Node!4752 (left!12272 Conc!4752) (right!12602 Conc!4752) (csize!9734 Int) (cheight!4963 Int)) (Leaf!7195 (xs!7479 IArray!9509) (csize!9735 Int)) (Empty!4752) )
))
(declare-datatypes ((BalanceConc!9444 0))(
  ( (BalanceConc!9445 (c!231620 Conc!4752)) )
))
(declare-fun objs!24 () BalanceConc!9444)

(declare-fun append!413 (PrintableTokens!766 PrintableTokens!766) Option!2751)

(declare-fun head!2636 (BalanceConc!9444) PrintableTokens!766)

(assert (=> b!1409502 (= lt!470493 (append!413 acc!229 (head!2636 objs!24)))))

(declare-fun b!1409503 () Bool)

(declare-fun e!899840 () Bool)

(declare-fun tp!400213 () Bool)

(declare-fun inv!18707 (Conc!4751) Bool)

(assert (=> b!1409503 (= e!899840 (and (inv!18707 (c!231619 (tokens!1711 acc!229))) tp!400213))))

(declare-fun b!1409504 () Bool)

(declare-fun res!638352 () Bool)

(assert (=> b!1409504 (=> (not res!638352) (not e!899844))))

(declare-fun isEmpty!8759 (BalanceConc!9444) Bool)

(assert (=> b!1409504 (= res!638352 (not (isEmpty!8759 objs!24)))))

(declare-fun b!1409505 () Bool)

(declare-fun e!899839 () Bool)

(declare-fun tp!400211 () Bool)

(declare-fun inv!18708 (Conc!4752) Bool)

(assert (=> b!1409505 (= e!899839 (and (inv!18708 (c!231620 objs!24)) tp!400211))))

(declare-fun b!1409506 () Bool)

(declare-fun res!638356 () Bool)

(assert (=> b!1409506 (=> (not res!638356) (not e!899844))))

(declare-fun sep!3 () PrintableTokens!766)

(declare-fun usesJsonRules!0 (PrintableTokens!766) Bool)

(assert (=> b!1409506 (= res!638356 (usesJsonRules!0 sep!3))))

(declare-fun b!1409507 () Bool)

(declare-fun e!899843 () Bool)

(declare-fun tp!400212 () Bool)

(assert (=> b!1409507 (= e!899843 (and (inv!18707 (c!231619 (tokens!1711 sep!3))) tp!400212))))

(declare-fun b!1409508 () Bool)

(declare-fun res!638355 () Bool)

(assert (=> b!1409508 (=> (not res!638355) (not e!899844))))

(assert (=> b!1409508 (= res!638355 (usesJsonRules!0 acc!229))))

(declare-fun b!1409509 () Bool)

(declare-fun e!899841 () Bool)

(declare-fun tp!400214 () Bool)

(declare-fun inv!18709 (BalanceConc!9442) Bool)

(assert (=> b!1409509 (= e!899841 (and tp!400214 (inv!18709 (tokens!1711 sep!3)) e!899843))))

(declare-fun res!638354 () Bool)

(assert (=> start!128754 (=> (not res!638354) (not e!899844))))

(declare-fun lambda!62328 () Int)

(declare-fun forall!3494 (BalanceConc!9444 Int) Bool)

(assert (=> start!128754 (= res!638354 (forall!3494 objs!24 lambda!62328))))

(assert (=> start!128754 e!899844))

(declare-fun inv!18710 (BalanceConc!9444) Bool)

(assert (=> start!128754 (and (inv!18710 objs!24) e!899839)))

(declare-fun e!899842 () Bool)

(declare-fun inv!18711 (PrintableTokens!766) Bool)

(assert (=> start!128754 (and (inv!18711 acc!229) e!899842)))

(assert (=> start!128754 (and (inv!18711 sep!3) e!899841)))

(declare-fun b!1409510 () Bool)

(declare-fun res!638353 () Bool)

(assert (=> b!1409510 (=> (not res!638353) (not e!899844))))

(declare-fun size!11830 (BalanceConc!9444) Int)

(assert (=> b!1409510 (= res!638353 (= (size!11830 objs!24) 1))))

(declare-fun b!1409511 () Bool)

(declare-fun tp!400215 () Bool)

(assert (=> b!1409511 (= e!899842 (and tp!400215 (inv!18709 (tokens!1711 acc!229)) e!899840))))

(assert (= (and start!128754 res!638354) b!1409508))

(assert (= (and b!1409508 res!638355) b!1409506))

(assert (= (and b!1409506 res!638356) b!1409504))

(assert (= (and b!1409504 res!638352) b!1409510))

(assert (= (and b!1409510 res!638353) b!1409502))

(assert (= start!128754 b!1409505))

(assert (= b!1409511 b!1409503))

(assert (= start!128754 b!1409511))

(assert (= b!1409509 b!1409507))

(assert (= start!128754 b!1409509))

(declare-fun m!1588187 () Bool)

(assert (=> b!1409506 m!1588187))

(declare-fun m!1588189 () Bool)

(assert (=> b!1409510 m!1588189))

(declare-fun m!1588191 () Bool)

(assert (=> b!1409504 m!1588191))

(declare-fun m!1588193 () Bool)

(assert (=> b!1409507 m!1588193))

(declare-fun m!1588195 () Bool)

(assert (=> b!1409509 m!1588195))

(declare-fun m!1588197 () Bool)

(assert (=> b!1409508 m!1588197))

(declare-fun m!1588199 () Bool)

(assert (=> b!1409502 m!1588199))

(assert (=> b!1409502 m!1588199))

(declare-fun m!1588201 () Bool)

(assert (=> b!1409502 m!1588201))

(declare-fun m!1588203 () Bool)

(assert (=> b!1409505 m!1588203))

(declare-fun m!1588205 () Bool)

(assert (=> b!1409511 m!1588205))

(declare-fun m!1588207 () Bool)

(assert (=> start!128754 m!1588207))

(declare-fun m!1588209 () Bool)

(assert (=> start!128754 m!1588209))

(declare-fun m!1588211 () Bool)

(assert (=> start!128754 m!1588211))

(declare-fun m!1588213 () Bool)

(assert (=> start!128754 m!1588213))

(declare-fun m!1588215 () Bool)

(assert (=> b!1409503 m!1588215))

(push 1)

(assert (not b!1409511))

(assert (not start!128754))

(assert (not b!1409510))

(assert (not b!1409506))

(assert (not b!1409508))

(assert (not b!1409502))

(assert (not b!1409509))

(assert (not b!1409503))

(assert (not b!1409507))

(assert (not b!1409504))

(assert (not b!1409505))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

