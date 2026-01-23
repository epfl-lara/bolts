; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!212518 () Bool)

(assert start!212518)

(declare-fun b!2190944 () Bool)

(declare-fun e!1400083 () Bool)

(declare-fun tp!683002 () Bool)

(assert (=> b!2190944 (= e!1400083 tp!683002)))

(declare-fun b!2190945 () Bool)

(declare-fun e!1400084 () Bool)

(declare-datatypes ((C!12348 0))(
  ( (C!12349 (val!7160 Int)) )
))
(declare-datatypes ((List!25475 0))(
  ( (Nil!25391) (Cons!25391 (h!30792 C!12348) (t!198073 List!25475)) )
))
(declare-datatypes ((IArray!16479 0))(
  ( (IArray!16480 (innerList!8297 List!25475)) )
))
(declare-datatypes ((Conc!8237 0))(
  ( (Node!8237 (left!19482 Conc!8237) (right!19812 Conc!8237) (csize!16704 Int) (cheight!8448 Int)) (Leaf!12055 (xs!11179 IArray!16479) (csize!16705 Int)) (Empty!8237) )
))
(declare-datatypes ((BalanceConc!16236 0))(
  ( (BalanceConc!16237 (c!348514 Conc!8237)) )
))
(declare-fun totalInput!923 () BalanceConc!16236)

(declare-fun tp!683000 () Bool)

(declare-fun inv!33855 (Conc!8237) Bool)

(assert (=> b!2190945 (= e!1400084 (and (inv!33855 (c!348514 totalInput!923)) tp!683000))))

(declare-fun setIsEmpty!18528 () Bool)

(declare-fun setRes!18528 () Bool)

(assert (=> setIsEmpty!18528 setRes!18528))

(declare-fun e!1400087 () Bool)

(declare-fun from!1114 () Int)

(declare-fun lt!818701 () Int)

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((Regex!6101 0))(
  ( (ElementMatch!6101 (c!348515 C!12348)) (Concat!10403 (regOne!12714 Regex!6101) (regTwo!12714 Regex!6101)) (EmptyExpr!6101) (Star!6101 (reg!6430 Regex!6101)) (EmptyLang!6101) (Union!6101 (regOne!12715 Regex!6101) (regTwo!12715 Regex!6101)) )
))
(declare-datatypes ((List!25476 0))(
  ( (Nil!25392) (Cons!25392 (h!30793 Regex!6101) (t!198074 List!25476)) )
))
(declare-datatypes ((Context!3342 0))(
  ( (Context!3343 (exprs!2171 List!25476)) )
))
(declare-fun lt!818696 () (InoxSet Context!3342))

(declare-fun b!2190946 () Bool)

(declare-fun matchZipper!201 ((InoxSet Context!3342) List!25475) Bool)

(declare-fun take!293 (List!25475 Int) List!25475)

(declare-fun drop!1303 (List!25475 Int) List!25475)

(declare-fun list!9748 (BalanceConc!16236) List!25475)

(assert (=> b!2190946 (= e!1400087 (matchZipper!201 lt!818696 (take!293 (drop!1303 (list!9748 totalInput!923) (+ 1 from!1114)) lt!818701)))))

(declare-fun b!2190947 () Bool)

(declare-fun res!941588 () Bool)

(declare-fun e!1400082 () Bool)

(assert (=> b!2190947 (=> (not res!941588) (not e!1400082))))

(declare-fun e!1400089 () Bool)

(assert (=> b!2190947 (= res!941588 e!1400089)))

(declare-fun res!941595 () Bool)

(assert (=> b!2190947 (=> res!941595 e!1400089)))

(declare-fun z!3955 () (InoxSet Context!3342))

(declare-fun nullableZipper!381 ((InoxSet Context!3342)) Bool)

(assert (=> b!2190947 (= res!941595 (not (nullableZipper!381 z!3955)))))

(declare-fun setElem!18528 () Context!3342)

(declare-fun setNonEmpty!18528 () Bool)

(declare-fun tp!683001 () Bool)

(declare-fun inv!33856 (Context!3342) Bool)

(assert (=> setNonEmpty!18528 (= setRes!18528 (and tp!683001 (inv!33856 setElem!18528) e!1400083))))

