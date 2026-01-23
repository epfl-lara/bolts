; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!214626 () Bool)

(assert start!214626)

(declare-fun b!2206583 () Bool)

(declare-fun e!1409658 () Bool)

(declare-fun tp!686008 () Bool)

(assert (=> b!2206583 (= e!1409658 tp!686008)))

(declare-fun b!2206584 () Bool)

(declare-fun e!1409654 () Int)

(declare-fun lastNullablePos!161 () Int)

(assert (=> b!2206584 (= e!1409654 lastNullablePos!161)))

(declare-fun b!2206585 () Bool)

(declare-fun e!1409657 () Bool)

(declare-datatypes ((C!12704 0))(
  ( (C!12705 (val!7338 Int)) )
))
(declare-datatypes ((List!25865 0))(
  ( (Nil!25781) (Cons!25781 (h!31182 C!12704) (t!198509 List!25865)) )
))
(declare-datatypes ((IArray!16835 0))(
  ( (IArray!16836 (innerList!8475 List!25865)) )
))
(declare-datatypes ((Conc!8415 0))(
  ( (Node!8415 (left!19817 Conc!8415) (right!20147 Conc!8415) (csize!17060 Int) (cheight!8626 Int)) (Leaf!12322 (xs!11357 IArray!16835) (csize!17061 Int)) (Empty!8415) )
))
(declare-datatypes ((BalanceConc!16592 0))(
  ( (BalanceConc!16593 (c!352500 Conc!8415)) )
))
(declare-fun totalInput!891 () BalanceConc!16592)

(declare-fun tp!686010 () Bool)

(declare-fun inv!34777 (Conc!8415) Bool)

(assert (=> b!2206585 (= e!1409657 (and (inv!34777 (c!352500 totalInput!891)) tp!686010))))

(declare-fun b!2206586 () Bool)

(declare-fun from!1082 () Int)

(assert (=> b!2206586 (= e!1409654 from!1082)))

(declare-fun b!2206587 () Bool)

(declare-fun res!948433 () Bool)

(declare-fun e!1409656 () Bool)

(assert (=> b!2206587 (=> (not res!948433) (not e!1409656))))

(declare-fun e!1409653 () Bool)

(assert (=> b!2206587 (= res!948433 e!1409653)))

(declare-fun res!948432 () Bool)

(assert (=> b!2206587 (=> res!948432 e!1409653)))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((Regex!6279 0))(
  ( (ElementMatch!6279 (c!352501 C!12704)) (Concat!10581 (regOne!13070 Regex!6279) (regTwo!13070 Regex!6279)) (EmptyExpr!6279) (Star!6279 (reg!6608 Regex!6279)) (EmptyLang!6279) (Union!6279 (regOne!13071 Regex!6279) (regTwo!13071 Regex!6279)) )
))
(declare-datatypes ((List!25866 0))(
  ( (Nil!25782) (Cons!25782 (h!31183 Regex!6279) (t!198510 List!25866)) )
))
(declare-datatypes ((Context!3698 0))(
  ( (Context!3699 (exprs!2349 List!25866)) )
))
(declare-fun z!3888 () (InoxSet Context!3698))

(declare-fun nullableZipper!559 ((InoxSet Context!3698)) Bool)

(assert (=> b!2206587 (= res!948432 (not (nullableZipper!559 z!3888)))))

(declare-fun res!948429 () Bool)

(declare-fun e!1409655 () Bool)

(assert (=> start!214626 (=> (not res!948429) (not e!1409655))))

(assert (=> start!214626 (= res!948429 (>= from!1082 0))))

(assert (=> start!214626 e!1409655))

(assert (=> start!214626 true))

(declare-fun inv!34778 (BalanceConc!16592) Bool)

(assert (=> start!214626 (and (inv!34778 totalInput!891) e!1409657)))

(declare-fun condSetEmpty!19218 () Bool)

(assert (=> start!214626 (= condSetEmpty!19218 (= z!3888 ((as const (Array Context!3698 Bool)) false)))))

(declare-fun setRes!19218 () Bool)

(assert (=> start!214626 setRes!19218))

(declare-fun b!2206588 () Bool)

(declare-fun e!1409659 () Bool)

(assert (=> b!2206588 (= e!1409655 e!1409659)))

(declare-fun res!948437 () Bool)

(assert (=> b!2206588 (=> (not res!948437) (not e!1409659))))

(declare-fun lt!825152 () Int)

(declare-fun knownSize!10 () Int)

(assert (=> b!2206588 (= res!948437 (and (<= from!1082 lt!825152) (>= knownSize!10 0) (<= knownSize!10 (- lt!825152 from!1082))))))

(declare-fun size!20089 (BalanceConc!16592) Int)

(assert (=> b!2206588 (= lt!825152 (size!20089 totalInput!891))))

(declare-fun b!2206589 () Bool)

