; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!213598 () Bool)

(assert start!213598)

(declare-fun b!2199845 () Bool)

(declare-fun e!1405802 () Bool)

(declare-datatypes ((C!12548 0))(
  ( (C!12549 (val!7260 Int)) )
))
(declare-datatypes ((List!25696 0))(
  ( (Nil!25612) (Cons!25612 (h!31013 C!12548) (t!198314 List!25696)) )
))
(declare-datatypes ((IArray!16679 0))(
  ( (IArray!16680 (innerList!8397 List!25696)) )
))
(declare-datatypes ((Conc!8337 0))(
  ( (Node!8337 (left!19672 Conc!8337) (right!20002 Conc!8337) (csize!16904 Int) (cheight!8548 Int)) (Leaf!12205 (xs!11279 IArray!16679) (csize!16905 Int)) (Empty!8337) )
))
(declare-datatypes ((BalanceConc!16436 0))(
  ( (BalanceConc!16437 (c!350848 Conc!8337)) )
))
(declare-fun totalInput!891 () BalanceConc!16436)

(declare-fun tp!684624 () Bool)

(declare-fun inv!34363 (Conc!8337) Bool)

(assert (=> b!2199845 (= e!1405802 (and (inv!34363 (c!350848 totalInput!891)) tp!684624))))

(declare-fun b!2199846 () Bool)

(declare-fun res!945490 () Bool)

(declare-fun e!1405806 () Bool)

(assert (=> b!2199846 (=> (not res!945490) (not e!1405806))))

(declare-fun knownSize!10 () Int)

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((Regex!6201 0))(
  ( (ElementMatch!6201 (c!350849 C!12548)) (Concat!10503 (regOne!12914 Regex!6201) (regTwo!12914 Regex!6201)) (EmptyExpr!6201) (Star!6201 (reg!6530 Regex!6201)) (EmptyLang!6201) (Union!6201 (regOne!12915 Regex!6201) (regTwo!12915 Regex!6201)) )
))
(declare-datatypes ((List!25697 0))(
  ( (Nil!25613) (Cons!25613 (h!31014 Regex!6201) (t!198315 List!25697)) )
))
(declare-datatypes ((Context!3542 0))(
  ( (Context!3543 (exprs!2271 List!25697)) )
))
(declare-fun z!3888 () (InoxSet Context!3542))

(declare-fun from!1082 () Int)

(declare-fun matchZipper!287 ((InoxSet Context!3542) List!25696) Bool)

(declare-fun take!379 (List!25696 Int) List!25696)

(declare-fun drop!1389 (List!25696 Int) List!25696)

(declare-fun list!9859 (BalanceConc!16436) List!25696)

(assert (=> b!2199846 (= res!945490 (matchZipper!287 z!3888 (take!379 (drop!1389 (list!9859 totalInput!891) from!1082) knownSize!10)))))

(declare-fun b!2199847 () Bool)

(declare-fun res!945484 () Bool)

(assert (=> b!2199847 (=> (not res!945484) (not e!1405806))))

(declare-fun e!1405805 () Bool)

(assert (=> b!2199847 (= res!945484 e!1405805)))

(declare-fun res!945486 () Bool)

(assert (=> b!2199847 (=> res!945486 e!1405805)))

(declare-fun lt!822893 () Int)

(assert (=> b!2199847 (= res!945486 (= from!1082 lt!822893))))

(declare-fun b!2199848 () Bool)

(declare-fun res!945487 () Bool)

(assert (=> b!2199848 (=> (not res!945487) (not e!1405806))))

(declare-fun lastNullablePos!161 () Int)

(assert (=> b!2199848 (= res!945487 (and (>= lastNullablePos!161 (- 1)) (< lastNullablePos!161 from!1082)))))

(declare-fun setElem!18906 () Context!3542)

(declare-fun setRes!18906 () Bool)

(declare-fun setNonEmpty!18906 () Bool)

(declare-fun e!1405803 () Bool)

(declare-fun tp!684623 () Bool)

(declare-fun inv!34364 (Context!3542) Bool)

(assert (=> setNonEmpty!18906 (= setRes!18906 (and tp!684623 (inv!34364 setElem!18906) e!1405803))))

(declare-fun setRest!18906 () (InoxSet Context!3542))

(assert (=> setNonEmpty!18906 (= z!3888 ((_ map or) (store ((as const (Array Context!3542 Bool)) false) setElem!18906 true) setRest!18906))))

(declare-fun setIsEmpty!18906 () Bool)

(assert (=> setIsEmpty!18906 setRes!18906))

(declare-fun b!2199849 () Bool)

(declare-fun res!945482 () Bool)

(assert (=> b!2199849 (=> (not res!945482) (not e!1405806))))

(declare-fun e!1405807 () Bool)

(assert (=> b!2199849 (= res!945482 e!1405807)))

(declare-fun res!945485 () Bool)

(assert (=> b!2199849 (=> res!945485 e!1405807)))

(declare-fun nullableZipper!481 ((InoxSet Context!3542)) Bool)

(assert (=> b!2199849 (= res!945485 (not (nullableZipper!481 z!3888)))))

