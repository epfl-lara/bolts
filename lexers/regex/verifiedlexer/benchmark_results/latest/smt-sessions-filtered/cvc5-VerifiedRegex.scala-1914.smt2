; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!94592 () Bool)

(assert start!94592)

(declare-fun res!488297 () Bool)

(declare-fun e!697072 () Bool)

(assert (=> start!94592 (=> (not res!488297) (not e!697072))))

(declare-datatypes ((List!10611 0))(
  ( (Nil!10595) (Cons!10595 (h!15996 (_ BitVec 16)) (t!103871 List!10611)) )
))
(declare-datatypes ((TokenValue!1883 0))(
  ( (FloatLiteralValue!3766 (text!13626 List!10611)) (TokenValueExt!1882 (__x!7465 Int)) (Broken!9415 (value!59713 List!10611)) (Object!1898) (End!1883) (Def!1883) (Underscore!1883) (Match!1883) (Else!1883) (Error!1883) (Case!1883) (If!1883) (Extends!1883) (Abstract!1883) (Class!1883) (Val!1883) (DelimiterValue!3766 (del!1943 List!10611)) (KeywordValue!1889 (value!59714 List!10611)) (CommentValue!3766 (value!59715 List!10611)) (WhitespaceValue!3766 (value!59716 List!10611)) (IndentationValue!1883 (value!59717 List!10611)) (String!12986) (Int32!1883) (Broken!9416 (value!59718 List!10611)) (Boolean!1884) (Unit!16203) (OperatorValue!1886 (op!1943 List!10611)) (IdentifierValue!3766 (value!59719 List!10611)) (IdentifierValue!3767 (value!59720 List!10611)) (WhitespaceValue!3767 (value!59721 List!10611)) (True!3766) (False!3766) (Broken!9417 (value!59722 List!10611)) (Broken!9418 (value!59723 List!10611)) (True!3767) (RightBrace!1883) (RightBracket!1883) (Colon!1883) (Null!1883) (Comma!1883) (LeftBracket!1883) (False!3767) (LeftBrace!1883) (ImaginaryLiteralValue!1883 (text!13627 List!10611)) (StringLiteralValue!5649 (value!59724 List!10611)) (EOFValue!1883 (value!59725 List!10611)) (IdentValue!1883 (value!59726 List!10611)) (DelimiterValue!3767 (value!59727 List!10611)) (DedentValue!1883 (value!59728 List!10611)) (NewLineValue!1883 (value!59729 List!10611)) (IntegerValue!5649 (value!59730 (_ BitVec 32)) (text!13628 List!10611)) (IntegerValue!5650 (value!59731 Int) (text!13629 List!10611)) (Times!1883) (Or!1883) (Equal!1883) (Minus!1883) (Broken!9419 (value!59732 List!10611)) (And!1883) (Div!1883) (LessEqual!1883) (Mod!1883) (Concat!4969) (Not!1883) (Plus!1883) (SpaceValue!1883 (value!59733 List!10611)) (IntegerValue!5651 (value!59734 Int) (text!13630 List!10611)) (StringLiteralValue!5650 (text!13631 List!10611)) (FloatLiteralValue!3767 (text!13632 List!10611)) (BytesLiteralValue!1883 (value!59735 List!10611)) (CommentValue!3767 (value!59736 List!10611)) (StringLiteralValue!5651 (value!59737 List!10611)) (ErrorTokenValue!1883 (msg!1944 List!10611)) )
))
(declare-datatypes ((Regex!3086 0))(
  ( (ElementMatch!3086 (c!186860 (_ BitVec 16))) (Concat!4970 (regOne!6684 Regex!3086) (regTwo!6684 Regex!3086)) (EmptyExpr!3086) (Star!3086 (reg!3415 Regex!3086)) (EmptyLang!3086) (Union!3086 (regOne!6685 Regex!3086) (regTwo!6685 Regex!3086)) )
))
(declare-datatypes ((String!12987 0))(
  ( (String!12988 (value!59738 String)) )
))
(declare-datatypes ((IArray!6561 0))(
  ( (IArray!6562 (innerList!3338 List!10611)) )
))
(declare-datatypes ((Conc!3278 0))(
  ( (Node!3278 (left!9146 Conc!3278) (right!9476 Conc!3278) (csize!6786 Int) (cheight!3489 Int)) (Leaf!5193 (xs!5971 IArray!6561) (csize!6787 Int)) (Empty!3278) )
))
(declare-datatypes ((BalanceConc!6570 0))(
  ( (BalanceConc!6571 (c!186861 Conc!3278)) )
))
(declare-datatypes ((TokenValueInjection!3466 0))(
  ( (TokenValueInjection!3467 (toValue!2894 Int) (toChars!2753 Int)) )
))
(declare-datatypes ((Rule!3434 0))(
  ( (Rule!3435 (regex!1817 Regex!3086) (tag!2079 String!12987) (isSeparator!1817 Bool) (transformation!1817 TokenValueInjection!3466)) )
))
(declare-datatypes ((Token!3300 0))(
  ( (Token!3301 (value!59739 TokenValue!1883) (rule!3240 Rule!3434) (size!8225 Int) (originalCharacters!2373 List!10611)) )
))
(declare-datatypes ((List!10612 0))(
  ( (Nil!10596) (Cons!10596 (h!15997 Token!3300) (t!103872 List!10612)) )
))
(declare-datatypes ((IArray!6563 0))(
  ( (IArray!6564 (innerList!3339 List!10612)) )
))
(declare-datatypes ((Conc!3279 0))(
  ( (Node!3279 (left!9147 Conc!3279) (right!9477 Conc!3279) (csize!6788 Int) (cheight!3490 Int)) (Leaf!5194 (xs!5972 IArray!6563) (csize!6789 Int)) (Empty!3279) )
))
(declare-datatypes ((List!10613 0))(
  ( (Nil!10597) (Cons!10597 (h!15998 Rule!3434) (t!103873 List!10613)) )
))
(declare-datatypes ((BalanceConc!6572 0))(
  ( (BalanceConc!6573 (c!186862 Conc!3279)) )
))
(declare-datatypes ((PrintableTokens!350 0))(
  ( (PrintableTokens!351 (rules!9104 List!10613) (tokens!1376 BalanceConc!6572)) )
))
(declare-datatypes ((tuple2!11760 0))(
  ( (tuple2!11761 (_1!6706 Int) (_2!6706 PrintableTokens!350)) )
))
(declare-datatypes ((List!10614 0))(
  ( (Nil!10598) (Cons!10598 (h!15999 tuple2!11760) (t!103874 List!10614)) )
))
(declare-datatypes ((IArray!6565 0))(
  ( (IArray!6566 (innerList!3340 List!10614)) )
))
(declare-datatypes ((Conc!3280 0))(
  ( (Node!3280 (left!9148 Conc!3280) (right!9478 Conc!3280) (csize!6790 Int) (cheight!3491 Int)) (Leaf!5195 (xs!5973 IArray!6565) (csize!6791 Int)) (Empty!3280) )
))
(declare-datatypes ((BalanceConc!6574 0))(
  ( (BalanceConc!6575 (c!186863 Conc!3280)) )
))
(declare-fun objs!8 () BalanceConc!6574)

