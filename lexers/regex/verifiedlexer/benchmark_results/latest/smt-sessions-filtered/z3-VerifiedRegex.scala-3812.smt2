; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!212498 () Bool)

(assert start!212498)

(declare-fun b!2190598 () Bool)

(declare-fun e!1399849 () Bool)

(declare-fun e!1399855 () Bool)

(assert (=> b!2190598 (= e!1399849 e!1399855)))

(declare-fun res!941349 () Bool)

(assert (=> b!2190598 (=> (not res!941349) (not e!1399855))))

(declare-fun lt!818479 () Int)

(declare-fun lt!818482 () Int)

(assert (=> b!2190598 (= res!941349 (= lt!818479 lt!818482))))

(declare-datatypes ((C!12328 0))(
  ( (C!12329 (val!7150 Int)) )
))
(declare-datatypes ((List!25455 0))(
  ( (Nil!25371) (Cons!25371 (h!30772 C!12328) (t!198053 List!25455)) )
))
(declare-datatypes ((IArray!16459 0))(
  ( (IArray!16460 (innerList!8287 List!25455)) )
))
(declare-datatypes ((Conc!8227 0))(
  ( (Node!8227 (left!19467 Conc!8227) (right!19797 Conc!8227) (csize!16684 Int) (cheight!8438 Int)) (Leaf!12040 (xs!11169 IArray!16459) (csize!16685 Int)) (Empty!8227) )
))
(declare-datatypes ((BalanceConc!16216 0))(
  ( (BalanceConc!16217 (c!348470 Conc!8227)) )
))
(declare-fun totalInput!923 () BalanceConc!16216)

(declare-fun lt!818480 () Int)

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((Regex!6091 0))(
  ( (ElementMatch!6091 (c!348471 C!12328)) (Concat!10393 (regOne!12694 Regex!6091) (regTwo!12694 Regex!6091)) (EmptyExpr!6091) (Star!6091 (reg!6420 Regex!6091)) (EmptyLang!6091) (Union!6091 (regOne!12695 Regex!6091) (regTwo!12695 Regex!6091)) )
))
(declare-datatypes ((List!25456 0))(
  ( (Nil!25372) (Cons!25372 (h!30773 Regex!6091) (t!198054 List!25456)) )
))
(declare-datatypes ((Context!3322 0))(
  ( (Context!3323 (exprs!2161 List!25456)) )
))
(declare-fun lt!818481 () (InoxSet Context!3322))

(declare-fun from!1114 () Int)

(declare-fun lt!818486 () Int)

(declare-fun furthestNullablePosition!261 ((InoxSet Context!3322) Int BalanceConc!16216 Int Int) Int)

(assert (=> b!2190598 (= lt!818482 (furthestNullablePosition!261 lt!818481 (+ 1 from!1114) totalInput!923 lt!818480 lt!818486))))

(declare-fun lastNullablePos!193 () Int)

(declare-fun z!3955 () (InoxSet Context!3322))

(assert (=> b!2190598 (= lt!818479 (furthestNullablePosition!261 z!3955 from!1114 totalInput!923 lt!818480 lastNullablePos!193))))

(declare-fun lt!818484 () Bool)

(assert (=> b!2190598 (= lt!818486 (ite lt!818484 from!1114 lastNullablePos!193))))

(declare-fun nullableZipper!371 ((InoxSet Context!3322)) Bool)

(assert (=> b!2190598 (= lt!818484 (nullableZipper!371 lt!818481))))

(declare-fun derivationStepZipper!168 ((InoxSet Context!3322) C!12328) (InoxSet Context!3322))

(declare-fun apply!6124 (BalanceConc!16216 Int) C!12328)

(assert (=> b!2190598 (= lt!818481 (derivationStepZipper!168 z!3955 (apply!6124 totalInput!923 from!1114)))))

(declare-fun b!2190599 () Bool)

(declare-fun e!1399851 () Bool)

(assert (=> b!2190599 (= e!1399851 e!1399849)))

(declare-fun res!941348 () Bool)

(assert (=> b!2190599 (=> (not res!941348) (not e!1399849))))

