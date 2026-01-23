; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!213582 () Bool)

(assert start!213582)

(declare-fun b!2199599 () Bool)

(declare-fun e!1405671 () Int)

(declare-fun lastNullablePos!193 () Int)

(assert (=> b!2199599 (= e!1405671 lastNullablePos!193)))

(declare-fun b!2199600 () Bool)

(declare-fun e!1405679 () Bool)

(declare-fun tp!684551 () Bool)

(assert (=> b!2199600 (= e!1405679 tp!684551)))

(declare-fun b!2199601 () Bool)

(declare-fun e!1405673 () Bool)

(declare-fun e!1405674 () Bool)

(assert (=> b!2199601 (= e!1405673 e!1405674)))

(declare-fun res!945290 () Bool)

(assert (=> b!2199601 (=> res!945290 e!1405674)))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((C!12532 0))(
  ( (C!12533 (val!7252 Int)) )
))
(declare-datatypes ((Regex!6193 0))(
  ( (ElementMatch!6193 (c!350832 C!12532)) (Concat!10495 (regOne!12898 Regex!6193) (regTwo!12898 Regex!6193)) (EmptyExpr!6193) (Star!6193 (reg!6522 Regex!6193)) (EmptyLang!6193) (Union!6193 (regOne!12899 Regex!6193) (regTwo!12899 Regex!6193)) )
))
(declare-datatypes ((List!25680 0))(
  ( (Nil!25596) (Cons!25596 (h!30997 Regex!6193) (t!198298 List!25680)) )
))
(declare-datatypes ((Context!3526 0))(
  ( (Context!3527 (exprs!2263 List!25680)) )
))
(declare-fun lt!822845 () (InoxSet Context!3526))

(declare-datatypes ((List!25681 0))(
  ( (Nil!25597) (Cons!25597 (h!30998 C!12532) (t!198299 List!25681)) )
))
(declare-fun lt!822830 () List!25681)

(declare-fun matchZipper!279 ((InoxSet Context!3526) List!25681) Bool)

(assert (=> b!2199601 (= res!945290 (not (matchZipper!279 lt!822845 lt!822830)))))

(declare-fun lt!822841 () List!25681)

(declare-fun lt!822837 () Int)

(declare-fun from!1114 () Int)

(declare-fun take!371 (List!25681 Int) List!25681)

(declare-fun drop!1381 (List!25681 Int) List!25681)

(assert (=> b!2199601 (= lt!822830 (take!371 (drop!1381 lt!822841 (+ 1 from!1114)) lt!822837))))

(declare-datatypes ((IArray!16663 0))(
  ( (IArray!16664 (innerList!8389 List!25681)) )
))
(declare-datatypes ((Conc!8329 0))(
  ( (Node!8329 (left!19660 Conc!8329) (right!19990 Conc!8329) (csize!16888 Int) (cheight!8540 Int)) (Leaf!12193 (xs!11271 IArray!16663) (csize!16889 Int)) (Empty!8329) )
))
(declare-datatypes ((BalanceConc!16420 0))(
  ( (BalanceConc!16421 (c!350833 Conc!8329)) )
))
(declare-fun totalInput!923 () BalanceConc!16420)

(declare-fun list!9851 (BalanceConc!16420) List!25681)

(assert (=> b!2199601 (= lt!822841 (list!9851 totalInput!923))))

(declare-fun b!2199602 () Bool)

(declare-fun e!1405680 () Bool)

(assert (=> b!2199602 (= e!1405674 e!1405680)))

(declare-fun res!945294 () Bool)

(assert (=> b!2199602 (=> res!945294 e!1405680)))

(declare-fun z!3955 () (InoxSet Context!3526))

(declare-fun lt!822842 () List!25681)

(assert (=> b!2199602 (= res!945294 (not (matchZipper!279 z!3955 lt!822842)))))

(declare-fun lt!822840 () C!12532)

(assert (=> b!2199602 (= lt!822842 (Cons!25597 lt!822840 lt!822830))))

(declare-fun b!2199603 () Bool)

(declare-fun res!945289 () Bool)

(declare-fun e!1405677 () Bool)

(assert (=> b!2199603 (=> (not res!945289) (not e!1405677))))

(declare-fun lt!822831 () Int)

(assert (=> b!2199603 (= res!945289 (not (= from!1114 lt!822831)))))

(declare-fun b!2199604 () Bool)

(declare-fun e!1405675 () Bool)

