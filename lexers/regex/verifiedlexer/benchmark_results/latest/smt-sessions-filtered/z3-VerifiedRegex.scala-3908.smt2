; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!214634 () Bool)

(assert start!214634)

(declare-fun b!2206763 () Bool)

(declare-fun e!1409754 () Bool)

(declare-fun e!1409753 () Bool)

(assert (=> b!2206763 (= e!1409754 e!1409753)))

(declare-fun res!948563 () Bool)

(assert (=> b!2206763 (=> (not res!948563) (not e!1409753))))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((C!12712 0))(
  ( (C!12713 (val!7342 Int)) )
))
(declare-datatypes ((Regex!6283 0))(
  ( (ElementMatch!6283 (c!352520 C!12712)) (Concat!10585 (regOne!13078 Regex!6283) (regTwo!13078 Regex!6283)) (EmptyExpr!6283) (Star!6283 (reg!6612 Regex!6283)) (EmptyLang!6283) (Union!6283 (regOne!13079 Regex!6283) (regTwo!13079 Regex!6283)) )
))
(declare-datatypes ((List!25873 0))(
  ( (Nil!25789) (Cons!25789 (h!31190 Regex!6283) (t!198517 List!25873)) )
))
(declare-datatypes ((Context!3706 0))(
  ( (Context!3707 (exprs!2353 List!25873)) )
))
(declare-fun z!3888 () (InoxSet Context!3706))

(declare-datatypes ((List!25874 0))(
  ( (Nil!25790) (Cons!25790 (h!31191 C!12712) (t!198518 List!25874)) )
))
(declare-fun lt!825268 () List!25874)

(declare-fun matchZipper!369 ((InoxSet Context!3706) List!25874) Bool)

(assert (=> b!2206763 (= res!948563 (matchZipper!369 z!3888 lt!825268))))

(declare-fun lt!825261 () List!25874)

(declare-fun knownSize!10 () Int)

(declare-fun take!461 (List!25874 Int) List!25874)

(assert (=> b!2206763 (= lt!825268 (take!461 lt!825261 knownSize!10))))

(declare-fun lt!825267 () List!25874)

(declare-fun from!1082 () Int)

(declare-fun drop!1471 (List!25874 Int) List!25874)

(assert (=> b!2206763 (= lt!825261 (drop!1471 lt!825267 from!1082))))

(declare-datatypes ((IArray!16843 0))(
  ( (IArray!16844 (innerList!8479 List!25874)) )
))
(declare-datatypes ((Conc!8419 0))(
  ( (Node!8419 (left!19823 Conc!8419) (right!20153 Conc!8419) (csize!17068 Int) (cheight!8630 Int)) (Leaf!12328 (xs!11361 IArray!16843) (csize!17069 Int)) (Empty!8419) )
))
(declare-datatypes ((BalanceConc!16600 0))(
  ( (BalanceConc!16601 (c!352521 Conc!8419)) )
))
(declare-fun totalInput!891 () BalanceConc!16600)

(declare-fun list!9966 (BalanceConc!16600) List!25874)

(assert (=> b!2206763 (= lt!825267 (list!9966 totalInput!891))))

(declare-fun setIsEmpty!19230 () Bool)

(declare-fun setRes!19230 () Bool)

(assert (=> setIsEmpty!19230 setRes!19230))

(declare-fun lt!825259 () Int)

(declare-fun e!1409749 () Bool)

(declare-fun b!2206764 () Bool)

(declare-fun lt!825266 () Int)

(assert (=> b!2206764 (= e!1409749 (or (< (+ 1 from!1082) 0) (> (+ 1 from!1082) lt!825266) (< (- knownSize!10 1) 0) (> (- knownSize!10 1) (- lt!825266 (+ 1 from!1082))) (and (>= lt!825259 (- 1)) (< lt!825259 (+ 1 from!1082)))))))

(declare-fun b!2206765 () Bool)

(assert (=> b!2206765 (= e!1409753 (not e!1409749))))

(declare-fun res!948569 () Bool)

(assert (=> b!2206765 (=> res!948569 e!1409749)))

(declare-fun lt!825264 () List!25874)

(declare-fun tail!3201 (List!25874) List!25874)

(assert (=> b!2206765 (= res!948569 (not (= lt!825264 (tail!3201 lt!825268))))))

(declare-fun lt!825263 () C!12712)

(assert (=> b!2206765 (= (Cons!25790 lt!825263 lt!825264) (take!461 lt!825261 (+ 1 (- knownSize!10 1))))))

(assert (=> b!2206765 (= lt!825264 (take!461 (drop!1471 lt!825267 (+ 1 from!1082)) (- knownSize!10 1)))))

(declare-fun apply!6366 (List!25874 Int) C!12712)

(assert (=> b!2206765 (= lt!825263 (apply!6366 lt!825267 from!1082))))

(declare-datatypes ((Unit!38881 0))(
  ( (Unit!38882) )
))
(declare-fun lt!825260 () Unit!38881)

