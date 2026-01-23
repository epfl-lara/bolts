; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!212510 () Bool)

(assert start!212510)

(declare-fun b!2190802 () Bool)

(declare-fun res!941492 () Bool)

(declare-fun e!1399993 () Bool)

(assert (=> b!2190802 (=> (not res!941492) (not e!1399993))))

(declare-fun from!1114 () Int)

(declare-fun lt!818613 () Int)

(assert (=> b!2190802 (= res!941492 (not (= from!1114 lt!818613)))))

(declare-fun b!2190803 () Bool)

(declare-fun res!941495 () Bool)

(assert (=> b!2190803 (=> (not res!941495) (not e!1399993))))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((C!12340 0))(
  ( (C!12341 (val!7156 Int)) )
))
(declare-datatypes ((Regex!6097 0))(
  ( (ElementMatch!6097 (c!348494 C!12340)) (Concat!10399 (regOne!12706 Regex!6097) (regTwo!12706 Regex!6097)) (EmptyExpr!6097) (Star!6097 (reg!6426 Regex!6097)) (EmptyLang!6097) (Union!6097 (regOne!12707 Regex!6097) (regTwo!12707 Regex!6097)) )
))
(declare-datatypes ((List!25467 0))(
  ( (Nil!25383) (Cons!25383 (h!30784 Regex!6097) (t!198065 List!25467)) )
))
(declare-datatypes ((Context!3334 0))(
  ( (Context!3335 (exprs!2167 List!25467)) )
))
(declare-fun z!3955 () (InoxSet Context!3334))

(declare-fun lostCauseZipper!215 ((InoxSet Context!3334)) Bool)

(assert (=> b!2190803 (= res!941495 (not (lostCauseZipper!215 z!3955)))))

(declare-fun res!941497 () Bool)

(declare-fun e!1399987 () Bool)

(assert (=> start!212510 (=> (not res!941497) (not e!1399987))))

(assert (=> start!212510 (= res!941497 (>= from!1114 0))))

(assert (=> start!212510 e!1399987))

(assert (=> start!212510 true))

(declare-datatypes ((List!25468 0))(
  ( (Nil!25384) (Cons!25384 (h!30785 C!12340) (t!198066 List!25468)) )
))
(declare-datatypes ((IArray!16471 0))(
  ( (IArray!16472 (innerList!8293 List!25468)) )
))
(declare-datatypes ((Conc!8233 0))(
  ( (Node!8233 (left!19476 Conc!8233) (right!19806 Conc!8233) (csize!16696 Int) (cheight!8444 Int)) (Leaf!12049 (xs!11175 IArray!16471) (csize!16697 Int)) (Empty!8233) )
))
(declare-datatypes ((BalanceConc!16228 0))(
  ( (BalanceConc!16229 (c!348495 Conc!8233)) )
))
(declare-fun totalInput!923 () BalanceConc!16228)

(declare-fun e!1399992 () Bool)

(declare-fun inv!33837 (BalanceConc!16228) Bool)

(assert (=> start!212510 (and (inv!33837 totalInput!923) e!1399992)))

(declare-fun condSetEmpty!18516 () Bool)

(assert (=> start!212510 (= condSetEmpty!18516 (= z!3955 ((as const (Array Context!3334 Bool)) false)))))

(declare-fun setRes!18516 () Bool)

(assert (=> start!212510 setRes!18516))

(declare-fun setIsEmpty!18516 () Bool)

(assert (=> setIsEmpty!18516 setRes!18516))

(declare-fun lt!818617 () Int)

(declare-fun b!2190804 () Bool)

(declare-fun lt!818611 () (InoxSet Context!3334))

(declare-fun e!1399991 () Bool)

(declare-fun matchZipper!197 ((InoxSet Context!3334) List!25468) Bool)

(declare-fun take!289 (List!25468 Int) List!25468)

(declare-fun drop!1299 (List!25468 Int) List!25468)

(declare-fun list!9744 (BalanceConc!16228) List!25468)

