; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!213606 () Bool)

(assert start!213606)

(declare-fun b!2200020 () Bool)

(declare-fun e!1405911 () Bool)

(assert (=> b!2200020 (= e!1405911 (not true))))

(declare-fun lastNullablePos!161 () Int)

(declare-datatypes ((C!12556 0))(
  ( (C!12557 (val!7264 Int)) )
))
(declare-datatypes ((List!25704 0))(
  ( (Nil!25620) (Cons!25620 (h!31021 C!12556) (t!198322 List!25704)) )
))
(declare-datatypes ((IArray!16687 0))(
  ( (IArray!16688 (innerList!8401 List!25704)) )
))
(declare-datatypes ((Conc!8341 0))(
  ( (Node!8341 (left!19678 Conc!8341) (right!20008 Conc!8341) (csize!16912 Int) (cheight!8552 Int)) (Leaf!12211 (xs!11283 IArray!16687) (csize!16913 Int)) (Empty!8341) )
))
(declare-datatypes ((BalanceConc!16444 0))(
  ( (BalanceConc!16445 (c!350868 Conc!8341)) )
))
(declare-fun totalInput!891 () BalanceConc!16444)

(declare-fun lt!822964 () Int)

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((Regex!6205 0))(
  ( (ElementMatch!6205 (c!350869 C!12556)) (Concat!10507 (regOne!12922 Regex!6205) (regTwo!12922 Regex!6205)) (EmptyExpr!6205) (Star!6205 (reg!6534 Regex!6205)) (EmptyLang!6205) (Union!6205 (regOne!12923 Regex!6205) (regTwo!12923 Regex!6205)) )
))
(declare-datatypes ((List!25705 0))(
  ( (Nil!25621) (Cons!25621 (h!31022 Regex!6205) (t!198323 List!25705)) )
))
(declare-datatypes ((Context!3550 0))(
  ( (Context!3551 (exprs!2275 List!25705)) )
))
(declare-fun z!3888 () (InoxSet Context!3550))

(declare-fun from!1082 () Int)

(declare-fun furthestNullablePosition!367 ((InoxSet Context!3550) Int BalanceConc!16444 Int Int) Int)

(assert (=> b!2200020 (= (furthestNullablePosition!367 z!3888 from!1082 totalInput!891 lt!822964 lastNullablePos!161) lastNullablePos!161)))

(declare-fun b!2200021 () Bool)

(declare-fun res!945617 () Bool)

(declare-fun e!1405908 () Bool)

(assert (=> b!2200021 (=> (not res!945617) (not e!1405908))))

(declare-fun isEmpty!14614 (BalanceConc!16444) Bool)

(assert (=> b!2200021 (= res!945617 (not (isEmpty!14614 totalInput!891)))))

(declare-fun b!2200022 () Bool)

(declare-datatypes ((Unit!38741 0))(
  ( (Unit!38742) )
))
(declare-fun e!1405906 () Unit!38741)

(declare-fun Unit!38743 () Unit!38741)

(assert (=> b!2200022 (= e!1405906 Unit!38743)))

(declare-fun b!2200023 () Bool)

(declare-fun res!945614 () Bool)

(assert (=> b!2200023 (=> (not res!945614) (not e!1405911))))

(declare-fun lt!822963 () List!25704)

(declare-fun isEmpty!14615 (List!25704) Bool)

(assert (=> b!2200023 (= res!945614 (isEmpty!14615 lt!822963))))

(declare-fun b!2200024 () Bool)

(declare-fun e!1405914 () Bool)

(assert (=> b!2200024 (= e!1405914 e!1405908)))

(declare-fun res!945620 () Bool)

(assert (=> b!2200024 (=> (not res!945620) (not e!1405908))))

(declare-fun lt!822961 () Bool)

(assert (=> b!2200024 (= res!945620 (or lt!822961 (= lastNullablePos!161 (- from!1082 1))))))

(declare-fun nullableZipper!485 ((InoxSet Context!3550)) Bool)

(assert (=> b!2200024 (= lt!822961 (not (nullableZipper!485 z!3888)))))

(declare-fun setIsEmpty!18918 () Bool)

(declare-fun setRes!18918 () Bool)

(assert (=> setIsEmpty!18918 setRes!18918))

(declare-fun e!1405910 () Bool)

(declare-fun setNonEmpty!18918 () Bool)

(declare-fun tp!684660 () Bool)

(declare-fun setElem!18918 () Context!3550)

(declare-fun inv!34381 (Context!3550) Bool)

