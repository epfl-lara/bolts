; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!213630 () Bool)

(assert start!213630)

(declare-fun b!2200443 () Bool)

(declare-fun res!945946 () Bool)

(declare-fun e!1406112 () Bool)

(assert (=> b!2200443 (=> (not res!945946) (not e!1406112))))

(declare-fun lastNullablePos!161 () Int)

(declare-fun from!1082 () Int)

(assert (=> b!2200443 (= res!945946 (and (>= lastNullablePos!161 (- 1)) (< lastNullablePos!161 from!1082)))))

(declare-fun b!2200444 () Bool)

(declare-fun e!1406107 () Bool)

(declare-fun tp!684768 () Bool)

(assert (=> b!2200444 (= e!1406107 tp!684768)))

(declare-fun b!2200445 () Bool)

(declare-fun e!1406109 () Int)

(assert (=> b!2200445 (= e!1406109 from!1082)))

(declare-fun b!2200446 () Bool)

(declare-fun e!1406110 () Bool)

(declare-fun e!1406113 () Bool)

(assert (=> b!2200446 (= e!1406110 e!1406113)))

(declare-fun res!945939 () Bool)

(assert (=> b!2200446 (=> (not res!945939) (not e!1406113))))

(declare-fun knownSize!10 () Int)

(declare-fun lt!823056 () Int)

(assert (=> b!2200446 (= res!945939 (and (<= from!1082 lt!823056) (>= knownSize!10 0) (<= knownSize!10 (- lt!823056 from!1082))))))

(declare-datatypes ((C!12580 0))(
  ( (C!12581 (val!7276 Int)) )
))
(declare-datatypes ((List!25728 0))(
  ( (Nil!25644) (Cons!25644 (h!31045 C!12580) (t!198346 List!25728)) )
))
(declare-datatypes ((IArray!16711 0))(
  ( (IArray!16712 (innerList!8413 List!25728)) )
))
(declare-datatypes ((Conc!8353 0))(
  ( (Node!8353 (left!19696 Conc!8353) (right!20026 Conc!8353) (csize!16936 Int) (cheight!8564 Int)) (Leaf!12229 (xs!11295 IArray!16711) (csize!16937 Int)) (Empty!8353) )
))
(declare-datatypes ((BalanceConc!16468 0))(
  ( (BalanceConc!16469 (c!350904 Conc!8353)) )
))
(declare-fun totalInput!891 () BalanceConc!16468)

(declare-fun size!19983 (BalanceConc!16468) Int)

(assert (=> b!2200446 (= lt!823056 (size!19983 totalInput!891))))

(declare-fun setIsEmpty!18954 () Bool)

(declare-fun setRes!18954 () Bool)

(assert (=> setIsEmpty!18954 setRes!18954))

(declare-fun b!2200447 () Bool)

(declare-fun res!945942 () Bool)

(assert (=> b!2200447 (=> (not res!945942) (not e!1406112))))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((Regex!6217 0))(
  ( (ElementMatch!6217 (c!350905 C!12580)) (Concat!10519 (regOne!12946 Regex!6217) (regTwo!12946 Regex!6217)) (EmptyExpr!6217) (Star!6217 (reg!6546 Regex!6217)) (EmptyLang!6217) (Union!6217 (regOne!12947 Regex!6217) (regTwo!12947 Regex!6217)) )
))
(declare-datatypes ((List!25729 0))(
  ( (Nil!25645) (Cons!25645 (h!31046 Regex!6217) (t!198347 List!25729)) )
))
(declare-datatypes ((Context!3574 0))(
  ( (Context!3575 (exprs!2287 List!25729)) )
))
(declare-fun z!3888 () (InoxSet Context!3574))

(declare-fun lostCauseZipper!327 ((InoxSet Context!3574)) Bool)

(assert (=> b!2200447 (= res!945942 (not (lostCauseZipper!327 z!3888)))))

(declare-fun b!2200448 () Bool)

(declare-fun res!945947 () Bool)