(declare-fun b!2199850 () Bool)

(declare-fun tp!684622 () Bool)

(assert (=> b!2199850 (= e!1405803 tp!684622)))

(declare-fun b!2199851 () Bool)

(declare-fun res!945488 () Bool)

(assert (=> b!2199851 (=> (not res!945488) (not e!1405806))))

(assert (=> b!2199851 (= res!945488 (and (not (= knownSize!10 0)) (> knownSize!10 0)))))

(declare-fun b!2199852 () Bool)

(declare-fun lostCauseZipper!311 ((InoxSet Context!3542)) Bool)

(assert (=> b!2199852 (= e!1405805 (lostCauseZipper!311 z!3888))))

(declare-fun b!2199853 () Bool)

(declare-fun e!1405804 () Bool)

(assert (=> b!2199853 (= e!1405804 e!1405806)))

(declare-fun res!945491 () Bool)

(assert (=> b!2199853 (=> (not res!945491) (not e!1405806))))

(assert (=> b!2199853 (= res!945491 (and (<= from!1082 lt!822893) (>= knownSize!10 0) (<= knownSize!10 (- lt!822893 from!1082))))))

(declare-fun size!19966 (BalanceConc!16436) Int)

(assert (=> b!2199853 (= lt!822893 (size!19966 totalInput!891))))

(declare-fun b!2199854 () Bool)

(assert (=> b!2199854 (= e!1405806 false)))

(declare-fun lt!822894 () Bool)

(assert (=> b!2199854 (= lt!822894 (lostCauseZipper!311 z!3888))))

(declare-fun b!2199855 () Bool)

(declare-fun res!945489 () Bool)

(assert (=> b!2199855 (=> (not res!945489) (not e!1405806))))

(declare-fun isEmpty!14609 (BalanceConc!16436) Bool)

(assert (=> b!2199855 (= res!945489 (not (isEmpty!14609 totalInput!891)))))

(declare-fun res!945483 () Bool)

(assert (=> start!213598 (=> (not res!945483) (not e!1405804))))

(assert (=> start!213598 (= res!945483 (>= from!1082 0))))

(assert (=> start!213598 e!1405804))

(assert (=> start!213598 true))

(declare-fun inv!34365 (BalanceConc!16436) Bool)

(assert (=> start!213598 (and (inv!34365 totalInput!891) e!1405802)))

(declare-fun condSetEmpty!18906 () Bool)

(assert (=> start!213598 (= condSetEmpty!18906 (= z!3888 ((as const (Array Context!3542 Bool)) false)))))

(assert (=> start!213598 setRes!18906))

(declare-fun b!2199844 () Bool)

(assert (=> b!2199844 (= e!1405807 (= lastNullablePos!161 (- from!1082 1)))))

(assert (= (and start!213598 res!945483) b!2199853))

(assert (= (and b!2199853 res!945491) b!2199846))

(assert (= (and b!2199846 res!945490) b!2199848))

(assert (= (and b!2199848 res!945487) b!2199849))

(assert (= (and b!2199849 (not res!945485)) b!2199844))

(assert (= (and b!2199849 res!945482) b!2199855))

(assert (= (and b!2199855 res!945489) b!2199851))

(assert (= (and b!2199851 res!945488) b!2199847))

(assert (= (and b!2199847 (not res!945486)) b!2199852))

(assert (= (and b!2199847 res!945484) b!2199854))

(assert (= start!213598 b!2199845))

(assert (= (and start!213598 condSetEmpty!18906) setIsEmpty!18906))

(assert (= (and start!213598 (not condSetEmpty!18906)) setNonEmpty!18906))

(assert (= setNonEmpty!18906 b!2199850))

(declare-fun m!2642665 () Bool)

(assert (=> start!213598 m!2642665))

(declare-fun m!2642667 () Bool)

(assert (=> b!2199852 m!2642667))

(declare-fun m!2642669 () Bool)

(assert (=> setNonEmpty!18906 m!2642669))

(assert (=> b!2199854 m!2642667))

(declare-fun m!2642671 () Bool)

(assert (=> b!2199845 m!2642671))

(declare-fun m!2642673 () Bool)

(assert (=> b!2199849 m!2642673))

(declare-fun m!2642675 () Bool)

(assert (=> b!2199846 m!2642675))

(assert (=> b!2199846 m!2642675))

(declare-fun m!2642677 () Bool)

(assert (=> b!2199846 m!2642677))

(assert (=> b!2199846 m!2642677))

(declare-fun m!2642679 () Bool)

(assert (=> b!2199846 m!2642679))

(assert (=> b!2199846 m!2642679))

(declare-fun m!2642681 () Bool)

(assert (=> b!2199846 m!2642681))

(declare-fun m!2642683 () Bool)

(assert (=> b!2199853 m!2642683))

(declare-fun m!2642685 () Bool)

(assert (=> b!2199855 m!2642685))

(check-sat (not b!2199854) (not setNonEmpty!18906) (not b!2199853) (not b!2199850) (not b!2199845) (not b!2199855) (not b!2199852) (not start!213598) (not b!2199849) (not b!2199846))
(check-sat)