(assert (=> setNonEmpty!18918 (= setRes!18918 (and tp!684660 (inv!34381 setElem!18918) e!1405910))))

(declare-fun setRest!18918 () (InoxSet Context!3550))

(assert (=> setNonEmpty!18918 (= z!3888 ((_ map or) (store ((as const (Array Context!3550 Bool)) false) setElem!18918 true) setRest!18918))))

(declare-fun b!2200026 () Bool)

(declare-fun res!945615 () Bool)

(assert (=> b!2200026 (=> (not res!945615) (not e!1405911))))

(assert (=> b!2200026 (= res!945615 (and (not lt!822961) (= lastNullablePos!161 (- from!1082 1))))))

(declare-fun b!2200027 () Bool)

(declare-fun e!1405909 () Bool)

(declare-fun lostCauseZipper!315 ((InoxSet Context!3550)) Bool)

(assert (=> b!2200027 (= e!1405909 (lostCauseZipper!315 z!3888))))

(declare-fun b!2200028 () Bool)

(declare-fun res!945618 () Bool)

(assert (=> b!2200028 (=> (not res!945618) (not e!1405908))))

(declare-fun knownSize!10 () Int)

(assert (=> b!2200028 (= res!945618 (and (not (= knownSize!10 0)) (> knownSize!10 0)))))

(declare-fun b!2200029 () Bool)

(declare-fun e!1405907 () Bool)

(assert (=> b!2200029 (= e!1405908 e!1405907)))

(declare-fun res!945613 () Bool)

(assert (=> b!2200029 (=> (not res!945613) (not e!1405907))))

(assert (=> b!2200029 (= res!945613 e!1405909)))

(declare-fun res!945623 () Bool)

(assert (=> b!2200029 (=> res!945623 e!1405909)))

(declare-fun lt!822959 () Bool)

(assert (=> b!2200029 (= res!945623 lt!822959)))

(assert (=> b!2200029 (= lt!822959 (= from!1082 lt!822964))))

(declare-fun b!2200030 () Bool)

(declare-fun e!1405915 () Bool)

(assert (=> b!2200030 (= e!1405915 e!1405914)))

(declare-fun res!945621 () Bool)

(assert (=> b!2200030 (=> (not res!945621) (not e!1405914))))

(declare-fun lt!822960 () List!25704)

(declare-fun matchZipper!291 ((InoxSet Context!3550) List!25704) Bool)

(assert (=> b!2200030 (= res!945621 (matchZipper!291 z!3888 lt!822960))))

(declare-fun take!383 (List!25704 Int) List!25704)

(assert (=> b!2200030 (= lt!822960 (take!383 lt!822963 knownSize!10))))

(declare-fun drop!1393 (List!25704 Int) List!25704)

(declare-fun list!9863 (BalanceConc!16444) List!25704)

(assert (=> b!2200030 (= lt!822963 (drop!1393 (list!9863 totalInput!891) from!1082))))

(declare-fun b!2200031 () Bool)

(declare-fun e!1405913 () Bool)

(assert (=> b!2200031 (= e!1405913 e!1405915)))

(declare-fun res!945616 () Bool)

(assert (=> b!2200031 (=> (not res!945616) (not e!1405915))))

(assert (=> b!2200031 (= res!945616 (and (<= from!1082 lt!822964) (>= knownSize!10 0) (<= knownSize!10 (- lt!822964 from!1082))))))

(declare-fun size!19970 (BalanceConc!16444) Int)

(assert (=> b!2200031 (= lt!822964 (size!19970 totalInput!891))))

(declare-fun b!2200025 () Bool)

(declare-fun Unit!38744 () Unit!38741)

(assert (=> b!2200025 (= e!1405906 Unit!38744)))

(declare-fun lt!822965 () Unit!38741)

(declare-fun lemmaLostCauseCannotMatch!25 ((InoxSet Context!3550) List!25704) Unit!38741)

(assert (=> b!2200025 (= lt!822965 (lemmaLostCauseCannotMatch!25 z!3888 lt!822960))))

(assert (=> b!2200025 false))

(declare-fun res!945622 () Bool)

(assert (=> start!213606 (=> (not res!945622) (not e!1405913))))

(assert (=> start!213606 (= res!945622 (>= from!1082 0))))

(assert (=> start!213606 e!1405913))

(assert (=> start!213606 true))

(declare-fun e!1405912 () Bool)

(declare-fun inv!34382 (BalanceConc!16444) Bool)

(assert (=> start!213606 (and (inv!34382 totalInput!891) e!1405912)))

(declare-fun condSetEmpty!18918 () Bool)

