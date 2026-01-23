; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!214630 () Bool)

(assert start!214630)

(declare-fun b!2206673 () Bool)

(declare-fun e!1409705 () Bool)

(declare-fun lastNullablePos!161 () Int)

(declare-fun from!1082 () Int)

(assert (=> b!2206673 (= e!1409705 (= lastNullablePos!161 (- from!1082 1)))))

(declare-fun b!2206674 () Bool)

(declare-fun e!1409706 () Int)

(assert (=> b!2206674 (= e!1409706 lastNullablePos!161)))

(declare-fun b!2206675 () Bool)

(declare-fun res!948498 () Bool)

(declare-fun e!1409700 () Bool)

(assert (=> b!2206675 (=> (not res!948498) (not e!1409700))))

(declare-fun knownSize!10 () Int)

(declare-fun lt!825208 () Int)

(assert (=> b!2206675 (= res!948498 (and (not (= knownSize!10 0)) (> knownSize!10 0) (not (= from!1082 lt!825208))))))

(declare-fun res!948495 () Bool)

(declare-fun e!1409704 () Bool)

(assert (=> start!214630 (=> (not res!948495) (not e!1409704))))

(assert (=> start!214630 (= res!948495 (>= from!1082 0))))

(assert (=> start!214630 e!1409704))

(assert (=> start!214630 true))

(declare-datatypes ((C!12708 0))(
  ( (C!12709 (val!7340 Int)) )
))
(declare-datatypes ((List!25869 0))(
  ( (Nil!25785) (Cons!25785 (h!31186 C!12708) (t!198513 List!25869)) )
))
(declare-datatypes ((IArray!16839 0))(
  ( (IArray!16840 (innerList!8477 List!25869)) )
))
(declare-datatypes ((Conc!8417 0))(
  ( (Node!8417 (left!19820 Conc!8417) (right!20150 Conc!8417) (csize!17064 Int) (cheight!8628 Int)) (Leaf!12325 (xs!11359 IArray!16839) (csize!17065 Int)) (Empty!8417) )
))
(declare-datatypes ((BalanceConc!16596 0))(
  ( (BalanceConc!16597 (c!352510 Conc!8417)) )
))
(declare-fun totalInput!891 () BalanceConc!16596)

(declare-fun e!1409702 () Bool)

(declare-fun inv!34786 (BalanceConc!16596) Bool)

(assert (=> start!214630 (and (inv!34786 totalInput!891) e!1409702)))

(declare-fun condSetEmpty!19224 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((Regex!6281 0))(
  ( (ElementMatch!6281 (c!352511 C!12708)) (Concat!10583 (regOne!13074 Regex!6281) (regTwo!13074 Regex!6281)) (EmptyExpr!6281) (Star!6281 (reg!6610 Regex!6281)) (EmptyLang!6281) (Union!6281 (regOne!13075 Regex!6281) (regTwo!13075 Regex!6281)) )
))
(declare-datatypes ((List!25870 0))(
  ( (Nil!25786) (Cons!25786 (h!31187 Regex!6281) (t!198514 List!25870)) )
))
(declare-datatypes ((Context!3702 0))(
  ( (Context!3703 (exprs!2351 List!25870)) )
))
(declare-fun z!3888 () (InoxSet Context!3702))

(assert (=> start!214630 (= condSetEmpty!19224 (= z!3888 ((as const (Array Context!3702 Bool)) false)))))

(declare-fun setRes!19224 () Bool)

(assert (=> start!214630 setRes!19224))

(declare-fun b!2206676 () Bool)

(declare-fun res!948499 () Bool)

(assert (=> b!2206676 (=> (not res!948499) (not e!1409700))))

(assert (=> b!2206676 (= res!948499 (and (>= lastNullablePos!161 (- 1)) (< lastNullablePos!161 from!1082)))))

(declare-fun b!2206677 () Bool)

(declare-fun e!1409707 () Bool)

(assert (=> b!2206677 (= e!1409707 e!1409700)))

(declare-fun res!948493 () Bool)

(assert (=> b!2206677 (=> (not res!948493) (not e!1409700))))

(declare-fun lt!825203 () List!25869)

(declare-fun matchZipper!367 ((InoxSet Context!3702) List!25869) Bool)

(assert (=> b!2206677 (= res!948493 (matchZipper!367 z!3888 lt!825203))))

(declare-fun lt!825204 () List!25869)

(declare-fun take!459 (List!25869 Int) List!25869)

(assert (=> b!2206677 (= lt!825203 (take!459 lt!825204 knownSize!10))))

(declare-fun lt!825202 () List!25869)

(declare-fun drop!1469 (List!25869 Int) List!25869)

(assert (=> b!2206677 (= lt!825204 (drop!1469 lt!825202 from!1082))))

(declare-fun list!9964 (BalanceConc!16596) List!25869)