(assert (=> b!2190599 (= res!941348 (and (<= from!1114 lt!818480) (>= lastNullablePos!193 (- 1)) (< lastNullablePos!193 from!1114)))))

(declare-fun size!19807 (BalanceConc!16216) Int)

(assert (=> b!2190599 (= lt!818480 (size!19807 totalInput!923))))

(declare-fun b!2190600 () Bool)

(declare-fun res!941350 () Bool)

(assert (=> b!2190600 (=> (not res!941350) (not e!1399849))))

(declare-fun e!1399854 () Bool)

(assert (=> b!2190600 (= res!941350 e!1399854)))

(declare-fun res!941351 () Bool)

(assert (=> b!2190600 (=> res!941351 e!1399854)))

(assert (=> b!2190600 (= res!941351 (not (nullableZipper!371 z!3955)))))

(declare-fun b!2190601 () Bool)

(declare-fun res!941353 () Bool)

(assert (=> b!2190601 (=> (not res!941353) (not e!1399849))))

(declare-fun lostCauseZipper!209 ((InoxSet Context!3322)) Bool)

(assert (=> b!2190601 (= res!941353 (not (lostCauseZipper!209 z!3955)))))

(declare-fun b!2190602 () Bool)

(assert (=> b!2190602 (= e!1399854 (= lastNullablePos!193 (- from!1114 1)))))

(declare-fun b!2190603 () Bool)

(declare-fun e!1399852 () Bool)

(declare-fun tp!682910 () Bool)

(assert (=> b!2190603 (= e!1399852 tp!682910)))

(declare-fun res!941354 () Bool)

(assert (=> start!212498 (=> (not res!941354) (not e!1399851))))

(assert (=> start!212498 (= res!941354 (>= from!1114 0))))

(assert (=> start!212498 e!1399851))

(assert (=> start!212498 true))

(declare-fun e!1399853 () Bool)

(declare-fun inv!33810 (BalanceConc!16216) Bool)

(assert (=> start!212498 (and (inv!33810 totalInput!923) e!1399853)))

(declare-fun condSetEmpty!18498 () Bool)

(assert (=> start!212498 (= condSetEmpty!18498 (= z!3955 ((as const (Array Context!3322 Bool)) false)))))

(declare-fun setRes!18498 () Bool)

(assert (=> start!212498 setRes!18498))

(declare-fun setElem!18498 () Context!3322)

(declare-fun setNonEmpty!18498 () Bool)

(declare-fun tp!682911 () Bool)

(declare-fun inv!33811 (Context!3322) Bool)

(assert (=> setNonEmpty!18498 (= setRes!18498 (and tp!682911 (inv!33811 setElem!18498) e!1399852))))

(declare-fun setRest!18498 () (InoxSet Context!3322))

(assert (=> setNonEmpty!18498 (= z!3955 ((_ map or) (store ((as const (Array Context!3322 Bool)) false) setElem!18498 true) setRest!18498))))

(declare-fun lt!818483 () Int)

(declare-fun b!2190604 () Bool)

(assert (=> b!2190604 (= e!1399855 (not (or (> lt!818483 0) (< (+ 1 from!1114) 0) (> (+ 1 from!1114) lt!818480) (< lt!818486 (- 1)) (>= lt!818486 (+ 1 from!1114)) (not lt!818484) (= lt!818486 from!1114))))))

(declare-fun e!1399850 () Bool)

(assert (=> b!2190604 e!1399850))

(declare-fun res!941352 () Bool)

(assert (=> b!2190604 (=> res!941352 e!1399850)))

(assert (=> b!2190604 (= res!941352 (<= lt!818483 0))))

(assert (=> b!2190604 (= lt!818483 (+ 1 (- lt!818482 (+ 1 from!1114))))))

(declare-datatypes ((Unit!38477 0))(
  ( (Unit!38478) )
))
(declare-fun lt!818485 () Unit!38477)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmptyRecV3!96 ((InoxSet Context!3322) Int BalanceConc!16216 Int) Unit!38477)