(assert (=> b!2190804 (= e!1399991 (matchZipper!197 lt!818611 (take!289 (drop!1299 (list!9744 totalInput!923) (+ 1 from!1114)) lt!818617)))))

(declare-fun b!2190805 () Bool)

(assert (=> b!2190805 (= e!1399987 e!1399993)))

(declare-fun res!941494 () Bool)

(assert (=> b!2190805 (=> (not res!941494) (not e!1399993))))

(declare-fun lastNullablePos!193 () Int)

(assert (=> b!2190805 (= res!941494 (and (<= from!1114 lt!818613) (>= lastNullablePos!193 (- 1)) (< lastNullablePos!193 from!1114)))))

(declare-fun size!19813 (BalanceConc!16228) Int)

(assert (=> b!2190805 (= lt!818613 (size!19813 totalInput!923))))

(declare-fun b!2190806 () Bool)

(declare-fun e!1399990 () Bool)

(declare-fun tp!682965 () Bool)

(assert (=> b!2190806 (= e!1399990 tp!682965)))

(declare-fun b!2190807 () Bool)

(declare-fun e!1399989 () Bool)

(assert (=> b!2190807 (= e!1399989 (= lastNullablePos!193 (- from!1114 1)))))

(declare-fun setNonEmpty!18516 () Bool)

(declare-fun tp!682966 () Bool)

(declare-fun setElem!18516 () Context!3334)

(declare-fun inv!33838 (Context!3334) Bool)

(assert (=> setNonEmpty!18516 (= setRes!18516 (and tp!682966 (inv!33838 setElem!18516) e!1399990))))

(declare-fun setRest!18516 () (InoxSet Context!3334))

(assert (=> setNonEmpty!18516 (= z!3955 ((_ map or) (store ((as const (Array Context!3334 Bool)) false) setElem!18516 true) setRest!18516))))

(declare-fun b!2190808 () Bool)

(declare-fun e!1399988 () Bool)

(assert (=> b!2190808 (= e!1399993 e!1399988)))

(declare-fun res!941499 () Bool)

(assert (=> b!2190808 (=> (not res!941499) (not e!1399988))))

(declare-fun lt!818616 () Int)

(declare-fun lt!818612 () Int)

(assert (=> b!2190808 (= res!941499 (= lt!818616 lt!818612))))

(declare-fun lt!818615 () Int)

(declare-fun furthestNullablePosition!267 ((InoxSet Context!3334) Int BalanceConc!16228 Int Int) Int)

(assert (=> b!2190808 (= lt!818612 (furthestNullablePosition!267 lt!818611 (+ 1 from!1114) totalInput!923 lt!818613 lt!818615))))

(assert (=> b!2190808 (= lt!818616 (furthestNullablePosition!267 z!3955 from!1114 totalInput!923 lt!818613 lastNullablePos!193))))

(declare-fun lt!818618 () Bool)

(assert (=> b!2190808 (= lt!818615 (ite lt!818618 from!1114 lastNullablePos!193))))

(declare-fun nullableZipper!377 ((InoxSet Context!3334)) Bool)

(assert (=> b!2190808 (= lt!818618 (nullableZipper!377 lt!818611))))

(declare-fun derivationStepZipper!174 ((InoxSet Context!3334) C!12340) (InoxSet Context!3334))

(declare-fun apply!6130 (BalanceConc!16228 Int) C!12340)

(assert (=> b!2190808 (= lt!818611 (derivationStepZipper!174 z!3955 (apply!6130 totalInput!923 from!1114)))))

(declare-fun b!2190809 () Bool)

(declare-fun tp!682964 () Bool)

(declare-fun inv!33839 (Conc!8233) Bool)

(assert (=> b!2190809 (= e!1399992 (and (inv!33839 (c!348495 totalInput!923)) tp!682964))))

(declare-fun b!2190810 () Bool)

(declare-fun res!941493 () Bool)

(assert (=> b!2190810 (=> (not res!941493) (not e!1399993))))

(assert (=> b!2190810 (= res!941493 e!1399989)))

(declare-fun res!941498 () Bool)

(assert (=> b!2190810 (=> res!941498 e!1399989)))