(assert (=> b!2206677 (= lt!825202 (list!9964 totalInput!891))))

(declare-fun setIsEmpty!19224 () Bool)

(assert (=> setIsEmpty!19224 setRes!19224))

(declare-fun e!1409703 () Bool)

(declare-fun tp!686027 () Bool)

(declare-fun setElem!19224 () Context!3702)

(declare-fun setNonEmpty!19224 () Bool)

(declare-fun inv!34787 (Context!3702) Bool)

(assert (=> setNonEmpty!19224 (= setRes!19224 (and tp!686027 (inv!34787 setElem!19224) e!1409703))))

(declare-fun setRest!19224 () (InoxSet Context!3702))

(assert (=> setNonEmpty!19224 (= z!3888 ((_ map or) (store ((as const (Array Context!3702 Bool)) false) setElem!19224 true) setRest!19224))))

(declare-fun b!2206678 () Bool)

(declare-fun tp!686026 () Bool)

(declare-fun inv!34788 (Conc!8417) Bool)

(assert (=> b!2206678 (= e!1409702 (and (inv!34788 (c!352510 totalInput!891)) tp!686026))))

(declare-fun b!2206679 () Bool)

(declare-fun res!948500 () Bool)

(assert (=> b!2206679 (=> (not res!948500) (not e!1409700))))

(declare-fun isEmpty!14756 (BalanceConc!16596) Bool)

(assert (=> b!2206679 (= res!948500 (not (isEmpty!14756 totalInput!891)))))

(declare-fun b!2206680 () Bool)

(declare-fun res!948494 () Bool)

(assert (=> b!2206680 (=> (not res!948494) (not e!1409700))))

(assert (=> b!2206680 (= res!948494 e!1409705)))

(declare-fun res!948502 () Bool)

(assert (=> b!2206680 (=> res!948502 e!1409705)))

(declare-fun nullableZipper!561 ((InoxSet Context!3702)) Bool)

(assert (=> b!2206680 (= res!948502 (not (nullableZipper!561 z!3888)))))

(declare-fun b!2206681 () Bool)

(assert (=> b!2206681 (= e!1409704 e!1409707)))

(declare-fun res!948496 () Bool)

(assert (=> b!2206681 (=> (not res!948496) (not e!1409707))))

(assert (=> b!2206681 (= res!948496 (and (<= from!1082 lt!825208) (>= knownSize!10 0) (<= knownSize!10 (- lt!825208 from!1082))))))

(declare-fun size!20091 (BalanceConc!16596) Int)

(assert (=> b!2206681 (= lt!825208 (size!20091 totalInput!891))))

(declare-fun b!2206682 () Bool)

(assert (=> b!2206682 (= e!1409706 from!1082)))

(declare-fun b!2206683 () Bool)

(declare-fun e!1409701 () Bool)

(assert (=> b!2206683 (= e!1409701 (or (< (+ 1 from!1082) 0) (> (+ 1 from!1082) lt!825208) (and (>= (- knownSize!10 1) 0) (<= (- knownSize!10 1) (- lt!825208 (+ 1 from!1082))))))))

(declare-fun b!2206684 () Bool)

(declare-fun res!948503 () Bool)

(assert (=> b!2206684 (=> res!948503 e!1409701)))

(declare-fun lt!825200 () (InoxSet Context!3702))

(declare-fun lt!825206 () List!25869)

(assert (=> b!2206684 (= res!948503 (not (matchZipper!367 lt!825200 lt!825206)))))

(declare-fun b!2206685 () Bool)

(declare-fun res!948501 () Bool)

(assert (=> b!2206685 (=> (not res!948501) (not e!1409700))))

(declare-fun lostCauseZipper!377 ((InoxSet Context!3702)) Bool)

(assert (=> b!2206685 (= res!948501 (not (lostCauseZipper!377 z!3888)))))

(declare-fun b!2206686 () Bool)

(declare-fun tp!686028 () Bool)

(assert (=> b!2206686 (= e!1409703 tp!686028)))

(declare-fun b!2206687 () Bool)

(assert (=> b!2206687 (= e!1409700 (not e!1409701))))

(declare-fun res!948497 () Bool)

(assert (=> b!2206687 (=> res!948497 e!1409701)))

(declare-fun tail!3199 (List!25869) List!25869)

(assert (=> b!2206687 (= res!948497 (not (= lt!825206 (tail!3199 lt!825203))))))

(declare-fun lt!825207 () C!12708)

(assert (=> b!2206687 (= (Cons!25785 lt!825207 lt!825206) (take!459 lt!825204 (+ 1 (- knownSize!10 1))))))

(assert (=> b!2206687 (= lt!825206 (take!459 (drop!1469 lt!825202 (+ 1 from!1082)) (- knownSize!10 1)))))

(declare-fun apply!6362 (List!25869 Int) C!12708)