(declare-fun setRest!18528 () (InoxSet Context!3342))

(assert (=> setNonEmpty!18528 (= z!3955 ((_ map or) (store ((as const (Array Context!3342 Bool)) false) setElem!18528 true) setRest!18528))))

(declare-fun b!2190948 () Bool)

(declare-fun e!1400088 () Bool)

(assert (=> b!2190948 (= e!1400082 e!1400088)))

(declare-fun res!941592 () Bool)

(assert (=> b!2190948 (=> (not res!941592) (not e!1400088))))

(declare-fun lt!818699 () Int)

(declare-fun lt!818698 () Int)

(assert (=> b!2190948 (= res!941592 (= lt!818699 lt!818698))))

(declare-fun lt!818697 () Int)

(declare-fun lt!818702 () Int)

(declare-fun furthestNullablePosition!271 ((InoxSet Context!3342) Int BalanceConc!16236 Int Int) Int)

(assert (=> b!2190948 (= lt!818698 (furthestNullablePosition!271 lt!818696 (+ 1 from!1114) totalInput!923 lt!818702 lt!818697))))

(declare-fun lastNullablePos!193 () Int)

(assert (=> b!2190948 (= lt!818699 (furthestNullablePosition!271 z!3955 from!1114 totalInput!923 lt!818702 lastNullablePos!193))))

(declare-fun e!1400085 () Int)

(assert (=> b!2190948 (= lt!818697 e!1400085)))

(declare-fun c!348513 () Bool)

(assert (=> b!2190948 (= c!348513 (nullableZipper!381 lt!818696))))

(declare-fun derivationStepZipper!178 ((InoxSet Context!3342) C!12348) (InoxSet Context!3342))

(declare-fun apply!6134 (BalanceConc!16236 Int) C!12348)

(assert (=> b!2190948 (= lt!818696 (derivationStepZipper!178 z!3955 (apply!6134 totalInput!923 from!1114)))))

(declare-fun b!2190950 () Bool)

(declare-fun res!941590 () Bool)

(assert (=> b!2190950 (=> (not res!941590) (not e!1400082))))

(assert (=> b!2190950 (= res!941590 (not (= from!1114 lt!818702)))))

(declare-fun b!2190951 () Bool)

(declare-fun res!941589 () Bool)

(assert (=> b!2190951 (=> (not res!941589) (not e!1400082))))

(declare-fun lostCauseZipper!219 ((InoxSet Context!3342)) Bool)

(assert (=> b!2190951 (= res!941589 (not (lostCauseZipper!219 z!3955)))))

(declare-fun b!2190952 () Bool)

(assert (=> b!2190952 (= e!1400085 lastNullablePos!193)))

(declare-fun b!2190953 () Bool)

(assert (=> b!2190953 (= e!1400089 (= lastNullablePos!193 (- from!1114 1)))))

(declare-fun b!2190954 () Bool)

(assert (=> b!2190954 (= e!1400085 from!1114)))

(declare-fun b!2190955 () Bool)

(assert (=> b!2190955 (= e!1400088 (not (or (> lt!818701 0) (> lt!818698 from!1114) (< lt!818698 lt!818697) (< lt!818697 lastNullablePos!193) (> lt!818697 from!1114) (and (not (= lt!818697 from!1114)) (not (= lt!818697 lastNullablePos!193))) (< (+ 1 from!1114) 0) (> (+ 1 from!1114) lt!818702) (and (>= lt!818697 (- 1)) (< lt!818697 (+ 1 from!1114))))))))

(assert (=> b!2190955 e!1400087))

(declare-fun res!941593 () Bool)

(assert (=> b!2190955 (=> res!941593 e!1400087)))

(assert (=> b!2190955 (= res!941593 (<= lt!818701 0))))

(assert (=> b!2190955 (= lt!818701 (+ 1 (- lt!818698 (+ 1 from!1114))))))

(declare-datatypes ((Unit!38497 0))(
  ( (Unit!38498) )
))
(declare-fun lt!818700 () Unit!38497)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmptyRecV3!106 ((InoxSet Context!3342) Int BalanceConc!16236 Int) Unit!38497)

(assert (=> b!2190955 (= lt!818700 (longestMatchIsAcceptedByMatchOrIsEmptyRecV3!106 lt!818696 (+ 1 from!1114) totalInput!923 lt!818697))))