(assert (=> b!2199604 (= e!1405675 (not e!1405673))))

(declare-fun res!945287 () Bool)

(assert (=> b!2199604 (=> res!945287 e!1405673)))

(declare-fun lt!822832 () Bool)

(assert (=> b!2199604 (= res!945287 lt!822832)))

(declare-fun e!1405669 () Bool)

(assert (=> b!2199604 e!1405669))

(declare-fun res!945293 () Bool)

(assert (=> b!2199604 (=> res!945293 e!1405669)))

(assert (=> b!2199604 (= res!945293 lt!822832)))

(assert (=> b!2199604 (= lt!822832 (<= lt!822837 0))))

(declare-fun lt!822843 () Int)

(assert (=> b!2199604 (= lt!822837 (+ 1 lt!822843))))

(declare-fun lt!822838 () Int)

(assert (=> b!2199604 (= lt!822843 (- lt!822838 (+ 1 from!1114)))))

(declare-datatypes ((Unit!38727 0))(
  ( (Unit!38728) )
))
(declare-fun lt!822829 () Unit!38727)

(declare-fun lt!822833 () Int)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmptyRecV3!182 ((InoxSet Context!3526) Int BalanceConc!16420 Int) Unit!38727)

(assert (=> b!2199604 (= lt!822829 (longestMatchIsAcceptedByMatchOrIsEmptyRecV3!182 lt!822845 (+ 1 from!1114) totalInput!923 lt!822833))))

(declare-fun b!2199605 () Bool)

(declare-fun e!1405670 () Bool)

(assert (=> b!2199605 (= e!1405670 (= lastNullablePos!193 (- from!1114 1)))))

(declare-fun res!945297 () Bool)

(declare-fun e!1405681 () Bool)

(assert (=> start!213582 (=> (not res!945297) (not e!1405681))))

(assert (=> start!213582 (= res!945297 (>= from!1114 0))))

(assert (=> start!213582 e!1405681))

(assert (=> start!213582 true))

(declare-fun e!1405676 () Bool)

(declare-fun inv!34327 (BalanceConc!16420) Bool)

(assert (=> start!213582 (and (inv!34327 totalInput!923) e!1405676)))

(declare-fun condSetEmpty!18882 () Bool)

(assert (=> start!213582 (= condSetEmpty!18882 (= z!3955 ((as const (Array Context!3526 Bool)) false)))))

(declare-fun setRes!18882 () Bool)

(assert (=> start!213582 setRes!18882))

(declare-fun b!2199606 () Bool)

(declare-fun e!1405678 () Bool)

(declare-fun e!1405672 () Bool)

(assert (=> b!2199606 (= e!1405678 e!1405672)))

(declare-fun res!945291 () Bool)

(assert (=> b!2199606 (=> res!945291 e!1405672)))

(declare-fun lt!822835 () Int)

(declare-fun lt!822839 () Int)

(assert (=> b!2199606 (= res!945291 (or (not (= lt!822835 lt!822839)) (<= lt!822835 0)))))

(declare-fun lt!822828 () Int)

(assert (=> b!2199606 (= lt!822835 (+ 1 (- lt!822828 from!1114)))))

(declare-fun b!2199607 () Bool)

(declare-fun tp!684550 () Bool)

(declare-fun inv!34328 (Conc!8329) Bool)

(assert (=> b!2199607 (= e!1405676 (and (inv!34328 (c!350833 totalInput!923)) tp!684550))))

(declare-fun b!2199608 () Bool)

(declare-fun res!945299 () Bool)

(assert (=> b!2199608 (=> (not res!945299) (not e!1405677))))

(assert (=> b!2199608 (= res!945299 e!1405670)))

(declare-fun res!945295 () Bool)

(assert (=> b!2199608 (=> res!945295 e!1405670)))

(declare-fun nullableZipper!473 ((InoxSet Context!3526)) Bool)

(assert (=> b!2199608 (= res!945295 (not (nullableZipper!473 z!3955)))))

(declare-fun b!2199609 () Bool)

(assert (=> b!2199609 (= e!1405680 e!1405678)))

(declare-fun res!945296 () Bool)

(assert (=> b!2199609 (=> res!945296 e!1405678)))

(declare-fun lt!822844 () List!25681)

(assert (=> b!2199609 (= res!945296 (not (= lt!822842 lt!822844)))))

(declare-fun lt!822834 () C!12532)

