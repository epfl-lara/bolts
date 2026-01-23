; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!212718 () Bool)

(assert start!212718)

(declare-fun b!2193090 () Bool)

(declare-fun e!1401550 () Bool)

(declare-fun tp!683486 () Bool)

(assert (=> b!2193090 (= e!1401550 tp!683486)))

(declare-fun res!942845 () Bool)

(declare-fun e!1401551 () Bool)

(assert (=> start!212718 (=> (not res!942845) (not e!1401551))))

(declare-fun from!1114 () Int)

(assert (=> start!212718 (= res!942845 (>= from!1114 0))))

(assert (=> start!212718 e!1401551))

(assert (=> start!212718 true))

(declare-datatypes ((C!12428 0))(
  ( (C!12429 (val!7200 Int)) )
))
(declare-datatypes ((List!25560 0))(
  ( (Nil!25476) (Cons!25476 (h!30877 C!12428) (t!198158 List!25560)) )
))
(declare-datatypes ((IArray!16559 0))(
  ( (IArray!16560 (innerList!8337 List!25560)) )
))
(declare-datatypes ((Conc!8277 0))(
  ( (Node!8277 (left!19550 Conc!8277) (right!19880 Conc!8277) (csize!16784 Int) (cheight!8488 Int)) (Leaf!12115 (xs!11219 IArray!16559) (csize!16785 Int)) (Empty!8277) )
))
(declare-datatypes ((BalanceConc!16316 0))(
  ( (BalanceConc!16317 (c!348922 Conc!8277)) )
))
(declare-fun totalInput!923 () BalanceConc!16316)

(declare-fun e!1401549 () Bool)

(declare-fun inv!34052 (BalanceConc!16316) Bool)

(assert (=> start!212718 (and (inv!34052 totalInput!923) e!1401549)))

(declare-fun condSetEmpty!18666 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((Regex!6141 0))(
  ( (ElementMatch!6141 (c!348923 C!12428)) (Concat!10443 (regOne!12794 Regex!6141) (regTwo!12794 Regex!6141)) (EmptyExpr!6141) (Star!6141 (reg!6470 Regex!6141)) (EmptyLang!6141) (Union!6141 (regOne!12795 Regex!6141) (regTwo!12795 Regex!6141)) )
))
(declare-datatypes ((List!25561 0))(
  ( (Nil!25477) (Cons!25477 (h!30878 Regex!6141) (t!198159 List!25561)) )
))
(declare-datatypes ((Context!3422 0))(
  ( (Context!3423 (exprs!2211 List!25561)) )
))
(declare-fun z!3955 () (InoxSet Context!3422))

(assert (=> start!212718 (= condSetEmpty!18666 (= z!3955 ((as const (Array Context!3422 Bool)) false)))))

(declare-fun setRes!18666 () Bool)

(assert (=> start!212718 setRes!18666))

(declare-fun b!2193091 () Bool)

(declare-fun e!1401553 () Int)

(assert (=> b!2193091 (= e!1401553 from!1114)))

(declare-fun b!2193092 () Bool)

(declare-fun res!942843 () Bool)

(declare-fun e!1401548 () Bool)

(assert (=> b!2193092 (=> (not res!942843) (not e!1401548))))

(declare-fun e!1401547 () Bool)

(assert (=> b!2193092 (= res!942843 e!1401547)))

(declare-fun res!942847 () Bool)

(assert (=> b!2193092 (=> res!942847 e!1401547)))

(declare-fun nullableZipper!421 ((InoxSet Context!3422)) Bool)

(assert (=> b!2193092 (= res!942847 (not (nullableZipper!421 z!3955)))))

(declare-fun b!2193093 () Bool)

(declare-fun e!1401546 () Bool)

(assert (=> b!2193093 (= e!1401548 e!1401546)))

(declare-fun res!942844 () Bool)

(assert (=> b!2193093 (=> (not res!942844) (not e!1401546))))

(declare-fun lt!820024 () Int)

(declare-fun lt!820029 () Int)

(assert (=> b!2193093 (= res!942844 (= lt!820024 lt!820029))))

(declare-fun lt!820028 () Int)

