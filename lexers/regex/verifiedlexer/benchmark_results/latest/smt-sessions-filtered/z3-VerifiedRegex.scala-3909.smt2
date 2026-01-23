; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!214638 () Bool)

(assert start!214638)

(declare-fun res!948631 () Bool)

(declare-fun e!1409796 () Bool)

(assert (=> start!214638 (=> (not res!948631) (not e!1409796))))

(declare-fun from!1082 () Int)

(assert (=> start!214638 (= res!948631 (>= from!1082 0))))

(assert (=> start!214638 e!1409796))

(assert (=> start!214638 true))

(declare-datatypes ((C!12716 0))(
  ( (C!12717 (val!7344 Int)) )
))
(declare-datatypes ((List!25877 0))(
  ( (Nil!25793) (Cons!25793 (h!31194 C!12716) (t!198521 List!25877)) )
))
(declare-datatypes ((IArray!16847 0))(
  ( (IArray!16848 (innerList!8481 List!25877)) )
))
(declare-datatypes ((Conc!8421 0))(
  ( (Node!8421 (left!19826 Conc!8421) (right!20156 Conc!8421) (csize!17072 Int) (cheight!8632 Int)) (Leaf!12331 (xs!11363 IArray!16847) (csize!17073 Int)) (Empty!8421) )
))
(declare-datatypes ((BalanceConc!16604 0))(
  ( (BalanceConc!16605 (c!352524 Conc!8421)) )
))
(declare-fun totalInput!891 () BalanceConc!16604)

(declare-fun e!1409791 () Bool)

(declare-fun inv!34804 (BalanceConc!16604) Bool)

(assert (=> start!214638 (and (inv!34804 totalInput!891) e!1409791)))

(declare-fun condSetEmpty!19236 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((Regex!6285 0))(
  ( (ElementMatch!6285 (c!352525 C!12716)) (Concat!10587 (regOne!13082 Regex!6285) (regTwo!13082 Regex!6285)) (EmptyExpr!6285) (Star!6285 (reg!6614 Regex!6285)) (EmptyLang!6285) (Union!6285 (regOne!13083 Regex!6285) (regTwo!13083 Regex!6285)) )
))
(declare-datatypes ((List!25878 0))(
  ( (Nil!25794) (Cons!25794 (h!31195 Regex!6285) (t!198522 List!25878)) )
))
(declare-datatypes ((Context!3710 0))(
  ( (Context!3711 (exprs!2355 List!25878)) )
))
(declare-fun z!3888 () (InoxSet Context!3710))

(assert (=> start!214638 (= condSetEmpty!19236 (= z!3888 ((as const (Array Context!3710 Bool)) false)))))

(declare-fun setRes!19236 () Bool)

(assert (=> start!214638 setRes!19236))

(declare-fun b!2206843 () Bool)

(declare-fun res!948633 () Bool)

(declare-fun e!1409793 () Bool)

(assert (=> b!2206843 (=> res!948633 e!1409793)))

(declare-fun lt!825332 () (InoxSet Context!3710))

(declare-fun lt!825325 () List!25877)

(declare-fun matchZipper!371 ((InoxSet Context!3710) List!25877) Bool)

(assert (=> b!2206843 (= res!948633 (not (matchZipper!371 lt!825332 lt!825325)))))

(declare-fun b!2206844 () Bool)

(declare-fun res!948635 () Bool)

(declare-fun e!1409792 () Bool)

(assert (=> b!2206844 (=> (not res!948635) (not e!1409792))))

(declare-fun isEmpty!14760 (BalanceConc!16604) Bool)

(assert (=> b!2206844 (= res!948635 (not (isEmpty!14760 totalInput!891)))))

(declare-fun b!2206845 () Bool)

(declare-fun e!1409794 () Bool)

(assert (=> b!2206845 (= e!1409794 e!1409792)))

(declare-fun res!948634 () Bool)

(assert (=> b!2206845 (=> (not res!948634) (not e!1409792))))

(declare-fun lt!825334 () List!25877)

(assert (=> b!2206845 (= res!948634 (matchZipper!371 z!3888 lt!825334))))

(declare-fun lt!825333 () List!25877)

(declare-fun knownSize!10 () Int)

(declare-fun take!463 (List!25877 Int) List!25877)

(assert (=> b!2206845 (= lt!825334 (take!463 lt!825333 knownSize!10))))

(declare-fun lt!825330 () List!25877)

(declare-fun drop!1473 (List!25877 Int) List!25877)

(assert (=> b!2206845 (= lt!825333 (drop!1473 lt!825330 from!1082))))

(declare-fun list!9968 (BalanceConc!16604) List!25877)

(assert (=> b!2206845 (= lt!825330 (list!9968 totalInput!891))))

(declare-fun b!2206846 () Bool)

(assert (=> b!2206846 (= e!1409792 (not e!1409793))))