(assert (=> b!2190810 (= res!941498 (not (nullableZipper!377 z!3955)))))

(declare-fun b!2190811 () Bool)

(assert (=> b!2190811 (= e!1399988 (not (or (> lt!818617 0) (> lt!818612 from!1114) (< (+ 1 from!1114) 0) (> (+ 1 from!1114) lt!818613) (< lt!818615 (- 1)) (>= lt!818615 (+ 1 from!1114)) (not lt!818618) (= lt!818615 from!1114))))))

(assert (=> b!2190811 e!1399991))

(declare-fun res!941496 () Bool)

(assert (=> b!2190811 (=> res!941496 e!1399991)))

(assert (=> b!2190811 (= res!941496 (<= lt!818617 0))))

(assert (=> b!2190811 (= lt!818617 (+ 1 (- lt!818612 (+ 1 from!1114))))))

(declare-datatypes ((Unit!38489 0))(
  ( (Unit!38490) )
))
(declare-fun lt!818614 () Unit!38489)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmptyRecV3!102 ((InoxSet Context!3334) Int BalanceConc!16228 Int) Unit!38489)

(assert (=> b!2190811 (= lt!818614 (longestMatchIsAcceptedByMatchOrIsEmptyRecV3!102 lt!818611 (+ 1 from!1114) totalInput!923 lt!818615))))

(assert (= (and start!212510 res!941497) b!2190805))

(assert (= (and b!2190805 res!941494) b!2190810))

(assert (= (and b!2190810 (not res!941498)) b!2190807))

(assert (= (and b!2190810 res!941493) b!2190802))

(assert (= (and b!2190802 res!941492) b!2190803))

(assert (= (and b!2190803 res!941495) b!2190808))

(assert (= (and b!2190808 res!941499) b!2190811))

(assert (= (and b!2190811 (not res!941496)) b!2190804))

(assert (= start!212510 b!2190809))

(assert (= (and start!212510 condSetEmpty!18516) setIsEmpty!18516))

(assert (= (and start!212510 (not condSetEmpty!18516)) setNonEmpty!18516))

(assert (= setNonEmpty!18516 b!2190806))

(declare-fun m!2633667 () Bool)

(assert (=> start!212510 m!2633667))

(declare-fun m!2633669 () Bool)

(assert (=> b!2190804 m!2633669))

(assert (=> b!2190804 m!2633669))

(declare-fun m!2633671 () Bool)

(assert (=> b!2190804 m!2633671))

(assert (=> b!2190804 m!2633671))

(declare-fun m!2633673 () Bool)

(assert (=> b!2190804 m!2633673))

(assert (=> b!2190804 m!2633673))

(declare-fun m!2633675 () Bool)

(assert (=> b!2190804 m!2633675))

(declare-fun m!2633677 () Bool)

(assert (=> b!2190811 m!2633677))

(declare-fun m!2633679 () Bool)

(assert (=> b!2190810 m!2633679))

(declare-fun m!2633681 () Bool)

(assert (=> b!2190805 m!2633681))

(declare-fun m!2633683 () Bool)

(assert (=> b!2190808 m!2633683))

(declare-fun m!2633685 () Bool)

(assert (=> b!2190808 m!2633685))

(declare-fun m!2633687 () Bool)

(assert (=> b!2190808 m!2633687))

(declare-fun m!2633689 () Bool)

(assert (=> b!2190808 m!2633689))

(assert (=> b!2190808 m!2633687))

(declare-fun m!2633691 () Bool)

(assert (=> b!2190808 m!2633691))

(declare-fun m!2633693 () Bool)

(assert (=> b!2190803 m!2633693))

(declare-fun m!2633695 () Bool)

(assert (=> setNonEmpty!18516 m!2633695))

(declare-fun m!2633697 () Bool)

(assert (=> b!2190809 m!2633697))

(check-sat (not b!2190805) (not b!2190810) (not setNonEmpty!18516) (not b!2190803) (not start!212510) (not b!2190806) (not b!2190809) (not b!2190804) (not b!2190808) (not b!2190811))
(check-sat)
