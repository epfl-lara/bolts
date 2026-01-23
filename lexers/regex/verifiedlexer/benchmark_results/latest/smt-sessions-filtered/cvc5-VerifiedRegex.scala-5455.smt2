; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!277026 () Bool)

(assert start!277026)

(declare-fun b!2845459 () Bool)

(declare-fun e!1802860 () Bool)

(assert (=> b!2845459 (= e!1802860 (not true))))

(declare-datatypes ((C!17110 0))(
  ( (C!17111 (val!10589 Int)) )
))
(declare-datatypes ((Regex!8464 0))(
  ( (ElementMatch!8464 (c!459196 C!17110)) (Concat!13767 (regOne!17440 Regex!8464) (regTwo!17440 Regex!8464)) (EmptyExpr!8464) (Star!8464 (reg!8793 Regex!8464)) (EmptyLang!8464) (Union!8464 (regOne!17441 Regex!8464) (regTwo!17441 Regex!8464)) )
))
(declare-datatypes ((List!33853 0))(
  ( (Nil!33729) (Cons!33729 (h!39149 Regex!8464) (t!232876 List!33853)) )
))
(declare-datatypes ((Context!4984 0))(
  ( (Context!4985 (exprs!2992 List!33853)) )
))
(declare-fun lt!1012444 () (Set Context!4984))

(declare-datatypes ((List!33854 0))(
  ( (Nil!33730) (Cons!33730 (h!39150 C!17110) (t!232877 List!33854)) )
))
(declare-datatypes ((IArray!20925 0))(
  ( (IArray!20926 (innerList!10520 List!33854)) )
))
(declare-datatypes ((Conc!10460 0))(
  ( (Node!10460 (left!25409 Conc!10460) (right!25739 Conc!10460) (csize!21150 Int) (cheight!10671 Int)) (Leaf!15916 (xs!13578 IArray!20925) (csize!21151 Int)) (Empty!10460) )
))
(declare-datatypes ((BalanceConc!20558 0))(
  ( (BalanceConc!20559 (c!459197 Conc!10460)) )
))
(declare-fun prefix!1325 () BalanceConc!20558)

(declare-fun prefixMatchZipper!226 ((Set Context!4984) List!33854) Bool)

(declare-fun dropList!1011 (BalanceConc!20558 Int) List!33854)

(declare-fun prefixMatchZipperSequence!747 ((Set Context!4984) BalanceConc!20558 Int) Bool)

(assert (=> b!2845459 (= (prefixMatchZipper!226 lt!1012444 (dropList!1011 prefix!1325 0)) (prefixMatchZipperSequence!747 lt!1012444 prefix!1325 0))))

(declare-datatypes ((Unit!47523 0))(
  ( (Unit!47524) )
))
(declare-fun lt!1012443 () Unit!47523)

(declare-fun lemmaprefixMatchZipperSequenceEquivalent!226 ((Set Context!4984) BalanceConc!20558 Int) Unit!47523)

(assert (=> b!2845459 (= lt!1012443 (lemmaprefixMatchZipperSequenceEquivalent!226 lt!1012444 prefix!1325 0))))

(declare-fun r!13354 () Regex!8464)

(declare-fun focus!296 (Regex!8464) (Set Context!4984))

(assert (=> b!2845459 (= lt!1012444 (focus!296 r!13354))))

(declare-fun b!2845460 () Bool)

(declare-fun e!1802859 () Bool)

(declare-fun tp!912262 () Bool)

(declare-fun tp!912266 () Bool)

(assert (=> b!2845460 (= e!1802859 (and tp!912262 tp!912266))))

(declare-fun b!2845461 () Bool)

(declare-fun tp_is_empty!14691 () Bool)

(assert (=> b!2845461 (= e!1802859 tp_is_empty!14691)))

(declare-fun b!2845462 () Bool)

(declare-fun e!1802861 () Bool)

(declare-fun tp!912265 () Bool)

(declare-fun inv!45735 (Conc!10460) Bool)

(assert (=> b!2845462 (= e!1802861 (and (inv!45735 (c!459197 prefix!1325)) tp!912265))))

(declare-fun b!2845463 () Bool)

(declare-fun tp!912267 () Bool)

(declare-fun tp!912264 () Bool)

(assert (=> b!2845463 (= e!1802859 (and tp!912267 tp!912264))))

(declare-fun b!2845458 () Bool)

(declare-fun tp!912263 () Bool)

(assert (=> b!2845458 (= e!1802859 tp!912263)))

(declare-fun res!1183484 () Bool)

(assert (=> start!277026 (=> (not res!1183484) (not e!1802860))))

(declare-fun validRegex!3357 (Regex!8464) Bool)

(assert (=> start!277026 (= res!1183484 (validRegex!3357 r!13354))))

(assert (=> start!277026 e!1802860))

(assert (=> start!277026 e!1802859))

(declare-fun inv!45736 (BalanceConc!20558) Bool)

(assert (=> start!277026 (and (inv!45736 prefix!1325) e!1802861)))

(assert (= (and start!277026 res!1183484) b!2845459))

(assert (= (and start!277026 (is-ElementMatch!8464 r!13354)) b!2845461))

(assert (= (and start!277026 (is-Concat!13767 r!13354)) b!2845460))

(assert (= (and start!277026 (is-Star!8464 r!13354)) b!2845458))

(assert (= (and start!277026 (is-Union!8464 r!13354)) b!2845463))

(assert (= start!277026 b!2845462))

(declare-fun m!3273385 () Bool)

(assert (=> b!2845459 m!3273385))

(declare-fun m!3273387 () Bool)

(assert (=> b!2845459 m!3273387))

(declare-fun m!3273389 () Bool)

(assert (=> b!2845459 m!3273389))

(declare-fun m!3273391 () Bool)

(assert (=> b!2845459 m!3273391))

(assert (=> b!2845459 m!3273389))

(declare-fun m!3273393 () Bool)

(assert (=> b!2845459 m!3273393))

(declare-fun m!3273395 () Bool)

(assert (=> b!2845462 m!3273395))

(declare-fun m!3273397 () Bool)

(assert (=> start!277026 m!3273397))

(declare-fun m!3273399 () Bool)

(assert (=> start!277026 m!3273399))

(push 1)

(assert (not b!2845462))

(assert (not b!2845458))

(assert (not b!2845463))

(assert tp_is_empty!14691)

(assert (not start!277026))

(assert (not b!2845460))

(assert (not b!2845459))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