(declare-fun lambda!43247 () Int)

(declare-fun forall!2435 (BalanceConc!6574 Int) Bool)

(assert (=> start!94592 (= res!488297 (forall!2435 objs!8 lambda!43247))))

(assert (=> start!94592 e!697072))

(declare-fun e!697071 () Bool)

(declare-fun inv!13623 (BalanceConc!6574) Bool)

(assert (=> start!94592 (and (inv!13623 objs!8) e!697071)))

(declare-fun b!1100738 () Bool)

(declare-fun res!488296 () Bool)

(assert (=> b!1100738 (=> (not res!488296) (not e!697072))))

(declare-fun size!8226 (BalanceConc!6574) Int)

(assert (=> b!1100738 (= res!488296 (<= (size!8226 objs!8) 1))))

(declare-fun b!1100739 () Bool)

(assert (=> b!1100739 (= e!697072 (not (forall!2435 objs!8 lambda!43247)))))

(declare-fun b!1100740 () Bool)

(declare-fun tp!326981 () Bool)

(declare-fun inv!13624 (Conc!3280) Bool)

(assert (=> b!1100740 (= e!697071 (and (inv!13624 (c!186863 objs!8)) tp!326981))))

(assert (= (and start!94592 res!488297) b!1100738))

(assert (= (and b!1100738 res!488296) b!1100739))

(assert (= start!94592 b!1100740))

(declare-fun m!1256687 () Bool)

(assert (=> start!94592 m!1256687))

(declare-fun m!1256689 () Bool)

(assert (=> start!94592 m!1256689))

(declare-fun m!1256691 () Bool)

(assert (=> b!1100738 m!1256691))

(assert (=> b!1100739 m!1256687))

(declare-fun m!1256693 () Bool)

(assert (=> b!1100740 m!1256693))

(push 1)

(assert (not start!94592))

(assert (not b!1100738))

(assert (not b!1100739))

(assert (not b!1100740))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