(assert (=> b!2199609 (= (Cons!25597 lt!822834 lt!822830) lt!822844)))

(declare-fun lt!822836 () List!25681)

(assert (=> b!2199609 (= lt!822844 (take!371 lt!822836 lt!822839))))

(assert (=> b!2199609 (= lt!822839 (+ 2 lt!822843))))

(assert (=> b!2199609 (= lt!822836 (drop!1381 lt!822841 from!1114))))

(declare-fun apply!6282 (List!25681 Int) C!12532)

(assert (=> b!2199609 (= lt!822834 (apply!6282 lt!822841 from!1114))))

(declare-fun lt!822846 () Unit!38727)

(declare-fun lemmaDropTakeAddOneLeft!24 (List!25681 Int Int) Unit!38727)

(assert (=> b!2199609 (= lt!822846 (lemmaDropTakeAddOneLeft!24 lt!822841 from!1114 lt!822837))))

(declare-fun b!2199610 () Bool)

(declare-fun res!945298 () Bool)

(assert (=> b!2199610 (=> (not res!945298) (not e!1405677))))

(declare-fun lostCauseZipper!309 ((InoxSet Context!3526)) Bool)

(assert (=> b!2199610 (= res!945298 (not (lostCauseZipper!309 z!3955)))))

(declare-fun b!2199611 () Bool)

(assert (=> b!2199611 (= e!1405669 (matchZipper!279 lt!822845 (take!371 (drop!1381 (list!9851 totalInput!923) (+ 1 from!1114)) lt!822837)))))

(declare-fun setIsEmpty!18882 () Bool)

(assert (=> setIsEmpty!18882 setRes!18882))

(declare-fun b!2199612 () Bool)

(assert (=> b!2199612 (= e!1405677 e!1405675)))

(declare-fun res!945292 () Bool)

(assert (=> b!2199612 (=> (not res!945292) (not e!1405675))))

(assert (=> b!2199612 (= res!945292 (= lt!822828 lt!822838))))

(declare-fun furthestNullablePosition!361 ((InoxSet Context!3526) Int BalanceConc!16420 Int Int) Int)

(assert (=> b!2199612 (= lt!822838 (furthestNullablePosition!361 lt!822845 (+ 1 from!1114) totalInput!923 lt!822831 lt!822833))))

(assert (=> b!2199612 (= lt!822828 (furthestNullablePosition!361 z!3955 from!1114 totalInput!923 lt!822831 lastNullablePos!193))))

(assert (=> b!2199612 (= lt!822833 e!1405671)))

(declare-fun c!350831 () Bool)

(assert (=> b!2199612 (= c!350831 (nullableZipper!473 lt!822845))))

(declare-fun derivationStepZipper!265 ((InoxSet Context!3526) C!12532) (InoxSet Context!3526))

(assert (=> b!2199612 (= lt!822845 (derivationStepZipper!265 z!3955 lt!822840))))

(declare-fun apply!6283 (BalanceConc!16420 Int) C!12532)

(assert (=> b!2199612 (= lt!822840 (apply!6283 totalInput!923 from!1114))))

(declare-fun b!2199613 () Bool)

(assert (=> b!2199613 (= e!1405681 e!1405677)))

(declare-fun res!945288 () Bool)

(assert (=> b!2199613 (=> (not res!945288) (not e!1405677))))

(assert (=> b!2199613 (= res!945288 (and (<= from!1114 lt!822831) (>= lastNullablePos!193 (- 1)) (< lastNullablePos!193 from!1114)))))

(declare-fun size!19958 (BalanceConc!16420) Int)

(assert (=> b!2199613 (= lt!822831 (size!19958 totalInput!923))))

(declare-fun b!2199614 () Bool)

(assert (=> b!2199614 (= e!1405671 from!1114)))

(declare-fun setElem!18882 () Context!3526)

(declare-fun setNonEmpty!18882 () Bool)

(declare-fun tp!684552 () Bool)

(declare-fun inv!34329 (Context!3526) Bool)

(assert (=> setNonEmpty!18882 (= setRes!18882 (and tp!684552 (inv!34329 setElem!18882) e!1405679))))

(declare-fun setRest!18882 () (InoxSet Context!3526))

(assert (=> setNonEmpty!18882 (= z!3955 ((_ map or) (store ((as const (Array Context!3526 Bool)) false) setElem!18882 true) setRest!18882))))

(declare-fun b!2199615 () Bool)

