; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!12904 () Bool)

(assert start!12904)

(declare-fun res!58567 () Bool)

(declare-fun e!72708 () Bool)

(assert (=> start!12904 (=> (not res!58567) (not e!72708))))

(declare-datatypes ((C!2082 0))(
  ( (C!2083 (val!767 Int)) )
))
(declare-datatypes ((Regex!580 0))(
  ( (ElementMatch!580 (c!27747 C!2082)) (Concat!974 (regOne!1672 Regex!580) (regTwo!1672 Regex!580)) (EmptyExpr!580) (Star!580 (reg!909 Regex!580)) (EmptyLang!580) (Union!580 (regOne!1673 Regex!580) (regTwo!1673 Regex!580)) )
))
(declare-fun r!13481 () Regex!580)

(declare-fun validRegex!172 (Regex!580) Bool)

(assert (=> start!12904 (= res!58567 (validRegex!172 r!13481))))

(assert (=> start!12904 e!72708))

(declare-fun e!72707 () Bool)

(assert (=> start!12904 e!72707))

(declare-datatypes ((List!2086 0))(
  ( (Nil!2080) (Cons!2080 (h!7477 C!2082) (t!22658 List!2086)) )
))
(declare-datatypes ((IArray!1173 0))(
  ( (IArray!1174 (innerList!644 List!2086)) )
))
(declare-datatypes ((Conc!586 0))(
  ( (Node!586 (left!1660 Conc!586) (right!1990 Conc!586) (csize!1402 Int) (cheight!797 Int)) (Leaf!1025 (xs!3181 IArray!1173) (csize!1403 Int)) (Empty!586) )
))
(declare-datatypes ((BalanceConc!1176 0))(
  ( (BalanceConc!1177 (c!27748 Conc!586)) )
))
(declare-fun input!6028 () BalanceConc!1176)

(declare-fun e!72706 () Bool)

(declare-fun inv!2680 (BalanceConc!1176) Bool)

(assert (=> start!12904 (and (inv!2680 input!6028) e!72706)))

(declare-fun b!126441 () Bool)

(declare-fun tp!69088 () Bool)

(declare-fun tp!69090 () Bool)

(assert (=> b!126441 (= e!72707 (and tp!69088 tp!69090))))

(declare-fun b!126442 () Bool)

(declare-fun tp!69086 () Bool)

(assert (=> b!126442 (= e!72707 tp!69086)))

(declare-fun b!126443 () Bool)

(assert (=> b!126443 (= e!72708 (not true))))

(declare-fun lt!38091 () List!2086)

(declare-fun list!808 (BalanceConc!1176) List!2086)

(assert (=> b!126443 (= lt!38091 (list!808 input!6028))))

(declare-datatypes ((List!2087 0))(
  ( (Nil!2081) (Cons!2081 (h!7478 Regex!580) (t!22659 List!2087)) )
))
(declare-datatypes ((Context!240 0))(
  ( (Context!241 (exprs!620 List!2087)) )
))
(declare-datatypes ((List!2088 0))(
  ( (Nil!2082) (Cons!2082 (h!7479 Context!240) (t!22660 List!2088)) )
))
(declare-fun lt!38090 () List!2088)

(declare-fun lt!38088 () (Set Context!240))

(declare-fun toList!280 ((Set Context!240)) List!2088)

(assert (=> b!126443 (= lt!38090 (toList!280 lt!38088))))

(declare-fun matchZipper!12 ((Set Context!240) List!2086) Bool)

(declare-fun dropList!47 (BalanceConc!1176 Int) List!2086)

(declare-fun matchZipperSequence!12 ((Set Context!240) BalanceConc!1176 Int) Bool)

(assert (=> b!126443 (= (matchZipper!12 lt!38088 (dropList!47 input!6028 0)) (matchZipperSequence!12 lt!38088 input!6028 0))))

(declare-datatypes ((Unit!1627 0))(
  ( (Unit!1628) )
))
(declare-fun lt!38089 () Unit!1627)

(declare-fun lemmaMatchZipperSequenceEquivalent!11 ((Set Context!240) BalanceConc!1176 Int) Unit!1627)

(assert (=> b!126443 (= lt!38089 (lemmaMatchZipperSequenceEquivalent!11 lt!38088 input!6028 0))))

(declare-fun focus!15 (Regex!580) (Set Context!240))

(assert (=> b!126443 (= lt!38088 (focus!15 r!13481))))

(declare-fun b!126444 () Bool)

(declare-fun tp!69091 () Bool)

(declare-fun inv!2681 (Conc!586) Bool)

(assert (=> b!126444 (= e!72706 (and (inv!2681 (c!27748 input!6028)) tp!69091))))

(declare-fun b!126445 () Bool)

(declare-fun tp!69089 () Bool)

(declare-fun tp!69087 () Bool)

(assert (=> b!126445 (= e!72707 (and tp!69089 tp!69087))))

(declare-fun b!126446 () Bool)

(declare-fun tp_is_empty!1215 () Bool)

(assert (=> b!126446 (= e!72707 tp_is_empty!1215)))

(assert (= (and start!12904 res!58567) b!126443))

(assert (= (and start!12904 (is-ElementMatch!580 r!13481)) b!126446))

(assert (= (and start!12904 (is-Concat!974 r!13481)) b!126441))

(assert (= (and start!12904 (is-Star!580 r!13481)) b!126442))

(assert (= (and start!12904 (is-Union!580 r!13481)) b!126445))

(assert (= start!12904 b!126444))

(declare-fun m!111695 () Bool)

(assert (=> start!12904 m!111695))

(declare-fun m!111697 () Bool)

(assert (=> start!12904 m!111697))

(declare-fun m!111699 () Bool)

(assert (=> b!126443 m!111699))

(declare-fun m!111701 () Bool)

(assert (=> b!126443 m!111701))

(declare-fun m!111703 () Bool)

(assert (=> b!126443 m!111703))

(declare-fun m!111705 () Bool)

(assert (=> b!126443 m!111705))

(declare-fun m!111707 () Bool)

(assert (=> b!126443 m!111707))

(assert (=> b!126443 m!111703))

(declare-fun m!111709 () Bool)

(assert (=> b!126443 m!111709))

(declare-fun m!111711 () Bool)

(assert (=> b!126443 m!111711))

(declare-fun m!111713 () Bool)

(assert (=> b!126444 m!111713))

(push 1)

(assert (not b!126442))

(assert (not b!126444))

(assert tp_is_empty!1215)

(assert (not b!126441))

(assert (not b!126443))

(assert (not b!126445))

(assert (not start!12904))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