(assert (=> b!2206687 (= lt!825207 (apply!6362 lt!825202 from!1082))))

(declare-datatypes ((Unit!38877 0))(
  ( (Unit!38878) )
))
(declare-fun lt!825201 () Unit!38877)

(declare-fun lemmaDropTakeAddOneLeft!44 (List!25869 Int Int) Unit!38877)

(assert (=> b!2206687 (= lt!825201 (lemmaDropTakeAddOneLeft!44 lt!825202 from!1082 (- knownSize!10 1)))))

(declare-fun lt!825205 () Int)

(declare-fun furthestNullablePosition!415 ((InoxSet Context!3702) Int BalanceConc!16596 Int Int) Int)

(assert (=> b!2206687 (= lt!825205 (furthestNullablePosition!415 lt!825200 (+ 1 from!1082) totalInput!891 lt!825208 e!1409706))))

(declare-fun c!352509 () Bool)

(assert (=> b!2206687 (= c!352509 (nullableZipper!561 lt!825200))))

(declare-fun derivationStepZipper!313 ((InoxSet Context!3702) C!12708) (InoxSet Context!3702))

(declare-fun apply!6363 (BalanceConc!16596 Int) C!12708)

(assert (=> b!2206687 (= lt!825200 (derivationStepZipper!313 z!3888 (apply!6363 totalInput!891 from!1082)))))

(assert (= (and start!214630 res!948495) b!2206681))

(assert (= (and b!2206681 res!948496) b!2206677))

(assert (= (and b!2206677 res!948493) b!2206676))

(assert (= (and b!2206676 res!948499) b!2206680))

(assert (= (and b!2206680 (not res!948502)) b!2206673))

(assert (= (and b!2206680 res!948494) b!2206679))

(assert (= (and b!2206679 res!948500) b!2206675))

(assert (= (and b!2206675 res!948498) b!2206685))

(assert (= (and b!2206685 res!948501) b!2206687))

(assert (= (and b!2206687 c!352509) b!2206682))

(assert (= (and b!2206687 (not c!352509)) b!2206674))

(assert (= (and b!2206687 (not res!948497)) b!2206684))

(assert (= (and b!2206684 (not res!948503)) b!2206683))

(assert (= start!214630 b!2206678))

(assert (= (and start!214630 condSetEmpty!19224) setIsEmpty!19224))

(assert (= (and start!214630 (not condSetEmpty!19224)) setNonEmpty!19224))

(assert (= setNonEmpty!19224 b!2206686))

(declare-fun m!2648271 () Bool)

(assert (=> setNonEmpty!19224 m!2648271))

(declare-fun m!2648273 () Bool)

(assert (=> b!2206687 m!2648273))

(declare-fun m!2648275 () Bool)

(assert (=> b!2206687 m!2648275))

(declare-fun m!2648277 () Bool)

(assert (=> b!2206687 m!2648277))

(declare-fun m!2648279 () Bool)

(assert (=> b!2206687 m!2648279))

(declare-fun m!2648281 () Bool)

(assert (=> b!2206687 m!2648281))

(declare-fun m!2648283 () Bool)

(assert (=> b!2206687 m!2648283))

(declare-fun m!2648285 () Bool)

(assert (=> b!2206687 m!2648285))

(declare-fun m!2648287 () Bool)

(assert (=> b!2206687 m!2648287))

(assert (=> b!2206687 m!2648279))

(assert (=> b!2206687 m!2648273))

(declare-fun m!2648289 () Bool)

(assert (=> b!2206687 m!2648289))

(declare-fun m!2648291 () Bool)

(assert (=> b!2206687 m!2648291))

(declare-fun m!2648293 () Bool)

(assert (=> b!2206684 m!2648293))

(declare-fun m!2648295 () Bool)

(assert (=> b!2206685 m!2648295))

(declare-fun m!2648297 () Bool)

(assert (=> start!214630 m!2648297))

(declare-fun m!2648299 () Bool)

(assert (=> b!2206681 m!2648299))

(declare-fun m!2648301 () Bool)

(assert (=> b!2206680 m!2648301))

(declare-fun m!2648303 () Bool)

(assert (=> b!2206679 m!2648303))

(declare-fun m!2648305 () Bool)

(assert (=> b!2206678 m!2648305))

(declare-fun m!2648307 () Bool)

(assert (=> b!2206677 m!2648307))

(declare-fun m!2648309 () Bool)

(assert (=> b!2206677 m!2648309))

(declare-fun m!2648311 () Bool)

(assert (=> b!2206677 m!2648311))

(declare-fun m!2648313 () Bool)

(assert (=> b!2206677 m!2648313))

(check-sat (not b!2206680) (not b!2206677) (not setNonEmpty!19224) (not b!2206685) (not b!2206678) (not b!2206686) (not b!2206681) (not b!2206684) (not b!2206679) (not start!214630) (not b!2206687))
(check-sat)