(declare-fun lt!820026 () (InoxSet Context!3422))

(declare-fun lt!820030 () Int)

(declare-fun furthestNullablePosition!311 ((InoxSet Context!3422) Int BalanceConc!16316 Int Int) Int)

(assert (=> b!2193093 (= lt!820029 (furthestNullablePosition!311 lt!820026 (+ 1 from!1114) totalInput!923 lt!820030 lt!820028))))

(declare-fun lastNullablePos!193 () Int)

(assert (=> b!2193093 (= lt!820024 (furthestNullablePosition!311 z!3955 from!1114 totalInput!923 lt!820030 lastNullablePos!193))))

(assert (=> b!2193093 (= lt!820028 e!1401553)))

(declare-fun c!348921 () Bool)

(assert (=> b!2193093 (= c!348921 (nullableZipper!421 lt!820026))))

(declare-fun derivationStepZipper!215 ((InoxSet Context!3422) C!12428) (InoxSet Context!3422))

(declare-fun apply!6191 (BalanceConc!16316 Int) C!12428)

(assert (=> b!2193093 (= lt!820026 (derivationStepZipper!215 z!3955 (apply!6191 totalInput!923 from!1114)))))

(declare-fun b!2193094 () Bool)

(declare-fun tp!683488 () Bool)

(declare-fun inv!34053 (Conc!8277) Bool)

(assert (=> b!2193094 (= e!1401549 (and (inv!34053 (c!348922 totalInput!923)) tp!683488))))

(declare-fun setElem!18666 () Context!3422)

(declare-fun tp!683487 () Bool)

(declare-fun setNonEmpty!18666 () Bool)

(declare-fun inv!34054 (Context!3422) Bool)

(assert (=> setNonEmpty!18666 (= setRes!18666 (and tp!683487 (inv!34054 setElem!18666) e!1401550))))

(declare-fun setRest!18666 () (InoxSet Context!3422))

(assert (=> setNonEmpty!18666 (= z!3955 ((_ map or) (store ((as const (Array Context!3422 Bool)) false) setElem!18666 true) setRest!18666))))

(declare-fun b!2193095 () Bool)

(declare-fun res!942841 () Bool)

(assert (=> b!2193095 (=> (not res!942841) (not e!1401548))))

(assert (=> b!2193095 (= res!942841 (not (= from!1114 lt!820030)))))

(declare-fun b!2193096 () Bool)

(assert (=> b!2193096 (= e!1401553 lastNullablePos!193)))

(declare-fun b!2193097 () Bool)

(assert (=> b!2193097 (= e!1401551 e!1401548)))

(declare-fun res!942846 () Bool)

(assert (=> b!2193097 (=> (not res!942846) (not e!1401548))))

(assert (=> b!2193097 (= res!942846 (and (<= from!1114 lt!820030) (>= lastNullablePos!193 (- 1)) (< lastNullablePos!193 from!1114)))))

(declare-fun size!19871 (BalanceConc!16316) Int)

(assert (=> b!2193097 (= lt!820030 (size!19871 totalInput!923))))

(declare-fun e!1401552 () Bool)

(declare-fun lt!820025 () Int)

(declare-fun b!2193098 () Bool)

(declare-fun matchZipper!237 ((InoxSet Context!3422) List!25560) Bool)

(declare-fun take!329 (List!25560 Int) List!25560)

(declare-fun drop!1339 (List!25560 Int) List!25560)

(declare-fun list!9789 (BalanceConc!16316) List!25560)

(assert (=> b!2193098 (= e!1401552 (matchZipper!237 lt!820026 (take!329 (drop!1339 (list!9789 totalInput!923) (+ 1 from!1114)) lt!820025)))))

(declare-fun b!2193099 () Bool)

(assert (=> b!2193099 (= e!1401547 (= lastNullablePos!193 (- from!1114 1)))))

(declare-fun b!2193100 () Bool)

(assert (=> b!2193100 (= e!1401546 (not (or (> lt!820025 0) (> lt!820029 from!1114) (< lt!820029 lt!820028) (< lt!820028 lastNullablePos!193) (<= lt!820028 from!1114))))))

(assert (=> b!2193100 e!1401552))