(declare-fun res!948627 () Bool)

(assert (=> b!2206846 (=> res!948627 e!1409793)))

(declare-fun tail!3203 (List!25877) List!25877)

(assert (=> b!2206846 (= res!948627 (not (= lt!825325 (tail!3203 lt!825334))))))

(declare-fun lt!825329 () C!12716)

(assert (=> b!2206846 (= (Cons!25793 lt!825329 lt!825325) (take!463 lt!825333 (+ 1 (- knownSize!10 1))))))

(assert (=> b!2206846 (= lt!825325 (take!463 (drop!1473 lt!825330 (+ 1 from!1082)) (- knownSize!10 1)))))

(declare-fun apply!6370 (List!25877 Int) C!12716)

(assert (=> b!2206846 (= lt!825329 (apply!6370 lt!825330 from!1082))))

(declare-datatypes ((Unit!38885 0))(
  ( (Unit!38886) )
))
(declare-fun lt!825326 () Unit!38885)

(declare-fun lemmaDropTakeAddOneLeft!48 (List!25877 Int Int) Unit!38885)

(assert (=> b!2206846 (= lt!825326 (lemmaDropTakeAddOneLeft!48 lt!825330 from!1082 (- knownSize!10 1)))))

(declare-fun lt!825324 () Int)

(declare-fun lt!825327 () Int)

(declare-fun lt!825331 () Int)

(declare-fun furthestNullablePosition!419 ((InoxSet Context!3710) Int BalanceConc!16604 Int Int) Int)

(assert (=> b!2206846 (= lt!825327 (furthestNullablePosition!419 lt!825332 (+ 1 from!1082) totalInput!891 lt!825331 lt!825324))))

(declare-fun lt!825328 () Bool)

(declare-fun lastNullablePos!161 () Int)

(assert (=> b!2206846 (= lt!825324 (ite lt!825328 from!1082 lastNullablePos!161))))

(declare-fun nullableZipper!565 ((InoxSet Context!3710)) Bool)

(assert (=> b!2206846 (= lt!825328 (nullableZipper!565 lt!825332))))

(declare-fun derivationStepZipper!317 ((InoxSet Context!3710) C!12716) (InoxSet Context!3710))

(declare-fun apply!6371 (BalanceConc!16604 Int) C!12716)

(assert (=> b!2206846 (= lt!825332 (derivationStepZipper!317 z!3888 (apply!6371 totalInput!891 from!1082)))))

(declare-fun b!2206847 () Bool)

(declare-fun res!948630 () Bool)

(assert (=> b!2206847 (=> (not res!948630) (not e!1409792))))

(assert (=> b!2206847 (= res!948630 (and (>= lastNullablePos!161 (- 1)) (< lastNullablePos!161 from!1082)))))

(declare-fun b!2206848 () Bool)

(declare-fun e!1409797 () Bool)

(declare-fun tp!686063 () Bool)

(assert (=> b!2206848 (= e!1409797 tp!686063)))

(declare-fun setNonEmpty!19236 () Bool)

(declare-fun setElem!19236 () Context!3710)

(declare-fun tp!686062 () Bool)

(declare-fun inv!34805 (Context!3710) Bool)

(assert (=> setNonEmpty!19236 (= setRes!19236 (and tp!686062 (inv!34805 setElem!19236) e!1409797))))

(declare-fun setRest!19236 () (InoxSet Context!3710))

(assert (=> setNonEmpty!19236 (= z!3888 ((_ map or) (store ((as const (Array Context!3710 Bool)) false) setElem!19236 true) setRest!19236))))

(declare-fun b!2206849 () Bool)

(declare-fun e!1409795 () Bool)

(assert (=> b!2206849 (= e!1409795 (= lastNullablePos!161 (- from!1082 1)))))

(declare-fun b!2206850 () Bool)

(declare-fun res!948626 () Bool)

(assert (=> b!2206850 (=> (not res!948626) (not e!1409792))))

(assert (=> b!2206850 (= res!948626 e!1409795)))

(declare-fun res!948629 () Bool)

(assert (=> b!2206850 (=> res!948629 e!1409795)))

(assert (=> b!2206850 (= res!948629 (not (nullableZipper!565 z!3888)))))

(declare-fun setIsEmpty!19236 () Bool)

(assert (=> setIsEmpty!19236 setRes!19236))

(declare-fun b!2206851 () Bool)

(assert (=> b!2206851 (= e!1409796 e!1409794)))

(declare-fun res!948625 () Bool)

(assert (=> b!2206851 (=> (not res!948625) (not e!1409794))))

(assert (=> b!2206851 (= res!948625 (and (<= from!1082 lt!825331) (>= knownSize!10 0) (<= knownSize!10 (- lt!825331 from!1082))))))

(declare-fun size!20095 (BalanceConc!16604) Int)

(assert (=> b!2206851 (= lt!825331 (size!20095 totalInput!891))))