(assert (=> b!2199615 (= e!1405672 (matchZipper!279 z!3955 (take!371 lt!822836 lt!822835)))))

(assert (= (and start!213582 res!945297) b!2199613))

(assert (= (and b!2199613 res!945288) b!2199608))

(assert (= (and b!2199608 (not res!945295)) b!2199605))

(assert (= (and b!2199608 res!945299) b!2199603))

(assert (= (and b!2199603 res!945289) b!2199610))

(assert (= (and b!2199610 res!945298) b!2199612))

(assert (= (and b!2199612 c!350831) b!2199614))

(assert (= (and b!2199612 (not c!350831)) b!2199599))

(assert (= (and b!2199612 res!945292) b!2199604))

(assert (= (and b!2199604 (not res!945293)) b!2199611))

(assert (= (and b!2199604 (not res!945287)) b!2199601))

(assert (= (and b!2199601 (not res!945290)) b!2199602))

(assert (= (and b!2199602 (not res!945294)) b!2199609))

(assert (= (and b!2199609 (not res!945296)) b!2199606))

(assert (= (and b!2199606 (not res!945291)) b!2199615))

(assert (= start!213582 b!2199607))

(assert (= (and start!213582 condSetEmpty!18882) setIsEmpty!18882))

(assert (= (and start!213582 (not condSetEmpty!18882)) setNonEmpty!18882))

(assert (= setNonEmpty!18882 b!2199600))

(declare-fun m!2642463 () Bool)

(assert (=> setNonEmpty!18882 m!2642463))

(declare-fun m!2642465 () Bool)

(assert (=> b!2199607 m!2642465))

(declare-fun m!2642467 () Bool)

(assert (=> b!2199608 m!2642467))

(declare-fun m!2642469 () Bool)

(assert (=> b!2199601 m!2642469))

(declare-fun m!2642471 () Bool)

(assert (=> b!2199601 m!2642471))

(assert (=> b!2199601 m!2642471))

(declare-fun m!2642473 () Bool)

(assert (=> b!2199601 m!2642473))

(declare-fun m!2642475 () Bool)

(assert (=> b!2199601 m!2642475))

(declare-fun m!2642477 () Bool)

(assert (=> b!2199602 m!2642477))

(declare-fun m!2642479 () Bool)

(assert (=> b!2199615 m!2642479))

(assert (=> b!2199615 m!2642479))

(declare-fun m!2642481 () Bool)

(assert (=> b!2199615 m!2642481))

(declare-fun m!2642483 () Bool)

(assert (=> b!2199612 m!2642483))

(declare-fun m!2642485 () Bool)

(assert (=> b!2199612 m!2642485))

(declare-fun m!2642487 () Bool)

(assert (=> b!2199612 m!2642487))

(declare-fun m!2642489 () Bool)

(assert (=> b!2199612 m!2642489))

(declare-fun m!2642491 () Bool)

(assert (=> b!2199612 m!2642491))

(declare-fun m!2642493 () Bool)

(assert (=> b!2199613 m!2642493))

(assert (=> b!2199611 m!2642475))

(assert (=> b!2199611 m!2642475))

(declare-fun m!2642495 () Bool)

(assert (=> b!2199611 m!2642495))

(assert (=> b!2199611 m!2642495))

(declare-fun m!2642497 () Bool)

(assert (=> b!2199611 m!2642497))

(assert (=> b!2199611 m!2642497))

(declare-fun m!2642499 () Bool)

(assert (=> b!2199611 m!2642499))

(declare-fun m!2642501 () Bool)

(assert (=> start!213582 m!2642501))

(declare-fun m!2642503 () Bool)

(assert (=> b!2199604 m!2642503))

(declare-fun m!2642505 () Bool)

(assert (=> b!2199610 m!2642505))

(declare-fun m!2642507 () Bool)

(assert (=> b!2199609 m!2642507))

(declare-fun m!2642509 () Bool)

(assert (=> b!2199609 m!2642509))

(declare-fun m!2642511 () Bool)

(assert (=> b!2199609 m!2642511))

(declare-fun m!2642513 () Bool)

(assert (=> b!2199609 m!2642513))

(check-sat (not b!2199613) (not b!2199607) (not setNonEmpty!18882) (not b!2199611) (not b!2199604) (not b!2199601) (not b!2199602) (not b!2199615) (not b!2199600) (not b!2199608) (not start!213582) (not b!2199612) (not b!2199610) (not b!2199609))
(check-sat)
