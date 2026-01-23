; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!213586 () Bool)

(assert start!213586)

(declare-fun b!2199656 () Bool)

(declare-fun e!1405710 () Bool)

(declare-datatypes ((C!12536 0))(
  ( (C!12537 (val!7254 Int)) )
))
(declare-datatypes ((List!25684 0))(
  ( (Nil!25600) (Cons!25600 (h!31001 C!12536) (t!198302 List!25684)) )
))
(declare-datatypes ((IArray!16667 0))(
  ( (IArray!16668 (innerList!8391 List!25684)) )
))
(declare-datatypes ((Conc!8331 0))(
  ( (Node!8331 (left!19663 Conc!8331) (right!19993 Conc!8331) (csize!16892 Int) (cheight!8542 Int)) (Leaf!12196 (xs!11273 IArray!16667) (csize!16893 Int)) (Empty!8331) )
))
(declare-datatypes ((BalanceConc!16424 0))(
  ( (BalanceConc!16425 (c!350836 Conc!8331)) )
))
(declare-fun totalInput!891 () BalanceConc!16424)

(declare-fun tp!684570 () Bool)

(declare-fun inv!34336 (Conc!8331) Bool)

(assert (=> b!2199656 (= e!1405710 (and (inv!34336 (c!350836 totalInput!891)) tp!684570))))

(declare-fun b!2199657 () Bool)

(declare-fun e!1405707 () Bool)

(declare-fun tp!684568 () Bool)

(assert (=> b!2199657 (= e!1405707 tp!684568)))

(declare-fun b!2199658 () Bool)

(declare-fun res!945331 () Bool)

(declare-fun e!1405709 () Bool)

(assert (=> b!2199658 (=> (not res!945331) (not e!1405709))))

(declare-fun e!1405711 () Bool)

(assert (=> b!2199658 (= res!945331 e!1405711)))

(declare-fun res!945334 () Bool)

(assert (=> b!2199658 (=> res!945334 e!1405711)))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((Regex!6195 0))(
  ( (ElementMatch!6195 (c!350837 C!12536)) (Concat!10497 (regOne!12902 Regex!6195) (regTwo!12902 Regex!6195)) (EmptyExpr!6195) (Star!6195 (reg!6524 Regex!6195)) (EmptyLang!6195) (Union!6195 (regOne!12903 Regex!6195) (regTwo!12903 Regex!6195)) )
))
(declare-datatypes ((List!25685 0))(
  ( (Nil!25601) (Cons!25601 (h!31002 Regex!6195) (t!198303 List!25685)) )
))
(declare-datatypes ((Context!3530 0))(
  ( (Context!3531 (exprs!2265 List!25685)) )
))
(declare-fun z!3888 () (InoxSet Context!3530))

(declare-fun nullableZipper!475 ((InoxSet Context!3530)) Bool)

(assert (=> b!2199658 (= res!945334 (not (nullableZipper!475 z!3888)))))

(declare-fun res!945335 () Bool)

(declare-fun e!1405708 () Bool)

(assert (=> start!213586 (=> (not res!945335) (not e!1405708))))

(declare-fun from!1082 () Int)

(assert (=> start!213586 (= res!945335 (>= from!1082 0))))

(assert (=> start!213586 e!1405708))

(assert (=> start!213586 true))

(declare-fun inv!34337 (BalanceConc!16424) Bool)

(assert (=> start!213586 (and (inv!34337 totalInput!891) e!1405710)))

(declare-fun condSetEmpty!18888 () Bool)

(assert (=> start!213586 (= condSetEmpty!18888 (= z!3888 ((as const (Array Context!3530 Bool)) false)))))

(declare-fun setRes!18888 () Bool)

(assert (=> start!213586 setRes!18888))

(declare-fun b!2199659 () Bool)

(declare-fun res!945330 () Bool)

(assert (=> b!2199659 (=> (not res!945330) (not e!1405709))))

(declare-fun lastNullablePos!161 () Int)

(assert (=> b!2199659 (= res!945330 (and (>= lastNullablePos!161 (- 1)) (< lastNullablePos!161 from!1082)))))

(declare-fun setIsEmpty!18888 () Bool)

(assert (=> setIsEmpty!18888 setRes!18888))

(declare-fun b!2199660 () Bool)