(declare-fun b!2190949 () Bool)

(declare-fun e!1400086 () Bool)

(assert (=> b!2190949 (= e!1400086 e!1400082)))

(declare-fun res!941594 () Bool)

(assert (=> b!2190949 (=> (not res!941594) (not e!1400082))))

(assert (=> b!2190949 (= res!941594 (and (<= from!1114 lt!818702) (>= lastNullablePos!193 (- 1)) (< lastNullablePos!193 from!1114)))))

(declare-fun size!19817 (BalanceConc!16236) Int)

(assert (=> b!2190949 (= lt!818702 (size!19817 totalInput!923))))

(declare-fun res!941591 () Bool)

(assert (=> start!212518 (=> (not res!941591) (not e!1400086))))

(assert (=> start!212518 (= res!941591 (>= from!1114 0))))

(assert (=> start!212518 e!1400086))

(assert (=> start!212518 true))

(declare-fun inv!33857 (BalanceConc!16236) Bool)

(assert (=> start!212518 (and (inv!33857 totalInput!923) e!1400084)))

(declare-fun condSetEmpty!18528 () Bool)

(assert (=> start!212518 (= condSetEmpty!18528 (= z!3955 ((as const (Array Context!3342 Bool)) false)))))

(assert (=> start!212518 setRes!18528))

(assert (= (and start!212518 res!941591) b!2190949))

(assert (= (and b!2190949 res!941594) b!2190947))

(assert (= (and b!2190947 (not res!941595)) b!2190953))

(assert (= (and b!2190947 res!941588) b!2190950))

(assert (= (and b!2190950 res!941590) b!2190951))

(assert (= (and b!2190951 res!941589) b!2190948))

(assert (= (and b!2190948 c!348513) b!2190954))

(assert (= (and b!2190948 (not c!348513)) b!2190952))

(assert (= (and b!2190948 res!941592) b!2190955))

(assert (= (and b!2190955 (not res!941593)) b!2190946))

(assert (= start!212518 b!2190945))

(assert (= (and start!212518 condSetEmpty!18528) setIsEmpty!18528))

(assert (= (and start!212518 (not condSetEmpty!18528)) setNonEmpty!18528))

(assert (= setNonEmpty!18528 b!2190944))

(declare-fun m!2633795 () Bool)

(assert (=> b!2190955 m!2633795))

(declare-fun m!2633797 () Bool)

(assert (=> b!2190951 m!2633797))

(declare-fun m!2633799 () Bool)

(assert (=> start!212518 m!2633799))

(declare-fun m!2633801 () Bool)

(assert (=> setNonEmpty!18528 m!2633801))

(declare-fun m!2633803 () Bool)

(assert (=> b!2190946 m!2633803))

(assert (=> b!2190946 m!2633803))

(declare-fun m!2633805 () Bool)

(assert (=> b!2190946 m!2633805))

(assert (=> b!2190946 m!2633805))

(declare-fun m!2633807 () Bool)

(assert (=> b!2190946 m!2633807))

(assert (=> b!2190946 m!2633807))

(declare-fun m!2633809 () Bool)

(assert (=> b!2190946 m!2633809))

(declare-fun m!2633811 () Bool)

(assert (=> b!2190945 m!2633811))

(declare-fun m!2633813 () Bool)

(assert (=> b!2190948 m!2633813))

(declare-fun m!2633815 () Bool)

(assert (=> b!2190948 m!2633815))

(declare-fun m!2633817 () Bool)

(assert (=> b!2190948 m!2633817))

(declare-fun m!2633819 () Bool)

(assert (=> b!2190948 m!2633819))

(assert (=> b!2190948 m!2633817))

(declare-fun m!2633821 () Bool)

(assert (=> b!2190948 m!2633821))

(declare-fun m!2633823 () Bool)

(assert (=> b!2190949 m!2633823))

(declare-fun m!2633825 () Bool)

(assert (=> b!2190947 m!2633825))

(check-sat (not b!2190946) (not b!2190945) (not b!2190948) (not b!2190951) (not b!2190947) (not setNonEmpty!18528) (not b!2190944) (not b!2190949) (not b!2190955) (not start!212518))
(check-sat)
