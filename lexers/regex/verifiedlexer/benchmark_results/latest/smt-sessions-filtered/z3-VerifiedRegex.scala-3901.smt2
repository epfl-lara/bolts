; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!214486 () Bool)

(assert start!214486)

(declare-fun b!2205683 () Bool)

(declare-fun res!948059 () Bool)

(declare-fun e!1409123 () Bool)

(assert (=> b!2205683 (=> (not res!948059) (not e!1409123))))

(declare-datatypes ((C!12684 0))(
  ( (C!12685 (val!7328 Int)) )
))
(declare-datatypes ((List!25842 0))(
  ( (Nil!25758) (Cons!25758 (h!31159 C!12684) (t!198486 List!25842)) )
))
(declare-datatypes ((IArray!16815 0))(
  ( (IArray!16816 (innerList!8465 List!25842)) )
))
(declare-datatypes ((Conc!8405 0))(
  ( (Node!8405 (left!19794 Conc!8405) (right!20124 Conc!8405) (csize!17040 Int) (cheight!8616 Int)) (Leaf!12307 (xs!11347 IArray!16815) (csize!17041 Int)) (Empty!8405) )
))
(declare-datatypes ((BalanceConc!16572 0))(
  ( (BalanceConc!16573 (c!352246 Conc!8405)) )
))
(declare-fun totalInput!891 () BalanceConc!16572)

(declare-fun isEmpty!14732 (BalanceConc!16572) Bool)

(assert (=> b!2205683 (= res!948059 (not (isEmpty!14732 totalInput!891)))))

(declare-fun b!2205684 () Bool)

(declare-fun e!1409127 () Bool)

(declare-fun tp!685836 () Bool)

(declare-fun inv!34726 (Conc!8405) Bool)

(assert (=> b!2205684 (= e!1409127 (and (inv!34726 (c!352246 totalInput!891)) tp!685836))))

(declare-fun b!2205685 () Bool)

(declare-fun e!1409121 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((Regex!6269 0))(
  ( (ElementMatch!6269 (c!352247 C!12684)) (Concat!10571 (regOne!13050 Regex!6269) (regTwo!13050 Regex!6269)) (EmptyExpr!6269) (Star!6269 (reg!6598 Regex!6269)) (EmptyLang!6269) (Union!6269 (regOne!13051 Regex!6269) (regTwo!13051 Regex!6269)) )
))
(declare-datatypes ((List!25843 0))(
  ( (Nil!25759) (Cons!25759 (h!31160 Regex!6269) (t!198487 List!25843)) )
))
(declare-datatypes ((Context!3678 0))(
  ( (Context!3679 (exprs!2339 List!25843)) )
))
(declare-fun z!3888 () (InoxSet Context!3678))

(declare-fun lostCauseZipper!365 ((InoxSet Context!3678)) Bool)

(assert (=> b!2205685 (= e!1409121 (lostCauseZipper!365 z!3888))))

(declare-fun b!2205686 () Bool)

(declare-fun e!1409125 () Bool)

(declare-fun lastNullablePos!161 () Int)

(declare-fun from!1082 () Int)

(assert (=> b!2205686 (= e!1409125 (= lastNullablePos!161 (- from!1082 1)))))

(declare-fun b!2205687 () Bool)

(assert (=> b!2205687 (= e!1409123 (not true))))

(assert (=> b!2205687 false))

(declare-datatypes ((Unit!38841 0))(
  ( (Unit!38842) )
))
(declare-fun lt!824750 () Unit!38841)

(declare-fun lt!824752 () List!25842)

(declare-fun lemmaLostCauseCannotMatch!37 ((InoxSet Context!3678) List!25842) Unit!38841)

(assert (=> b!2205687 (= lt!824750 (lemmaLostCauseCannotMatch!37 z!3888 lt!824752))))

(declare-fun b!2205688 () Bool)

(declare-fun e!1409126 () Bool)

(declare-fun e!1409122 () Bool)

(assert (=> b!2205688 (= e!1409126 e!1409122)))

(declare-fun res!948057 () Bool)

(assert (=> b!2205688 (=> (not res!948057) (not e!1409122))))

(declare-fun knownSize!10 () Int)

(declare-fun lt!824751 () Int)

(assert (=> b!2205688 (= res!948057 (and (<= from!1082 lt!824751) (>= knownSize!10 0) (<= knownSize!10 (- lt!824751 from!1082))))))

(declare-fun size!20072 (BalanceConc!16572) Int)

(assert (=> b!2205688 (= lt!824751 (size!20072 totalInput!891))))

(declare-fun setIsEmpty!19176 () Bool)

(declare-fun setRes!19176 () Bool)

(assert (=> setIsEmpty!19176 setRes!19176))

(declare-fun b!2205689 () Bool)

(assert (=> b!2205689 (= e!1409122 e!1409123)))

(declare-fun res!948054 () Bool)

(assert (=> b!2205689 (=> (not res!948054) (not e!1409123))))

(declare-fun matchZipper!355 ((InoxSet Context!3678) List!25842) Bool)

(assert (=> b!2205689 (= res!948054 (matchZipper!355 z!3888 lt!824752))))

(declare-fun take!447 (List!25842 Int) List!25842)

(declare-fun drop!1457 (List!25842 Int) List!25842)

(declare-fun list!9950 (BalanceConc!16572) List!25842)

(assert (=> b!2205689 (= lt!824752 (take!447 (drop!1457 (list!9950 totalInput!891) from!1082) knownSize!10))))

(declare-fun b!2205690 () Bool)

(declare-fun res!948055 () Bool)

(assert (=> b!2205690 (=> (not res!948055) (not e!1409123))))