(declare-fun res!942840 () Bool)

(assert (=> b!2193100 (=> res!942840 e!1401552)))

(assert (=> b!2193100 (= res!942840 (<= lt!820025 0))))

(assert (=> b!2193100 (= lt!820025 (+ 1 (- lt!820029 (+ 1 from!1114))))))

(declare-datatypes ((Unit!38589 0))(
  ( (Unit!38590) )
))
(declare-fun lt!820027 () Unit!38589)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmptyRecV3!140 ((InoxSet Context!3422) Int BalanceConc!16316 Int) Unit!38589)

(assert (=> b!2193100 (= lt!820027 (longestMatchIsAcceptedByMatchOrIsEmptyRecV3!140 lt!820026 (+ 1 from!1114) totalInput!923 lt!820028))))

(declare-fun b!2193101 () Bool)

(declare-fun res!942842 () Bool)

(assert (=> b!2193101 (=> (not res!942842) (not e!1401548))))

(declare-fun lostCauseZipper!259 ((InoxSet Context!3422)) Bool)

(assert (=> b!2193101 (= res!942842 (not (lostCauseZipper!259 z!3955)))))

(declare-fun setIsEmpty!18666 () Bool)

(assert (=> setIsEmpty!18666 setRes!18666))

(assert (= (and start!212718 res!942845) b!2193097))

(assert (= (and b!2193097 res!942846) b!2193092))

(assert (= (and b!2193092 (not res!942847)) b!2193099))

(assert (= (and b!2193092 res!942843) b!2193095))

(assert (= (and b!2193095 res!942841) b!2193101))

(assert (= (and b!2193101 res!942842) b!2193093))

(assert (= (and b!2193093 c!348921) b!2193091))

(assert (= (and b!2193093 (not c!348921)) b!2193096))

(assert (= (and b!2193093 res!942844) b!2193100))

(assert (= (and b!2193100 (not res!942840)) b!2193098))

(assert (= start!212718 b!2193094))

(assert (= (and start!212718 condSetEmpty!18666) setIsEmpty!18666))

(assert (= (and start!212718 (not condSetEmpty!18666)) setNonEmpty!18666))

(assert (= setNonEmpty!18666 b!2193090))

(declare-fun m!2635691 () Bool)

(assert (=> setNonEmpty!18666 m!2635691))

(declare-fun m!2635693 () Bool)

(assert (=> b!2193100 m!2635693))

(declare-fun m!2635695 () Bool)

(assert (=> b!2193098 m!2635695))

(assert (=> b!2193098 m!2635695))

(declare-fun m!2635697 () Bool)

(assert (=> b!2193098 m!2635697))

(assert (=> b!2193098 m!2635697))

(declare-fun m!2635699 () Bool)

(assert (=> b!2193098 m!2635699))

(assert (=> b!2193098 m!2635699))

(declare-fun m!2635701 () Bool)

(assert (=> b!2193098 m!2635701))

(declare-fun m!2635703 () Bool)

(assert (=> b!2193094 m!2635703))

(declare-fun m!2635705 () Bool)

(assert (=> b!2193101 m!2635705))

(declare-fun m!2635707 () Bool)

(assert (=> b!2193092 m!2635707))

(declare-fun m!2635709 () Bool)

(assert (=> start!212718 m!2635709))

(declare-fun m!2635711 () Bool)

(assert (=> b!2193097 m!2635711))

(declare-fun m!2635713 () Bool)

(assert (=> b!2193093 m!2635713))

(declare-fun m!2635715 () Bool)

(assert (=> b!2193093 m!2635715))

(declare-fun m!2635717 () Bool)

(assert (=> b!2193093 m!2635717))

(declare-fun m!2635719 () Bool)

(assert (=> b!2193093 m!2635719))

(assert (=> b!2193093 m!2635717))

(declare-fun m!2635721 () Bool)

(assert (=> b!2193093 m!2635721))

(check-sat (not start!212718) (not b!2193098) (not b!2193094) (not b!2193090) (not setNonEmpty!18666) (not b!2193097) (not b!2193093) (not b!2193092) (not b!2193101) (not b!2193100))
(check-sat)