(declare-fun lemmaDropTakeAddOneLeft!46 (List!25874 Int Int) Unit!38881)

(assert (=> b!2206765 (= lt!825260 (lemmaDropTakeAddOneLeft!46 lt!825267 from!1082 (- knownSize!10 1)))))

(declare-fun lt!825262 () Int)

(declare-fun lt!825265 () (InoxSet Context!3706))

(declare-fun furthestNullablePosition!417 ((InoxSet Context!3706) Int BalanceConc!16600 Int Int) Int)

(assert (=> b!2206765 (= lt!825262 (furthestNullablePosition!417 lt!825265 (+ 1 from!1082) totalInput!891 lt!825266 lt!825259))))

(declare-fun e!1409748 () Int)

(assert (=> b!2206765 (= lt!825259 e!1409748)))

(declare-fun c!352519 () Bool)

(declare-fun nullableZipper!563 ((InoxSet Context!3706)) Bool)

(assert (=> b!2206765 (= c!352519 (nullableZipper!563 lt!825265))))

(declare-fun derivationStepZipper!315 ((InoxSet Context!3706) C!12712) (InoxSet Context!3706))

(declare-fun apply!6367 (BalanceConc!16600 Int) C!12712)

(assert (=> b!2206765 (= lt!825265 (derivationStepZipper!315 z!3888 (apply!6367 totalInput!891 from!1082)))))

(declare-fun b!2206766 () Bool)

(declare-fun res!948561 () Bool)

(assert (=> b!2206766 (=> (not res!948561) (not e!1409753))))

(declare-fun e!1409752 () Bool)

(assert (=> b!2206766 (= res!948561 e!1409752)))

(declare-fun res!948566 () Bool)

(assert (=> b!2206766 (=> res!948566 e!1409752)))

(assert (=> b!2206766 (= res!948566 (not (nullableZipper!563 z!3888)))))

(declare-fun b!2206767 () Bool)

(declare-fun e!1409750 () Bool)

(declare-fun tp!686046 () Bool)

(assert (=> b!2206767 (= e!1409750 tp!686046)))

(declare-fun b!2206768 () Bool)

(declare-fun e!1409755 () Bool)

(declare-fun tp!686044 () Bool)

(declare-fun inv!34795 (Conc!8419) Bool)

(assert (=> b!2206768 (= e!1409755 (and (inv!34795 (c!352521 totalInput!891)) tp!686044))))

(declare-fun b!2206769 () Bool)

(declare-fun res!948564 () Bool)

(assert (=> b!2206769 (=> res!948564 e!1409749)))

(assert (=> b!2206769 (= res!948564 (not (matchZipper!369 lt!825265 lt!825264)))))

(declare-fun b!2206771 () Bool)

(declare-fun res!948567 () Bool)

(assert (=> b!2206771 (=> (not res!948567) (not e!1409753))))

(declare-fun isEmpty!14758 (BalanceConc!16600) Bool)

(assert (=> b!2206771 (= res!948567 (not (isEmpty!14758 totalInput!891)))))

(declare-fun b!2206772 () Bool)

(declare-fun res!948559 () Bool)

(assert (=> b!2206772 (=> (not res!948559) (not e!1409753))))

(declare-fun lastNullablePos!161 () Int)

(assert (=> b!2206772 (= res!948559 (and (>= lastNullablePos!161 (- 1)) (< lastNullablePos!161 from!1082)))))

(declare-fun b!2206773 () Bool)

(declare-fun res!948560 () Bool)

(assert (=> b!2206773 (=> (not res!948560) (not e!1409753))))

(assert (=> b!2206773 (= res!948560 (and (not (= knownSize!10 0)) (> knownSize!10 0) (not (= from!1082 lt!825266))))))

(declare-fun b!2206774 () Bool)

(assert (=> b!2206774 (= e!1409748 lastNullablePos!161)))

(declare-fun b!2206775 () Bool)

(declare-fun e!1409751 () Bool)

(assert (=> b!2206775 (= e!1409751 e!1409754)))

(declare-fun res!948568 () Bool)

(assert (=> b!2206775 (=> (not res!948568) (not e!1409754))))

(assert (=> b!2206775 (= res!948568 (and (<= from!1082 lt!825266) (>= knownSize!10 0) (<= knownSize!10 (- lt!825266 from!1082))))))

(declare-fun size!20093 (BalanceConc!16600) Int)

(assert (=> b!2206775 (= lt!825266 (size!20093 totalInput!891))))

(declare-fun tp!686045 () Bool)

(declare-fun setNonEmpty!19230 () Bool)

(declare-fun setElem!19230 () Context!3706)

(declare-fun inv!34796 (Context!3706) Bool)

(assert (=> setNonEmpty!19230 (= setRes!19230 (and tp!686045 (inv!34796 setElem!19230) e!1409750))))

(declare-fun setRest!19230 () (InoxSet Context!3706))