(assert (=> b!2200448 (=> (not res!945947) (not e!1406112))))

(assert (=> b!2200448 (= res!945947 (and (not (= knownSize!10 0)) (> knownSize!10 0) (not (= from!1082 lt!823056))))))

(declare-fun setNonEmpty!18954 () Bool)

(declare-fun setElem!18954 () Context!3574)

(declare-fun tp!684766 () Bool)

(declare-fun inv!34435 (Context!3574) Bool)

(assert (=> setNonEmpty!18954 (= setRes!18954 (and tp!684766 (inv!34435 setElem!18954) e!1406107))))

(declare-fun setRest!18954 () (InoxSet Context!3574))

(assert (=> setNonEmpty!18954 (= z!3888 ((_ map or) (store ((as const (Array Context!3574 Bool)) false) setElem!18954 true) setRest!18954))))

(declare-fun b!2200449 () Bool)

(declare-fun e!1406108 () Bool)

(assert (=> b!2200449 (= e!1406108 (= lastNullablePos!161 (- from!1082 1)))))

(declare-fun b!2200450 () Bool)

(declare-fun res!945945 () Bool)

(assert (=> b!2200450 (=> (not res!945945) (not e!1406112))))

(declare-fun isEmpty!14627 (BalanceConc!16468) Bool)

(assert (=> b!2200450 (= res!945945 (not (isEmpty!14627 totalInput!891)))))

(declare-fun b!2200451 () Bool)

(assert (=> b!2200451 (= e!1406112 false)))

(declare-fun lt!823052 () Int)

(declare-fun lt!823054 () List!25728)

(declare-fun size!19984 (List!25728) Int)

(assert (=> b!2200451 (= lt!823052 (size!19984 lt!823054))))

(declare-fun lt!823055 () (InoxSet Context!3574))

(declare-fun lt!823053 () Int)

(declare-fun furthestNullablePosition!369 ((InoxSet Context!3574) Int BalanceConc!16468 Int Int) Int)

(assert (=> b!2200451 (= lt!823053 (furthestNullablePosition!369 lt!823055 (+ 1 from!1082) totalInput!891 lt!823056 e!1406109))))

(declare-fun c!350903 () Bool)

(declare-fun nullableZipper!497 ((InoxSet Context!3574)) Bool)

(assert (=> b!2200451 (= c!350903 (nullableZipper!497 lt!823055))))

(declare-fun derivationStepZipper!275 ((InoxSet Context!3574) C!12580) (InoxSet Context!3574))

(declare-fun apply!6293 (BalanceConc!16468 Int) C!12580)

(assert (=> b!2200451 (= lt!823055 (derivationStepZipper!275 z!3888 (apply!6293 totalInput!891 from!1082)))))

(declare-fun b!2200452 () Bool)

(assert (=> b!2200452 (= e!1406109 lastNullablePos!161)))

(declare-fun b!2200453 () Bool)

(assert (=> b!2200453 (= e!1406113 e!1406112)))

(declare-fun res!945941 () Bool)

(assert (=> b!2200453 (=> (not res!945941) (not e!1406112))))

(declare-fun matchZipper!303 ((InoxSet Context!3574) List!25728) Bool)

(declare-fun take!395 (List!25728 Int) List!25728)

(declare-fun drop!1405 (List!25728 Int) List!25728)

(assert (=> b!2200453 (= res!945941 (matchZipper!303 z!3888 (take!395 (drop!1405 lt!823054 from!1082) knownSize!10)))))

(declare-fun list!9875 (BalanceConc!16468) List!25728)

(assert (=> b!2200453 (= lt!823054 (list!9875 totalInput!891))))

(declare-fun res!945944 () Bool)

(assert (=> start!213630 (=> (not res!945944) (not e!1406110))))

(assert (=> start!213630 (= res!945944 (>= from!1082 0))))

(assert (=> start!213630 e!1406110))

(assert (=> start!213630 true))

(declare-fun e!1406111 () Bool)