(assert (=> b!2199660 (= e!1405711 (= lastNullablePos!161 (- from!1082 1)))))

(declare-fun b!2199661 () Bool)

(assert (=> b!2199661 (= e!1405709 false)))

(declare-fun lt!822858 () Bool)

(declare-fun isEmpty!14603 (BalanceConc!16424) Bool)

(assert (=> b!2199661 (= lt!822858 (isEmpty!14603 totalInput!891))))

(declare-fun b!2199662 () Bool)

(declare-fun res!945333 () Bool)

(assert (=> b!2199662 (=> (not res!945333) (not e!1405709))))

(declare-fun knownSize!10 () Int)

(declare-fun matchZipper!281 ((InoxSet Context!3530) List!25684) Bool)

(declare-fun take!373 (List!25684 Int) List!25684)

(declare-fun drop!1383 (List!25684 Int) List!25684)

(declare-fun list!9853 (BalanceConc!16424) List!25684)

(assert (=> b!2199662 (= res!945333 (matchZipper!281 z!3888 (take!373 (drop!1383 (list!9853 totalInput!891) from!1082) knownSize!10)))))

(declare-fun tp!684569 () Bool)

(declare-fun setElem!18888 () Context!3530)

(declare-fun setNonEmpty!18888 () Bool)

(declare-fun inv!34338 (Context!3530) Bool)

(assert (=> setNonEmpty!18888 (= setRes!18888 (and tp!684569 (inv!34338 setElem!18888) e!1405707))))

(declare-fun setRest!18888 () (InoxSet Context!3530))

(assert (=> setNonEmpty!18888 (= z!3888 ((_ map or) (store ((as const (Array Context!3530 Bool)) false) setElem!18888 true) setRest!18888))))

(declare-fun b!2199663 () Bool)

(assert (=> b!2199663 (= e!1405708 e!1405709)))

(declare-fun res!945332 () Bool)

(assert (=> b!2199663 (=> (not res!945332) (not e!1405709))))

(declare-fun lt!822857 () Int)

(assert (=> b!2199663 (= res!945332 (and (<= from!1082 lt!822857) (>= knownSize!10 0) (<= knownSize!10 (- lt!822857 from!1082))))))

(declare-fun size!19960 (BalanceConc!16424) Int)

(assert (=> b!2199663 (= lt!822857 (size!19960 totalInput!891))))

(assert (= (and start!213586 res!945335) b!2199663))

(assert (= (and b!2199663 res!945332) b!2199662))

(assert (= (and b!2199662 res!945333) b!2199659))

(assert (= (and b!2199659 res!945330) b!2199658))

(assert (= (and b!2199658 (not res!945334)) b!2199660))

(assert (= (and b!2199658 res!945331) b!2199661))

(assert (= start!213586 b!2199656))

(assert (= (and start!213586 condSetEmpty!18888) setIsEmpty!18888))

(assert (= (and start!213586 (not condSetEmpty!18888)) setNonEmpty!18888))

(assert (= setNonEmpty!18888 b!2199657))

(declare-fun m!2642535 () Bool)

(assert (=> setNonEmpty!18888 m!2642535))

(declare-fun m!2642537 () Bool)

(assert (=> b!2199658 m!2642537))

(declare-fun m!2642539 () Bool)

(assert (=> b!2199662 m!2642539))

(assert (=> b!2199662 m!2642539))

(declare-fun m!2642541 () Bool)

(assert (=> b!2199662 m!2642541))

(assert (=> b!2199662 m!2642541))

(declare-fun m!2642543 () Bool)

(assert (=> b!2199662 m!2642543))

(assert (=> b!2199662 m!2642543))

(declare-fun m!2642545 () Bool)

(assert (=> b!2199662 m!2642545))

(declare-fun m!2642547 () Bool)

(assert (=> b!2199656 m!2642547))

(declare-fun m!2642549 () Bool)

(assert (=> b!2199661 m!2642549))

(declare-fun m!2642551 () Bool)

(assert (=> b!2199663 m!2642551))

(declare-fun m!2642553 () Bool)

(assert (=> start!213586 m!2642553))

(check-sat (not b!2199661) (not b!2199656) (not b!2199662) (not b!2199657) (not start!213586) (not b!2199658) (not b!2199663) (not setNonEmpty!18888))
(check-sat)
