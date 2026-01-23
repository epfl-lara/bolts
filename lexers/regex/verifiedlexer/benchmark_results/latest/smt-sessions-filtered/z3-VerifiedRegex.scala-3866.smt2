; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!213594 () Bool)

(assert start!213594)

(declare-fun b!2199774 () Bool)

(declare-fun e!1405769 () Bool)

(assert (=> b!2199774 (= e!1405769 false)))

(declare-fun lastNullablePos!161 () Int)

(declare-fun lt!822881 () Int)

(declare-datatypes ((C!12544 0))(
  ( (C!12545 (val!7258 Int)) )
))
(declare-datatypes ((List!25692 0))(
  ( (Nil!25608) (Cons!25608 (h!31009 C!12544) (t!198310 List!25692)) )
))
(declare-datatypes ((IArray!16675 0))(
  ( (IArray!16676 (innerList!8395 List!25692)) )
))
(declare-datatypes ((Conc!8335 0))(
  ( (Node!8335 (left!19669 Conc!8335) (right!19999 Conc!8335) (csize!16900 Int) (cheight!8546 Int)) (Leaf!12202 (xs!11277 IArray!16675) (csize!16901 Int)) (Empty!8335) )
))
(declare-datatypes ((BalanceConc!16432 0))(
  ( (BalanceConc!16433 (c!350844 Conc!8335)) )
))
(declare-fun totalInput!891 () BalanceConc!16432)

(declare-fun lt!822882 () Int)

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((Regex!6199 0))(
  ( (ElementMatch!6199 (c!350845 C!12544)) (Concat!10501 (regOne!12910 Regex!6199) (regTwo!12910 Regex!6199)) (EmptyExpr!6199) (Star!6199 (reg!6528 Regex!6199)) (EmptyLang!6199) (Union!6199 (regOne!12911 Regex!6199) (regTwo!12911 Regex!6199)) )
))
(declare-datatypes ((List!25693 0))(
  ( (Nil!25609) (Cons!25609 (h!31010 Regex!6199) (t!198311 List!25693)) )
))
(declare-datatypes ((Context!3538 0))(
  ( (Context!3539 (exprs!2269 List!25693)) )
))
(declare-fun z!3888 () (InoxSet Context!3538))

(declare-fun from!1082 () Int)

(declare-fun furthestNullablePosition!365 ((InoxSet Context!3538) Int BalanceConc!16432 Int Int) Int)

(assert (=> b!2199774 (= lt!822881 (furthestNullablePosition!365 z!3888 from!1082 totalInput!891 lt!822882 lastNullablePos!161))))

(declare-fun b!2199775 () Bool)

(declare-fun res!945428 () Bool)

(assert (=> b!2199775 (=> (not res!945428) (not e!1405769))))

(declare-fun e!1405770 () Bool)

(assert (=> b!2199775 (= res!945428 e!1405770)))

(declare-fun res!945426 () Bool)

(assert (=> b!2199775 (=> res!945426 e!1405770)))

(declare-fun nullableZipper!479 ((InoxSet Context!3538)) Bool)

(assert (=> b!2199775 (= res!945426 (not (nullableZipper!479 z!3888)))))

(declare-fun b!2199776 () Bool)

(declare-fun res!945427 () Bool)

(assert (=> b!2199776 (=> (not res!945427) (not e!1405769))))

(declare-fun knownSize!10 () Int)

(declare-fun matchZipper!285 ((InoxSet Context!3538) List!25692) Bool)

(declare-fun take!377 (List!25692 Int) List!25692)

(declare-fun drop!1387 (List!25692 Int) List!25692)

(declare-fun list!9857 (BalanceConc!16432) List!25692)

(assert (=> b!2199776 (= res!945427 (matchZipper!285 z!3888 (take!377 (drop!1387 (list!9857 totalInput!891) from!1082) knownSize!10)))))

(declare-fun b!2199777 () Bool)

(declare-fun e!1405771 () Bool)

(assert (=> b!2199777 (= e!1405771 e!1405769)))

(declare-fun res!945429 () Bool)

(assert (=> b!2199777 (=> (not res!945429) (not e!1405769))))

(assert (=> b!2199777 (= res!945429 (and (<= from!1082 lt!822882) (>= knownSize!10 0) (<= knownSize!10 (- lt!822882 from!1082))))))

(declare-fun size!19964 (BalanceConc!16432) Int)

(assert (=> b!2199777 (= lt!822882 (size!19964 totalInput!891))))

(declare-fun b!2199778 () Bool)

(declare-fun res!945425 () Bool)

(assert (=> b!2199778 (=> (not res!945425) (not e!1405769))))

(assert (=> b!2199778 (= res!945425 (and (>= lastNullablePos!161 (- 1)) (< lastNullablePos!161 from!1082)))))

(declare-fun setNonEmpty!18900 () Bool)