(declare-fun inv!34436 (BalanceConc!16468) Bool)

(assert (=> start!213630 (and (inv!34436 totalInput!891) e!1406111)))

(declare-fun condSetEmpty!18954 () Bool)

(assert (=> start!213630 (= condSetEmpty!18954 (= z!3888 ((as const (Array Context!3574 Bool)) false)))))

(assert (=> start!213630 setRes!18954))

(declare-fun b!2200454 () Bool)

(declare-fun tp!684767 () Bool)

(declare-fun inv!34437 (Conc!8353) Bool)

(assert (=> b!2200454 (= e!1406111 (and (inv!34437 (c!350904 totalInput!891)) tp!684767))))

(declare-fun b!2200455 () Bool)

(declare-fun res!945940 () Bool)

(assert (=> b!2200455 (=> (not res!945940) (not e!1406112))))

(assert (=> b!2200455 (= res!945940 e!1406108)))

(declare-fun res!945943 () Bool)

(assert (=> b!2200455 (=> res!945943 e!1406108)))

(assert (=> b!2200455 (= res!945943 (not (nullableZipper!497 z!3888)))))

(assert (= (and start!213630 res!945944) b!2200446))

(assert (= (and b!2200446 res!945939) b!2200453))

(assert (= (and b!2200453 res!945941) b!2200443))

(assert (= (and b!2200443 res!945946) b!2200455))

(assert (= (and b!2200455 (not res!945943)) b!2200449))

(assert (= (and b!2200455 res!945940) b!2200450))

(assert (= (and b!2200450 res!945945) b!2200448))

(assert (= (and b!2200448 res!945947) b!2200447))

(assert (= (and b!2200447 res!945942) b!2200451))

(assert (= (and b!2200451 c!350903) b!2200445))

(assert (= (and b!2200451 (not c!350903)) b!2200452))

(assert (= start!213630 b!2200454))

(assert (= (and start!213630 condSetEmpty!18954) setIsEmpty!18954))

(assert (= (and start!213630 (not condSetEmpty!18954)) setNonEmpty!18954))

(assert (= setNonEmpty!18954 b!2200444))

(declare-fun m!2643091 () Bool)

(assert (=> start!213630 m!2643091))

(declare-fun m!2643093 () Bool)

(assert (=> b!2200454 m!2643093))

(declare-fun m!2643095 () Bool)

(assert (=> setNonEmpty!18954 m!2643095))

(declare-fun m!2643097 () Bool)

(assert (=> b!2200453 m!2643097))

(assert (=> b!2200453 m!2643097))

(declare-fun m!2643099 () Bool)

(assert (=> b!2200453 m!2643099))

(assert (=> b!2200453 m!2643099))

(declare-fun m!2643101 () Bool)

(assert (=> b!2200453 m!2643101))

(declare-fun m!2643103 () Bool)

(assert (=> b!2200453 m!2643103))

(declare-fun m!2643105 () Bool)

(assert (=> b!2200451 m!2643105))

(declare-fun m!2643107 () Bool)

(assert (=> b!2200451 m!2643107))

(declare-fun m!2643109 () Bool)

(assert (=> b!2200451 m!2643109))

(assert (=> b!2200451 m!2643109))

(declare-fun m!2643111 () Bool)

(assert (=> b!2200451 m!2643111))

(declare-fun m!2643113 () Bool)

(assert (=> b!2200451 m!2643113))

(declare-fun m!2643115 () Bool)

(assert (=> b!2200447 m!2643115))

(declare-fun m!2643117 () Bool)

(assert (=> b!2200450 m!2643117))

(declare-fun m!2643119 () Bool)

(assert (=> b!2200446 m!2643119))

(declare-fun m!2643121 () Bool)

(assert (=> b!2200455 m!2643121))

(check-sat (not start!213630) (not b!2200454) (not b!2200447) (not setNonEmpty!18954) (not b!2200446) (not b!2200453) (not b!2200455) (not b!2200444) (not b!2200451) (not b!2200450))
(check-sat)