(assert (=> b!2190604 (= lt!818485 (longestMatchIsAcceptedByMatchOrIsEmptyRecV3!96 lt!818481 (+ 1 from!1114) totalInput!923 lt!818486))))

(declare-fun b!2190605 () Bool)

(declare-fun matchZipper!191 ((InoxSet Context!3322) List!25455) Bool)

(declare-fun take!283 (List!25455 Int) List!25455)

(declare-fun drop!1293 (List!25455 Int) List!25455)

(declare-fun list!9738 (BalanceConc!16216) List!25455)

(assert (=> b!2190605 (= e!1399850 (matchZipper!191 lt!818481 (take!283 (drop!1293 (list!9738 totalInput!923) (+ 1 from!1114)) lt!818483)))))

(declare-fun setIsEmpty!18498 () Bool)

(assert (=> setIsEmpty!18498 setRes!18498))

(declare-fun b!2190606 () Bool)

(declare-fun tp!682912 () Bool)

(declare-fun inv!33812 (Conc!8227) Bool)

(assert (=> b!2190606 (= e!1399853 (and (inv!33812 (c!348470 totalInput!923)) tp!682912))))

(declare-fun b!2190607 () Bool)

(declare-fun res!941355 () Bool)

(assert (=> b!2190607 (=> (not res!941355) (not e!1399849))))

(assert (=> b!2190607 (= res!941355 (not (= from!1114 lt!818480)))))

(assert (= (and start!212498 res!941354) b!2190599))

(assert (= (and b!2190599 res!941348) b!2190600))

(assert (= (and b!2190600 (not res!941351)) b!2190602))

(assert (= (and b!2190600 res!941350) b!2190607))

(assert (= (and b!2190607 res!941355) b!2190601))

(assert (= (and b!2190601 res!941353) b!2190598))

(assert (= (and b!2190598 res!941349) b!2190604))

(assert (= (and b!2190604 (not res!941352)) b!2190605))

(assert (= start!212498 b!2190606))

(assert (= (and start!212498 condSetEmpty!18498) setIsEmpty!18498))

(assert (= (and start!212498 (not condSetEmpty!18498)) setNonEmpty!18498))

(assert (= setNonEmpty!18498 b!2190603))

(declare-fun m!2633475 () Bool)

(assert (=> b!2190606 m!2633475))

(declare-fun m!2633477 () Bool)

(assert (=> b!2190605 m!2633477))

(assert (=> b!2190605 m!2633477))

(declare-fun m!2633479 () Bool)

(assert (=> b!2190605 m!2633479))

(assert (=> b!2190605 m!2633479))

(declare-fun m!2633481 () Bool)

(assert (=> b!2190605 m!2633481))

(assert (=> b!2190605 m!2633481))

(declare-fun m!2633483 () Bool)

(assert (=> b!2190605 m!2633483))

(declare-fun m!2633485 () Bool)

(assert (=> b!2190601 m!2633485))

(declare-fun m!2633487 () Bool)

(assert (=> setNonEmpty!18498 m!2633487))

(declare-fun m!2633489 () Bool)

(assert (=> b!2190600 m!2633489))

(declare-fun m!2633491 () Bool)

(assert (=> start!212498 m!2633491))

(declare-fun m!2633493 () Bool)

(assert (=> b!2190598 m!2633493))

(declare-fun m!2633495 () Bool)

(assert (=> b!2190598 m!2633495))

(assert (=> b!2190598 m!2633495))

(declare-fun m!2633497 () Bool)

(assert (=> b!2190598 m!2633497))

(declare-fun m!2633499 () Bool)

(assert (=> b!2190598 m!2633499))

(declare-fun m!2633501 () Bool)

(assert (=> b!2190598 m!2633501))

(declare-fun m!2633503 () Bool)

(assert (=> b!2190599 m!2633503))

(declare-fun m!2633505 () Bool)

(assert (=> b!2190604 m!2633505))

(check-sat (not b!2190600) (not setNonEmpty!18498) (not b!2190606) (not b!2190599) (not b!2190601) (not b!2190603) (not b!2190598) (not start!212498) (not b!2190605) (not b!2190604))
(check-sat)