(assert (=> start!213606 (= condSetEmpty!18918 (= z!3888 ((as const (Array Context!3550 Bool)) false)))))

(assert (=> start!213606 setRes!18918))

(declare-fun b!2200032 () Bool)

(declare-fun res!945612 () Bool)

(assert (=> b!2200032 (=> (not res!945612) (not e!1405914))))

(assert (=> b!2200032 (= res!945612 (and (>= lastNullablePos!161 (- 1)) (< lastNullablePos!161 from!1082)))))

(declare-fun b!2200033 () Bool)

(assert (=> b!2200033 (= e!1405907 e!1405911)))

(declare-fun res!945619 () Bool)

(assert (=> b!2200033 (=> (not res!945619) (not e!1405911))))

(declare-fun lt!822966 () Bool)

(assert (=> b!2200033 (= res!945619 (and (not lt!822966) lt!822959))))

(declare-fun lt!822962 () Unit!38741)

(assert (=> b!2200033 (= lt!822962 e!1405906)))

(declare-fun c!350867 () Bool)

(assert (=> b!2200033 (= c!350867 lt!822966)))

(assert (=> b!2200033 (= lt!822966 (lostCauseZipper!315 z!3888))))

(declare-fun b!2200034 () Bool)

(declare-fun tp!684658 () Bool)

(declare-fun inv!34383 (Conc!8341) Bool)

(assert (=> b!2200034 (= e!1405912 (and (inv!34383 (c!350868 totalInput!891)) tp!684658))))

(declare-fun b!2200035 () Bool)

(declare-fun tp!684659 () Bool)

(assert (=> b!2200035 (= e!1405910 tp!684659)))

(assert (= (and start!213606 res!945622) b!2200031))

(assert (= (and b!2200031 res!945616) b!2200030))

(assert (= (and b!2200030 res!945621) b!2200032))

(assert (= (and b!2200032 res!945612) b!2200024))

(assert (= (and b!2200024 res!945620) b!2200021))

(assert (= (and b!2200021 res!945617) b!2200028))

(assert (= (and b!2200028 res!945618) b!2200029))

(assert (= (and b!2200029 (not res!945623)) b!2200027))

(assert (= (and b!2200029 res!945613) b!2200033))

(assert (= (and b!2200033 c!350867) b!2200025))

(assert (= (and b!2200033 (not c!350867)) b!2200022))

(assert (= (and b!2200033 res!945619) b!2200023))

(assert (= (and b!2200023 res!945614) b!2200026))

(assert (= (and b!2200026 res!945615) b!2200020))

(assert (= start!213606 b!2200034))

(assert (= (and start!213606 condSetEmpty!18918) setIsEmpty!18918))

(assert (= (and start!213606 (not condSetEmpty!18918)) setNonEmpty!18918))

(assert (= setNonEmpty!18918 b!2200035))

(declare-fun m!2642763 () Bool)

(assert (=> start!213606 m!2642763))

(declare-fun m!2642765 () Bool)

(assert (=> setNonEmpty!18918 m!2642765))

(declare-fun m!2642767 () Bool)

(assert (=> b!2200025 m!2642767))

(declare-fun m!2642769 () Bool)

(assert (=> b!2200020 m!2642769))

(declare-fun m!2642771 () Bool)

(assert (=> b!2200033 m!2642771))

(declare-fun m!2642773 () Bool)

(assert (=> b!2200023 m!2642773))

(assert (=> b!2200027 m!2642771))

(declare-fun m!2642775 () Bool)

(assert (=> b!2200024 m!2642775))

(declare-fun m!2642777 () Bool)

(assert (=> b!2200034 m!2642777))

(declare-fun m!2642779 () Bool)

(assert (=> b!2200021 m!2642779))

(declare-fun m!2642781 () Bool)

(assert (=> b!2200031 m!2642781))

(declare-fun m!2642783 () Bool)

(assert (=> b!2200030 m!2642783))

(declare-fun m!2642785 () Bool)

(assert (=> b!2200030 m!2642785))

(declare-fun m!2642787 () Bool)

(assert (=> b!2200030 m!2642787))

(assert (=> b!2200030 m!2642787))

(declare-fun m!2642789 () Bool)

(assert (=> b!2200030 m!2642789))

(check-sat (not b!2200023) (not b!2200033) (not b!2200034) (not b!2200035) (not b!2200021) (not b!2200024) (not b!2200025) (not setNonEmpty!18918) (not b!2200020) (not b!2200027) (not b!2200030) (not b!2200031) (not start!213606))
(check-sat)
