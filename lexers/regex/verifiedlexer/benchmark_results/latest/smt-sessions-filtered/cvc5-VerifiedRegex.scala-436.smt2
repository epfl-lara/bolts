; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!12836 () Bool)

(assert start!12836)

(declare-fun b!125849 () Bool)

(declare-fun e!72444 () Bool)

(assert (=> b!125849 (= e!72444 (not true))))

(declare-fun lt!38023 () Bool)

(declare-datatypes ((C!2074 0))(
  ( (C!2075 (val!763 Int)) )
))
(declare-datatypes ((Regex!576 0))(
  ( (ElementMatch!576 (c!27703 C!2074)) (Concat!970 (regOne!1664 Regex!576) (regTwo!1664 Regex!576)) (EmptyExpr!576) (Star!576 (reg!905 Regex!576)) (EmptyLang!576) (Union!576 (regOne!1665 Regex!576) (regTwo!1665 Regex!576)) )
))
(declare-datatypes ((List!2074 0))(
  ( (Nil!2068) (Cons!2068 (h!7465 Regex!576) (t!22642 List!2074)) )
))
(declare-datatypes ((Context!232 0))(
  ( (Context!233 (exprs!616 List!2074)) )
))
(declare-fun lt!38021 () (Set Context!232))

(declare-datatypes ((List!2075 0))(
  ( (Nil!2069) (Cons!2069 (h!7466 C!2074) (t!22643 List!2075)) )
))
(declare-datatypes ((IArray!1165 0))(
  ( (IArray!1166 (innerList!640 List!2075)) )
))
(declare-datatypes ((Conc!582 0))(
  ( (Node!582 (left!1654 Conc!582) (right!1984 Conc!582) (csize!1394 Int) (cheight!793 Int)) (Leaf!1019 (xs!3177 IArray!1165) (csize!1395 Int)) (Empty!582) )
))
(declare-datatypes ((BalanceConc!1168 0))(
  ( (BalanceConc!1169 (c!27704 Conc!582)) )
))
(declare-fun input!6028 () BalanceConc!1168)

(declare-fun matchZipperSequence!10 ((Set Context!232) BalanceConc!1168 Int) Bool)

(assert (=> b!125849 (= lt!38023 (matchZipperSequence!10 lt!38021 input!6028 0))))

(declare-fun r!13481 () Regex!576)

(declare-fun lt!38024 () List!2075)

(declare-fun matchR!54 (Regex!576 List!2075) Bool)

(declare-fun matchZipper!10 ((Set Context!232) List!2075) Bool)

(assert (=> b!125849 (= (matchR!54 r!13481 lt!38024) (matchZipper!10 lt!38021 lt!38024))))

(declare-datatypes ((List!2076 0))(
  ( (Nil!2070) (Cons!2070 (h!7467 Context!232) (t!22644 List!2076)) )
))
(declare-fun lt!38025 () List!2076)

(declare-datatypes ((Unit!1623 0))(
  ( (Unit!1624) )
))
(declare-fun lt!38020 () Unit!1623)

(declare-fun theoremZipperRegexEquiv!5 ((Set Context!232) List!2076 Regex!576 List!2075) Unit!1623)

(assert (=> b!125849 (= lt!38020 (theoremZipperRegexEquiv!5 lt!38021 lt!38025 r!13481 lt!38024))))

(declare-fun list!800 (BalanceConc!1168) List!2075)

(assert (=> b!125849 (= lt!38024 (list!800 input!6028))))

(declare-fun toList!276 ((Set Context!232)) List!2076)

(assert (=> b!125849 (= lt!38025 (toList!276 lt!38021))))

(declare-fun dropList!45 (BalanceConc!1168 Int) List!2075)

(assert (=> b!125849 (= (matchZipper!10 lt!38021 (dropList!45 input!6028 0)) (matchZipperSequence!10 lt!38021 input!6028 0))))

