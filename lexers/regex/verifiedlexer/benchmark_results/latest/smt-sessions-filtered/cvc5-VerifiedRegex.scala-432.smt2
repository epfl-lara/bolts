; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!12768 () Bool)

(assert start!12768)

(declare-fun res!58275 () Bool)

(declare-fun e!72211 () Bool)

(assert (=> start!12768 (=> (not res!58275) (not e!72211))))

(declare-datatypes ((C!2058 0))(
  ( (C!2059 (val!755 Int)) )
))
(declare-datatypes ((Regex!568 0))(
  ( (ElementMatch!568 (c!27637 C!2058)) (Concat!962 (regOne!1648 Regex!568) (regTwo!1648 Regex!568)) (EmptyExpr!568) (Star!568 (reg!897 Regex!568)) (EmptyLang!568) (Union!568 (regOne!1649 Regex!568) (regTwo!1649 Regex!568)) )
))
(declare-fun r!13481 () Regex!568)

(declare-fun validRegex!160 (Regex!568) Bool)

(assert (=> start!12768 (= res!58275 (validRegex!160 r!13481))))

(assert (=> start!12768 e!72211))

(declare-fun e!72212 () Bool)

(assert (=> start!12768 e!72212))

(declare-datatypes ((List!2052 0))(
  ( (Nil!2046) (Cons!2046 (h!7443 C!2058) (t!22620 List!2052)) )
))
(declare-datatypes ((IArray!1149 0))(
  ( (IArray!1150 (innerList!632 List!2052)) )
))
(declare-datatypes ((Conc!574 0))(
  ( (Node!574 (left!1642 Conc!574) (right!1972 Conc!574) (csize!1378 Int) (cheight!785 Int)) (Leaf!1007 (xs!3169 IArray!1149) (csize!1379 Int)) (Empty!574) )
))
(declare-datatypes ((BalanceConc!1152 0))(
  ( (BalanceConc!1153 (c!27638 Conc!574)) )
))
(declare-fun input!6028 () BalanceConc!1152)

(declare-fun e!72210 () Bool)

(declare-fun inv!2627 (BalanceConc!1152) Bool)

(assert (=> start!12768 (and (inv!2627 input!6028) e!72210)))

(declare-fun b!125415 () Bool)

(declare-fun tp!68430 () Bool)

(declare-fun tp!68427 () Bool)

(assert (=> b!125415 (= e!72212 (and tp!68430 tp!68427))))

(declare-fun b!125416 () Bool)

(declare-fun tp!68431 () Bool)

(declare-fun inv!2628 (Conc!574) Bool)

(assert (=> b!125416 (= e!72210 (and (inv!2628 (c!27638 input!6028)) tp!68431))))

(declare-fun b!125417 () Bool)

(declare-fun tp!68426 () Bool)

(assert (=> b!125417 (= e!72212 tp!68426)))

(declare-fun b!125418 () Bool)

(assert (=> b!125418 (= e!72211 (not true))))

(declare-datatypes ((List!2053 0))(
  ( (Nil!2047) (Cons!2047 (h!7444 Regex!568) (t!22621 List!2053)) )
))
(declare-datatypes ((Context!216 0))(
  ( (Context!217 (exprs!608 List!2053)) )
))
(declare-fun lt!37880 () (Set Context!216))

(declare-fun matchZipper!2 ((Set Context!216) List!2052) Bool)

(declare-fun dropList!37 (BalanceConc!1152 Int) List!2052)

(declare-fun matchZipperSequence!2 ((Set Context!216) BalanceConc!1152 Int) Bool)

(assert (=> b!125418 (= (matchZipper!2 lt!37880 (dropList!37 input!6028 0)) (matchZipperSequence!2 lt!37880 input!6028 0))))

(declare-datatypes ((Unit!1607 0))(
  ( (Unit!1608) )
))
(declare-fun lt!37881 () Unit!1607)

(declare-fun lemmaMatchZipperSequenceEquivalent!1 ((Set Context!216) BalanceConc!1152 Int) Unit!1607)

(assert (=> b!125418 (= lt!37881 (lemmaMatchZipperSequenceEquivalent!1 lt!37880 input!6028 0))))

(declare-fun focus!3 (Regex!568) (Set Context!216))

(assert (=> b!125418 (= lt!37880 (focus!3 r!13481))))

(declare-fun b!125419 () Bool)

(declare-fun tp_is_empty!1191 () Bool)

(assert (=> b!125419 (= e!72212 tp_is_empty!1191)))

(declare-fun b!125420 () Bool)

(declare-fun tp!68429 () Bool)

(declare-fun tp!68428 () Bool)

(assert (=> b!125420 (= e!72212 (and tp!68429 tp!68428))))

(assert (= (and start!12768 res!58275) b!125418))

(assert (= (and start!12768 (is-ElementMatch!568 r!13481)) b!125419))

(assert (= (and start!12768 (is-Concat!962 r!13481)) b!125420))

(assert (= (and start!12768 (is-Star!568 r!13481)) b!125417))

(assert (= (and start!12768 (is-Union!568 r!13481)) b!125415))

(assert (= start!12768 b!125416))

(declare-fun m!111071 () Bool)

(assert (=> start!12768 m!111071))

(declare-fun m!111073 () Bool)

(assert (=> start!12768 m!111073))

(declare-fun m!111075 () Bool)

(assert (=> b!125416 m!111075))

(declare-fun m!111077 () Bool)

(assert (=> b!125418 m!111077))

(declare-fun m!111079 () Bool)

(assert (=> b!125418 m!111079))

(declare-fun m!111081 () Bool)

(assert (=> b!125418 m!111081))

(declare-fun m!111083 () Bool)

(assert (=> b!125418 m!111083))

(assert (=> b!125418 m!111077))

(declare-fun m!111085 () Bool)

(assert (=> b!125418 m!111085))

(push 1)

(assert (not b!125417))

(assert (not start!12768))

(assert (not b!125418))

(assert (not b!125420))

(assert (not b!125415))

(assert (not b!125416))

(assert tp_is_empty!1191)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