(assert (=> b!2205690 (= res!948055 e!1409125)))

(declare-fun res!948058 () Bool)

(assert (=> b!2205690 (=> res!948058 e!1409125)))

(declare-fun nullableZipper!549 ((InoxSet Context!3678)) Bool)

(assert (=> b!2205690 (= res!948058 (not (nullableZipper!549 z!3888)))))

(declare-fun b!2205691 () Bool)

(declare-fun res!948049 () Bool)

(assert (=> b!2205691 (=> (not res!948049) (not e!1409123))))

(assert (=> b!2205691 (= res!948049 (lostCauseZipper!365 z!3888))))

(declare-fun b!2205692 () Bool)

(declare-fun res!948050 () Bool)

(assert (=> b!2205692 (=> (not res!948050) (not e!1409123))))

(assert (=> b!2205692 (= res!948050 (and (>= lastNullablePos!161 (- 1)) (< lastNullablePos!161 from!1082)))))

(declare-fun tp!685834 () Bool)

(declare-fun e!1409124 () Bool)

(declare-fun setElem!19176 () Context!3678)

(declare-fun setNonEmpty!19176 () Bool)

(declare-fun inv!34727 (Context!3678) Bool)

(assert (=> setNonEmpty!19176 (= setRes!19176 (and tp!685834 (inv!34727 setElem!19176) e!1409124))))

(declare-fun setRest!19176 () (InoxSet Context!3678))

(assert (=> setNonEmpty!19176 (= z!3888 ((_ map or) (store ((as const (Array Context!3678 Bool)) false) setElem!19176 true) setRest!19176))))

(declare-fun res!948053 () Bool)

(assert (=> start!214486 (=> (not res!948053) (not e!1409126))))

(assert (=> start!214486 (= res!948053 (>= from!1082 0))))

(assert (=> start!214486 e!1409126))

(assert (=> start!214486 true))

(declare-fun inv!34728 (BalanceConc!16572) Bool)

(assert (=> start!214486 (and (inv!34728 totalInput!891) e!1409127)))

(declare-fun condSetEmpty!19176 () Bool)

(assert (=> start!214486 (= condSetEmpty!19176 (= z!3888 ((as const (Array Context!3678 Bool)) false)))))

(assert (=> start!214486 setRes!19176))

(declare-fun b!2205693 () Bool)

(declare-fun res!948051 () Bool)

(assert (=> b!2205693 (=> (not res!948051) (not e!1409123))))

(assert (=> b!2205693 (= res!948051 (and (not (= knownSize!10 0)) (> knownSize!10 0)))))

(declare-fun b!2205694 () Bool)

(declare-fun tp!685835 () Bool)

(assert (=> b!2205694 (= e!1409124 tp!685835)))

(declare-fun b!2205695 () Bool)

(declare-fun res!948052 () Bool)

(assert (=> b!2205695 (=> (not res!948052) (not e!1409123))))

(assert (=> b!2205695 (= res!948052 e!1409121)))

(declare-fun res!948056 () Bool)

(assert (=> b!2205695 (=> res!948056 e!1409121)))

(assert (=> b!2205695 (= res!948056 (= from!1082 lt!824751))))

(assert (= (and start!214486 res!948053) b!2205688))

(assert (= (and b!2205688 res!948057) b!2205689))

(assert (= (and b!2205689 res!948054) b!2205692))

(assert (= (and b!2205692 res!948050) b!2205690))

(assert (= (and b!2205690 (not res!948058)) b!2205686))

(assert (= (and b!2205690 res!948055) b!2205683))

(assert (= (and b!2205683 res!948059) b!2205693))

(assert (= (and b!2205693 res!948051) b!2205695))

(assert (= (and b!2205695 (not res!948056)) b!2205685))

(assert (= (and b!2205695 res!948052) b!2205691))

(assert (= (and b!2205691 res!948049) b!2205687))

(assert (= start!214486 b!2205684))

(assert (= (and start!214486 condSetEmpty!19176) setIsEmpty!19176))

(assert (= (and start!214486 (not condSetEmpty!19176)) setNonEmpty!19176))

(assert (= setNonEmpty!19176 b!2205694))

(declare-fun m!2647515 () Bool)

(assert (=> b!2205685 m!2647515))

(declare-fun m!2647517 () Bool)

(assert (=> b!2205687 m!2647517))

(assert (=> b!2205691 m!2647515))

(declare-fun m!2647519 () Bool)

(assert (=> b!2205689 m!2647519))

(declare-fun m!2647521 () Bool)

(assert (=> b!2205689 m!2647521))

(assert (=> b!2205689 m!2647521))

(declare-fun m!2647523 () Bool)

(assert (=> b!2205689 m!2647523))

(assert (=> b!2205689 m!2647523))

(declare-fun m!2647525 () Bool)

(assert (=> b!2205689 m!2647525))

(declare-fun m!2647527 () Bool)

(assert (=> b!2205688 m!2647527))

(declare-fun m!2647529 () Bool)

(assert (=> b!2205690 m!2647529))

(declare-fun m!2647531 () Bool)

(assert (=> setNonEmpty!19176 m!2647531))

(declare-fun m!2647533 () Bool)

(assert (=> b!2205684 m!2647533))

(declare-fun m!2647535 () Bool)

(assert (=> b!2205683 m!2647535))

(declare-fun m!2647537 () Bool)

(assert (=> start!214486 m!2647537))

(check-sat (not b!2205690) (not b!2205688) (not start!214486) (not setNonEmpty!19176) (not b!2205694) (not b!2205684) (not b!2205683) (not b!2205689) (not b!2205687) (not b!2205685) (not b!2205691))
(check-sat)