(declare-fun setRes!18900 () Bool)

(declare-fun setElem!18900 () Context!3538)

(declare-fun tp!684606 () Bool)

(declare-fun e!1405768 () Bool)

(declare-fun inv!34354 (Context!3538) Bool)

(assert (=> setNonEmpty!18900 (= setRes!18900 (and tp!684606 (inv!34354 setElem!18900) e!1405768))))

(declare-fun setRest!18900 () (InoxSet Context!3538))

(assert (=> setNonEmpty!18900 (= z!3888 ((_ map or) (store ((as const (Array Context!3538 Bool)) false) setElem!18900 true) setRest!18900))))

(declare-fun b!2199779 () Bool)

(declare-fun tp!684605 () Bool)

(assert (=> b!2199779 (= e!1405768 tp!684605)))

(declare-fun b!2199780 () Bool)

(assert (=> b!2199780 (= e!1405770 (= lastNullablePos!161 (- from!1082 1)))))

(declare-fun res!945424 () Bool)

(assert (=> start!213594 (=> (not res!945424) (not e!1405771))))

(assert (=> start!213594 (= res!945424 (>= from!1082 0))))

(assert (=> start!213594 e!1405771))

(assert (=> start!213594 true))

(declare-fun e!1405767 () Bool)

(declare-fun inv!34355 (BalanceConc!16432) Bool)

(assert (=> start!213594 (and (inv!34355 totalInput!891) e!1405767)))

(declare-fun condSetEmpty!18900 () Bool)

(assert (=> start!213594 (= condSetEmpty!18900 (= z!3888 ((as const (Array Context!3538 Bool)) false)))))

(assert (=> start!213594 setRes!18900))

(declare-fun b!2199781 () Bool)

(declare-fun tp!684604 () Bool)

(declare-fun inv!34356 (Conc!8335) Bool)

(assert (=> b!2199781 (= e!1405767 (and (inv!34356 (c!350844 totalInput!891)) tp!684604))))

(declare-fun b!2199782 () Bool)

(declare-fun res!945431 () Bool)

(assert (=> b!2199782 (=> (not res!945431) (not e!1405769))))

(declare-fun isEmpty!14607 (BalanceConc!16432) Bool)

(assert (=> b!2199782 (= res!945431 (not (isEmpty!14607 totalInput!891)))))

(declare-fun setIsEmpty!18900 () Bool)

(assert (=> setIsEmpty!18900 setRes!18900))

(declare-fun b!2199783 () Bool)

(declare-fun res!945430 () Bool)

(assert (=> b!2199783 (=> (not res!945430) (not e!1405769))))

(assert (=> b!2199783 (= res!945430 (= knownSize!10 0))))

(assert (= (and start!213594 res!945424) b!2199777))

(assert (= (and b!2199777 res!945429) b!2199776))

(assert (= (and b!2199776 res!945427) b!2199778))

(assert (= (and b!2199778 res!945425) b!2199775))

(assert (= (and b!2199775 (not res!945426)) b!2199780))

(assert (= (and b!2199775 res!945428) b!2199782))

(assert (= (and b!2199782 res!945431) b!2199783))

(assert (= (and b!2199783 res!945430) b!2199774))

(assert (= start!213594 b!2199781))

(assert (= (and start!213594 condSetEmpty!18900) setIsEmpty!18900))

(assert (= (and start!213594 (not condSetEmpty!18900)) setNonEmpty!18900))

(assert (= setNonEmpty!18900 b!2199779))

(declare-fun m!2642621 () Bool)

(assert (=> b!2199776 m!2642621))

(assert (=> b!2199776 m!2642621))

(declare-fun m!2642623 () Bool)

(assert (=> b!2199776 m!2642623))

(assert (=> b!2199776 m!2642623))

(declare-fun m!2642625 () Bool)

(assert (=> b!2199776 m!2642625))

(assert (=> b!2199776 m!2642625))

(declare-fun m!2642627 () Bool)

(assert (=> b!2199776 m!2642627))

(declare-fun m!2642629 () Bool)

(assert (=> b!2199782 m!2642629))

(declare-fun m!2642631 () Bool)

(assert (=> b!2199781 m!2642631))

(declare-fun m!2642633 () Bool)

(assert (=> setNonEmpty!18900 m!2642633))

(declare-fun m!2642635 () Bool)

(assert (=> b!2199777 m!2642635))

(declare-fun m!2642637 () Bool)

(assert (=> b!2199774 m!2642637))

(declare-fun m!2642639 () Bool)

(assert (=> b!2199775 m!2642639))

(declare-fun m!2642641 () Bool)

(assert (=> start!213594 m!2642641))

(check-sat (not b!2199775) (not b!2199781) (not b!2199774) (not b!2199777) (not setNonEmpty!18900) (not b!2199782) (not b!2199776) (not b!2199779) (not start!213594))
(check-sat)