(declare-fun res!948434 () Bool)

(assert (=> b!2206589 (=> (not res!948434) (not e!1409656))))

(declare-fun isEmpty!14754 (BalanceConc!16592) Bool)

(assert (=> b!2206589 (= res!948434 (not (isEmpty!14754 totalInput!891)))))

(declare-fun b!2206590 () Bool)

(declare-fun e!1409652 () Bool)

(assert (=> b!2206590 (= e!1409652 (and (>= (+ 1 from!1082) 0) (<= (+ 1 from!1082) lt!825152)))))

(declare-fun b!2206591 () Bool)

(assert (=> b!2206591 (= e!1409656 (not e!1409652))))

(declare-fun res!948431 () Bool)

(assert (=> b!2206591 (=> res!948431 e!1409652)))

(declare-fun lt!825146 () List!25865)

(declare-fun lt!825147 () List!25865)

(declare-fun tail!3197 (List!25865) List!25865)

(assert (=> b!2206591 (= res!948431 (not (= lt!825146 (tail!3197 lt!825147))))))

(declare-fun lt!825151 () List!25865)

(declare-fun lt!825148 () C!12704)

(declare-fun take!457 (List!25865 Int) List!25865)

(assert (=> b!2206591 (= (Cons!25781 lt!825148 lt!825146) (take!457 lt!825151 (+ 1 (- knownSize!10 1))))))

(declare-fun lt!825153 () List!25865)

(declare-fun drop!1467 (List!25865 Int) List!25865)

(assert (=> b!2206591 (= lt!825146 (take!457 (drop!1467 lt!825153 (+ 1 from!1082)) (- knownSize!10 1)))))

(declare-fun apply!6358 (List!25865 Int) C!12704)

(assert (=> b!2206591 (= lt!825148 (apply!6358 lt!825153 from!1082))))

(declare-datatypes ((Unit!38873 0))(
  ( (Unit!38874) )
))
(declare-fun lt!825154 () Unit!38873)

(declare-fun lemmaDropTakeAddOneLeft!42 (List!25865 Int Int) Unit!38873)

(assert (=> b!2206591 (= lt!825154 (lemmaDropTakeAddOneLeft!42 lt!825153 from!1082 (- knownSize!10 1)))))

(declare-fun lt!825149 () (InoxSet Context!3698))

(declare-fun lt!825150 () Int)

(declare-fun furthestNullablePosition!413 ((InoxSet Context!3698) Int BalanceConc!16592 Int Int) Int)

(assert (=> b!2206591 (= lt!825150 (furthestNullablePosition!413 lt!825149 (+ 1 from!1082) totalInput!891 lt!825152 e!1409654))))

(declare-fun c!352499 () Bool)

(assert (=> b!2206591 (= c!352499 (nullableZipper!559 lt!825149))))

(declare-fun derivationStepZipper!311 ((InoxSet Context!3698) C!12704) (InoxSet Context!3698))

(declare-fun apply!6359 (BalanceConc!16592 Int) C!12704)

(assert (=> b!2206591 (= lt!825149 (derivationStepZipper!311 z!3888 (apply!6359 totalInput!891 from!1082)))))

(declare-fun b!2206592 () Bool)

(declare-fun res!948435 () Bool)

(assert (=> b!2206592 (=> (not res!948435) (not e!1409656))))

(assert (=> b!2206592 (= res!948435 (and (>= lastNullablePos!161 (- 1)) (< lastNullablePos!161 from!1082)))))

(declare-fun b!2206593 () Bool)

(declare-fun res!948430 () Bool)

(assert (=> b!2206593 (=> (not res!948430) (not e!1409656))))

(assert (=> b!2206593 (= res!948430 (and (not (= knownSize!10 0)) (> knownSize!10 0) (not (= from!1082 lt!825152))))))

(declare-fun b!2206594 () Bool)

(declare-fun res!948427 () Bool)

(assert (=> b!2206594 (=> res!948427 e!1409652)))

(declare-fun matchZipper!365 ((InoxSet Context!3698) List!25865) Bool)

(assert (=> b!2206594 (= res!948427 (not (matchZipper!365 lt!825149 lt!825146)))))

(declare-fun b!2206595 () Bool)

(declare-fun res!948428 () Bool)

(assert (=> b!2206595 (=> (not res!948428) (not e!1409656))))

(declare-fun lostCauseZipper!375 ((InoxSet Context!3698)) Bool)

(assert (=> b!2206595 (= res!948428 (not (lostCauseZipper!375 z!3888)))))

(declare-fun setIsEmpty!19218 () Bool)

(assert (=> setIsEmpty!19218 setRes!19218))

(declare-fun setNonEmpty!19218 () Bool)

(declare-fun tp!686009 () Bool)

(declare-fun setElem!19218 () Context!3698)