(declare-fun b!2206852 () Bool)

(declare-fun res!948632 () Bool)

(assert (=> b!2206852 (=> (not res!948632) (not e!1409792))))

(declare-fun lostCauseZipper!381 ((InoxSet Context!3710)) Bool)

(assert (=> b!2206852 (= res!948632 (not (lostCauseZipper!381 z!3888)))))

(declare-fun b!2206853 () Bool)

(assert (=> b!2206853 (= e!1409793 (or (< (+ 1 from!1082) 0) (> (+ 1 from!1082) lt!825331) (< (- knownSize!10 1) 0) (> (- knownSize!10 1) (- lt!825331 (+ 1 from!1082))) (< lt!825324 (- 1)) (>= lt!825324 (+ 1 from!1082)) (not lt!825328) (= lt!825324 from!1082)))))

(declare-fun b!2206854 () Bool)

(declare-fun tp!686064 () Bool)

(declare-fun inv!34806 (Conc!8421) Bool)

(assert (=> b!2206854 (= e!1409791 (and (inv!34806 (c!352524 totalInput!891)) tp!686064))))

(declare-fun b!2206855 () Bool)

(declare-fun res!948628 () Bool)

(assert (=> b!2206855 (=> (not res!948628) (not e!1409792))))

(assert (=> b!2206855 (= res!948628 (and (not (= knownSize!10 0)) (> knownSize!10 0) (not (= from!1082 lt!825331))))))

(assert (= (and start!214638 res!948631) b!2206851))

(assert (= (and b!2206851 res!948625) b!2206845))

(assert (= (and b!2206845 res!948634) b!2206847))

(assert (= (and b!2206847 res!948630) b!2206850))

(assert (= (and b!2206850 (not res!948629)) b!2206849))

(assert (= (and b!2206850 res!948626) b!2206844))

(assert (= (and b!2206844 res!948635) b!2206855))

(assert (= (and b!2206855 res!948628) b!2206852))

(assert (= (and b!2206852 res!948632) b!2206846))

(assert (= (and b!2206846 (not res!948627)) b!2206843))

(assert (= (and b!2206843 (not res!948633)) b!2206853))

(assert (= start!214638 b!2206854))

(assert (= (and start!214638 condSetEmpty!19236) setIsEmpty!19236))

(assert (= (and start!214638 (not condSetEmpty!19236)) setNonEmpty!19236))

(assert (= setNonEmpty!19236 b!2206848))

(declare-fun m!2648447 () Bool)

(assert (=> b!2206845 m!2648447))

(declare-fun m!2648449 () Bool)

(assert (=> b!2206845 m!2648449))

(declare-fun m!2648451 () Bool)

(assert (=> b!2206845 m!2648451))

(declare-fun m!2648453 () Bool)

(assert (=> b!2206845 m!2648453))

(declare-fun m!2648455 () Bool)

(assert (=> b!2206852 m!2648455))

(declare-fun m!2648457 () Bool)

(assert (=> b!2206846 m!2648457))

(declare-fun m!2648459 () Bool)

(assert (=> b!2206846 m!2648459))

(declare-fun m!2648461 () Bool)

(assert (=> b!2206846 m!2648461))

(declare-fun m!2648463 () Bool)

(assert (=> b!2206846 m!2648463))

(declare-fun m!2648465 () Bool)

(assert (=> b!2206846 m!2648465))

(declare-fun m!2648467 () Bool)

(assert (=> b!2206846 m!2648467))

(declare-fun m!2648469 () Bool)

(assert (=> b!2206846 m!2648469))

(declare-fun m!2648471 () Bool)

(assert (=> b!2206846 m!2648471))

(declare-fun m!2648473 () Bool)

(assert (=> b!2206846 m!2648473))

(declare-fun m!2648475 () Bool)

(assert (=> b!2206846 m!2648475))

(assert (=> b!2206846 m!2648459))

(assert (=> b!2206846 m!2648463))

(declare-fun m!2648477 () Bool)

(assert (=> setNonEmpty!19236 m!2648477))

(declare-fun m!2648479 () Bool)

(assert (=> b!2206854 m!2648479))

(declare-fun m!2648481 () Bool)

(assert (=> start!214638 m!2648481))

(declare-fun m!2648483 () Bool)

(assert (=> b!2206844 m!2648483))

(declare-fun m!2648485 () Bool)

(assert (=> b!2206851 m!2648485))

(declare-fun m!2648487 () Bool)

(assert (=> b!2206850 m!2648487))

(declare-fun m!2648489 () Bool)

(assert (=> b!2206843 m!2648489))

(check-sat (not b!2206844) (not setNonEmpty!19236) (not b!2206852) (not b!2206851) (not b!2206850) (not b!2206846) (not b!2206854) (not b!2206843) (not b!2206845) (not start!214638) (not b!2206848))
(check-sat)