(assert (=> setNonEmpty!19230 (= z!3888 ((_ map or) (store ((as const (Array Context!3706 Bool)) false) setElem!19230 true) setRest!19230))))

(declare-fun b!2206770 () Bool)

(assert (=> b!2206770 (= e!1409752 (= lastNullablePos!161 (- from!1082 1)))))

(declare-fun res!948565 () Bool)

(assert (=> start!214634 (=> (not res!948565) (not e!1409751))))

(assert (=> start!214634 (= res!948565 (>= from!1082 0))))

(assert (=> start!214634 e!1409751))

(assert (=> start!214634 true))

(declare-fun inv!34797 (BalanceConc!16600) Bool)

(assert (=> start!214634 (and (inv!34797 totalInput!891) e!1409755)))

(declare-fun condSetEmpty!19230 () Bool)

(assert (=> start!214634 (= condSetEmpty!19230 (= z!3888 ((as const (Array Context!3706 Bool)) false)))))

(assert (=> start!214634 setRes!19230))

(declare-fun b!2206776 () Bool)

(assert (=> b!2206776 (= e!1409748 from!1082)))

(declare-fun b!2206777 () Bool)

(declare-fun res!948562 () Bool)

(assert (=> b!2206777 (=> (not res!948562) (not e!1409753))))

(declare-fun lostCauseZipper!379 ((InoxSet Context!3706)) Bool)

(assert (=> b!2206777 (= res!948562 (not (lostCauseZipper!379 z!3888)))))

(assert (= (and start!214634 res!948565) b!2206775))

(assert (= (and b!2206775 res!948568) b!2206763))

(assert (= (and b!2206763 res!948563) b!2206772))

(assert (= (and b!2206772 res!948559) b!2206766))

(assert (= (and b!2206766 (not res!948566)) b!2206770))

(assert (= (and b!2206766 res!948561) b!2206771))

(assert (= (and b!2206771 res!948567) b!2206773))

(assert (= (and b!2206773 res!948560) b!2206777))

(assert (= (and b!2206777 res!948562) b!2206765))

(assert (= (and b!2206765 c!352519) b!2206776))

(assert (= (and b!2206765 (not c!352519)) b!2206774))

(assert (= (and b!2206765 (not res!948569)) b!2206769))

(assert (= (and b!2206769 (not res!948564)) b!2206764))

(assert (= start!214634 b!2206768))

(assert (= (and start!214634 condSetEmpty!19230) setIsEmpty!19230))

(assert (= (and start!214634 (not condSetEmpty!19230)) setNonEmpty!19230))

(assert (= setNonEmpty!19230 b!2206767))

(declare-fun m!2648359 () Bool)

(assert (=> b!2206777 m!2648359))

(declare-fun m!2648361 () Bool)

(assert (=> b!2206769 m!2648361))

(declare-fun m!2648363 () Bool)

(assert (=> b!2206768 m!2648363))

(declare-fun m!2648365 () Bool)

(assert (=> start!214634 m!2648365))

(declare-fun m!2648367 () Bool)

(assert (=> b!2206766 m!2648367))

(declare-fun m!2648369 () Bool)

(assert (=> b!2206771 m!2648369))

(declare-fun m!2648371 () Bool)

(assert (=> setNonEmpty!19230 m!2648371))

(declare-fun m!2648373 () Bool)

(assert (=> b!2206765 m!2648373))

(declare-fun m!2648375 () Bool)

(assert (=> b!2206765 m!2648375))

(declare-fun m!2648377 () Bool)

(assert (=> b!2206765 m!2648377))

(declare-fun m!2648379 () Bool)

(assert (=> b!2206765 m!2648379))

(declare-fun m!2648381 () Bool)

(assert (=> b!2206765 m!2648381))

(assert (=> b!2206765 m!2648373))

(declare-fun m!2648383 () Bool)

(assert (=> b!2206765 m!2648383))

(assert (=> b!2206765 m!2648377))

(declare-fun m!2648385 () Bool)

(assert (=> b!2206765 m!2648385))

(declare-fun m!2648387 () Bool)

(assert (=> b!2206765 m!2648387))

(declare-fun m!2648389 () Bool)

(assert (=> b!2206765 m!2648389))

(declare-fun m!2648391 () Bool)

(assert (=> b!2206765 m!2648391))

(declare-fun m!2648393 () Bool)

(assert (=> b!2206775 m!2648393))

(declare-fun m!2648395 () Bool)

(assert (=> b!2206763 m!2648395))

(declare-fun m!2648397 () Bool)

(assert (=> b!2206763 m!2648397))

(declare-fun m!2648399 () Bool)

(assert (=> b!2206763 m!2648399))

(declare-fun m!2648401 () Bool)

(assert (=> b!2206763 m!2648401))

(check-sat (not b!2206777) (not b!2206769) (not setNonEmpty!19230) (not b!2206775) (not start!214634) (not b!2206765) (not b!2206763) (not b!2206768) (not b!2206767) (not b!2206766) (not b!2206771))
(check-sat)