(declare-fun inv!34779 (Context!3698) Bool)

(assert (=> setNonEmpty!19218 (= setRes!19218 (and tp!686009 (inv!34779 setElem!19218) e!1409658))))

(declare-fun setRest!19218 () (InoxSet Context!3698))

(assert (=> setNonEmpty!19218 (= z!3888 ((_ map or) (store ((as const (Array Context!3698 Bool)) false) setElem!19218 true) setRest!19218))))

(declare-fun b!2206596 () Bool)

(assert (=> b!2206596 (= e!1409659 e!1409656)))

(declare-fun res!948436 () Bool)

(assert (=> b!2206596 (=> (not res!948436) (not e!1409656))))

(assert (=> b!2206596 (= res!948436 (matchZipper!365 z!3888 lt!825147))))

(assert (=> b!2206596 (= lt!825147 (take!457 lt!825151 knownSize!10))))

(assert (=> b!2206596 (= lt!825151 (drop!1467 lt!825153 from!1082))))

(declare-fun list!9962 (BalanceConc!16592) List!25865)

(assert (=> b!2206596 (= lt!825153 (list!9962 totalInput!891))))

(declare-fun b!2206597 () Bool)

(assert (=> b!2206597 (= e!1409653 (= lastNullablePos!161 (- from!1082 1)))))

(assert (= (and start!214626 res!948429) b!2206588))

(assert (= (and b!2206588 res!948437) b!2206596))

(assert (= (and b!2206596 res!948436) b!2206592))

(assert (= (and b!2206592 res!948435) b!2206587))

(assert (= (and b!2206587 (not res!948432)) b!2206597))

(assert (= (and b!2206587 res!948433) b!2206589))

(assert (= (and b!2206589 res!948434) b!2206593))

(assert (= (and b!2206593 res!948430) b!2206595))

(assert (= (and b!2206595 res!948428) b!2206591))

(assert (= (and b!2206591 c!352499) b!2206586))

(assert (= (and b!2206591 (not c!352499)) b!2206584))

(assert (= (and b!2206591 (not res!948431)) b!2206594))

(assert (= (and b!2206594 (not res!948427)) b!2206590))

(assert (= start!214626 b!2206585))

(assert (= (and start!214626 condSetEmpty!19218) setIsEmpty!19218))

(assert (= (and start!214626 (not condSetEmpty!19218)) setNonEmpty!19218))

(assert (= setNonEmpty!19218 b!2206583))

(declare-fun m!2648183 () Bool)

(assert (=> b!2206587 m!2648183))

(declare-fun m!2648185 () Bool)

(assert (=> b!2206588 m!2648185))

(declare-fun m!2648187 () Bool)

(assert (=> b!2206591 m!2648187))

(declare-fun m!2648189 () Bool)

(assert (=> b!2206591 m!2648189))

(declare-fun m!2648191 () Bool)

(assert (=> b!2206591 m!2648191))

(declare-fun m!2648193 () Bool)

(assert (=> b!2206591 m!2648193))

(declare-fun m!2648195 () Bool)

(assert (=> b!2206591 m!2648195))

(declare-fun m!2648197 () Bool)

(assert (=> b!2206591 m!2648197))

(declare-fun m!2648199 () Bool)

(assert (=> b!2206591 m!2648199))

(declare-fun m!2648201 () Bool)

(assert (=> b!2206591 m!2648201))

(assert (=> b!2206591 m!2648193))

(assert (=> b!2206591 m!2648189))

(declare-fun m!2648203 () Bool)

(assert (=> b!2206591 m!2648203))

(declare-fun m!2648205 () Bool)

(assert (=> b!2206591 m!2648205))

(declare-fun m!2648207 () Bool)

(assert (=> b!2206594 m!2648207))

(declare-fun m!2648209 () Bool)

(assert (=> b!2206589 m!2648209))

(declare-fun m!2648211 () Bool)

(assert (=> b!2206585 m!2648211))

(declare-fun m!2648213 () Bool)

(assert (=> setNonEmpty!19218 m!2648213))

(declare-fun m!2648215 () Bool)

(assert (=> b!2206595 m!2648215))

(declare-fun m!2648217 () Bool)

(assert (=> start!214626 m!2648217))

(declare-fun m!2648219 () Bool)

(assert (=> b!2206596 m!2648219))

(declare-fun m!2648221 () Bool)

(assert (=> b!2206596 m!2648221))

(declare-fun m!2648223 () Bool)

(assert (=> b!2206596 m!2648223))

(declare-fun m!2648225 () Bool)

(assert (=> b!2206596 m!2648225))

(check-sat (not b!2206585) (not b!2206589) (not b!2206583) (not b!2206587) (not setNonEmpty!19218) (not b!2206594) (not b!2206591) (not start!214626) (not b!2206595) (not b!2206588) (not b!2206596))
(check-sat)