(declare-fun lt!38022 () Unit!1623)

(declare-fun lemmaMatchZipperSequenceEquivalent!9 ((Set Context!232) BalanceConc!1168 Int) Unit!1623)

(assert (=> b!125849 (= lt!38022 (lemmaMatchZipperSequenceEquivalent!9 lt!38021 input!6028 0))))

(declare-fun focus!11 (Regex!576) (Set Context!232))

(assert (=> b!125849 (= lt!38021 (focus!11 r!13481))))

(declare-fun b!125850 () Bool)

(declare-fun e!72442 () Bool)

(declare-fun tp!68660 () Bool)

(declare-fun tp!68658 () Bool)

(assert (=> b!125850 (= e!72442 (and tp!68660 tp!68658))))

(declare-fun b!125851 () Bool)

(declare-fun e!72443 () Bool)

(declare-fun tp!68661 () Bool)

(declare-fun inv!2660 (Conc!582) Bool)

(assert (=> b!125851 (= e!72443 (and (inv!2660 (c!27704 input!6028)) tp!68661))))

(declare-fun b!125853 () Bool)

(declare-fun tp!68662 () Bool)

(assert (=> b!125853 (= e!72442 tp!68662)))

(declare-fun b!125854 () Bool)

(declare-fun tp!68659 () Bool)

(declare-fun tp!68663 () Bool)

(assert (=> b!125854 (= e!72442 (and tp!68659 tp!68663))))

(declare-fun res!58409 () Bool)

(assert (=> start!12836 (=> (not res!58409) (not e!72444))))

(declare-fun validRegex!168 (Regex!576) Bool)

(assert (=> start!12836 (= res!58409 (validRegex!168 r!13481))))

(assert (=> start!12836 e!72444))

(assert (=> start!12836 e!72442))

(declare-fun inv!2661 (BalanceConc!1168) Bool)

(assert (=> start!12836 (and (inv!2661 input!6028) e!72443)))

(declare-fun b!125852 () Bool)

(declare-fun tp_is_empty!1207 () Bool)

(assert (=> b!125852 (= e!72442 tp_is_empty!1207)))

(assert (= (and start!12836 res!58409) b!125849))

(assert (= (and start!12836 (is-ElementMatch!576 r!13481)) b!125852))

(assert (= (and start!12836 (is-Concat!970 r!13481)) b!125854))

(assert (= (and start!12836 (is-Star!576 r!13481)) b!125853))

(assert (= (and start!12836 (is-Union!576 r!13481)) b!125850))

(assert (= start!12836 b!125851))

(declare-fun m!111411 () Bool)

(assert (=> b!125849 m!111411))

(declare-fun m!111413 () Bool)

(assert (=> b!125849 m!111413))

(declare-fun m!111415 () Bool)

(assert (=> b!125849 m!111415))

(declare-fun m!111417 () Bool)

(assert (=> b!125849 m!111417))

(declare-fun m!111419 () Bool)

(assert (=> b!125849 m!111419))

(declare-fun m!111421 () Bool)

(assert (=> b!125849 m!111421))

(declare-fun m!111423 () Bool)

(assert (=> b!125849 m!111423))

(declare-fun m!111425 () Bool)

(assert (=> b!125849 m!111425))

(declare-fun m!111427 () Bool)

(assert (=> b!125849 m!111427))

(assert (=> b!125849 m!111411))

(declare-fun m!111429 () Bool)

(assert (=> b!125849 m!111429))

(declare-fun m!111431 () Bool)

(assert (=> b!125851 m!111431))

(declare-fun m!111433 () Bool)

(assert (=> start!12836 m!111433))

(declare-fun m!111435 () Bool)

(assert (=> start!12836 m!111435))

(push 1)

(assert tp_is_empty!1207)

(assert (not b!125851))

(assert (not b!125854))

(assert (not b!125849))

(assert (not start!12836))

(assert (not b!125853))

(assert (not b!125850))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

