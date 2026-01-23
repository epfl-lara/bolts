; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!212566 () Bool)

(assert start!212566)

(declare-fun b!2192057 () Bool)

(declare-fun res!942375 () Bool)

(declare-fun e!1400854 () Bool)

(assert (=> b!2192057 (=> (not res!942375) (not e!1400854))))

(declare-fun from!1114 () Int)

(declare-fun lt!819461 () Int)

(assert (=> b!2192057 (= res!942375 (not (= from!1114 lt!819461)))))

(declare-fun b!2192058 () Bool)

(declare-fun res!942373 () Bool)

(assert (=> b!2192058 (=> (not res!942373) (not e!1400854))))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((C!12396 0))(
  ( (C!12397 (val!7184 Int)) )
))
(declare-datatypes ((Regex!6125 0))(
  ( (ElementMatch!6125 (c!348658 C!12396)) (Concat!10427 (regOne!12762 Regex!6125) (regTwo!12762 Regex!6125)) (EmptyExpr!6125) (Star!6125 (reg!6454 Regex!6125)) (EmptyLang!6125) (Union!6125 (regOne!12763 Regex!6125) (regTwo!12763 Regex!6125)) )
))
(declare-datatypes ((List!25523 0))(
  ( (Nil!25439) (Cons!25439 (h!30840 Regex!6125) (t!198121 List!25523)) )
))
(declare-datatypes ((Context!3390 0))(
  ( (Context!3391 (exprs!2195 List!25523)) )
))
(declare-fun z!3955 () (InoxSet Context!3390))

(declare-fun lostCauseZipper!243 ((InoxSet Context!3390)) Bool)

(assert (=> b!2192058 (= res!942373 (not (lostCauseZipper!243 z!3955)))))

(declare-fun setIsEmpty!18600 () Bool)

(declare-fun setRes!18600 () Bool)

(assert (=> setIsEmpty!18600 setRes!18600))

(declare-fun b!2192059 () Bool)

(declare-fun e!1400850 () Bool)

(declare-fun e!1400853 () Bool)

(assert (=> b!2192059 (= e!1400850 e!1400853)))

(declare-fun res!942365 () Bool)

(assert (=> b!2192059 (=> res!942365 e!1400853)))

(declare-fun lt!819459 () (InoxSet Context!3390))

(declare-datatypes ((List!25524 0))(
  ( (Nil!25440) (Cons!25440 (h!30841 C!12396) (t!198122 List!25524)) )
))
(declare-fun lt!819464 () List!25524)

(declare-fun matchZipper!225 ((InoxSet Context!3390) List!25524) Bool)

(assert (=> b!2192059 (= res!942365 (not (matchZipper!225 lt!819459 lt!819464)))))

(declare-fun lt!819456 () Int)

(declare-fun lt!819453 () List!25524)

(declare-fun take!317 (List!25524 Int) List!25524)

(declare-fun drop!1327 (List!25524 Int) List!25524)

(assert (=> b!2192059 (= lt!819464 (take!317 (drop!1327 lt!819453 (+ 1 from!1114)) lt!819456))))

(declare-datatypes ((IArray!16527 0))(
  ( (IArray!16528 (innerList!8321 List!25524)) )
))
(declare-datatypes ((Conc!8261 0))(
  ( (Node!8261 (left!19518 Conc!8261) (right!19848 Conc!8261) (csize!16752 Int) (cheight!8472 Int)) (Leaf!12091 (xs!11203 IArray!16527) (csize!16753 Int)) (Empty!8261) )
))
(declare-datatypes ((BalanceConc!16284 0))(
  ( (BalanceConc!16285 (c!348659 Conc!8261)) )
))
(declare-fun totalInput!923 () BalanceConc!16284)

(declare-fun list!9772 (BalanceConc!16284) List!25524)

(assert (=> b!2192059 (= lt!819453 (list!9772 totalInput!923))))

(declare-fun b!2192060 () Bool)

(declare-fun e!1400857 () Bool)

(declare-fun tp!683216 () Bool)

(declare-fun inv!33963 (Conc!8261) Bool)

(assert (=> b!2192060 (= e!1400857 (and (inv!33963 (c!348659 totalInput!923)) tp!683216))))

(declare-fun b!2192061 () Bool)

(declare-fun e!1400851 () Bool)

(assert (=> b!2192061 (= e!1400851 (not e!1400850))))

(declare-fun res!942366 () Bool)

(assert (=> b!2192061 (=> res!942366 e!1400850)))

(declare-fun lt!819457 () Bool)

(assert (=> b!2192061 (= res!942366 lt!819457)))

(declare-fun e!1400855 () Bool)

(assert (=> b!2192061 e!1400855))

(declare-fun res!942371 () Bool)

(assert (=> b!2192061 (=> res!942371 e!1400855)))

(assert (=> b!2192061 (= res!942371 lt!819457)))

(assert (=> b!2192061 (= lt!819457 (<= lt!819456 0))))

(declare-fun lt!819454 () Int)

(assert (=> b!2192061 (= lt!819456 (+ 1 lt!819454))))

(declare-fun lt!819455 () Int)

(assert (=> b!2192061 (= lt!819454 (- lt!819455 (+ 1 from!1114)))))

(declare-fun lt!819463 () Int)

(declare-datatypes ((Unit!38553 0))(
  ( (Unit!38554) )
))
(declare-fun lt!819460 () Unit!38553)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmptyRecV3!130 ((InoxSet Context!3390) Int BalanceConc!16284 Int) Unit!38553)

(assert (=> b!2192061 (= lt!819460 (longestMatchIsAcceptedByMatchOrIsEmptyRecV3!130 lt!819459 (+ 1 from!1114) totalInput!923 lt!819463))))

(declare-fun b!2192062 () Bool)

(assert (=> b!2192062 (= e!1400854 e!1400851)))

(declare-fun res!942374 () Bool)

(assert (=> b!2192062 (=> (not res!942374) (not e!1400851))))

(declare-fun lt!819452 () Int)

(assert (=> b!2192062 (= res!942374 (= lt!819452 lt!819455))))

(declare-fun furthestNullablePosition!295 ((InoxSet Context!3390) Int BalanceConc!16284 Int Int) Int)

(assert (=> b!2192062 (= lt!819455 (furthestNullablePosition!295 lt!819459 (+ 1 from!1114) totalInput!923 lt!819461 lt!819463))))

(declare-fun lastNullablePos!193 () Int)

(assert (=> b!2192062 (= lt!819452 (furthestNullablePosition!295 z!3955 from!1114 totalInput!923 lt!819461 lastNullablePos!193))))

(declare-fun e!1400849 () Int)

(assert (=> b!2192062 (= lt!819463 e!1400849)))

(declare-fun c!348657 () Bool)

(declare-fun nullableZipper!405 ((InoxSet Context!3390)) Bool)

(assert (=> b!2192062 (= c!348657 (nullableZipper!405 lt!819459))))

(declare-fun lt!819458 () C!12396)

(declare-fun derivationStepZipper!202 ((InoxSet Context!3390) C!12396) (InoxSet Context!3390))

(assert (=> b!2192062 (= lt!819459 (derivationStepZipper!202 z!3955 lt!819458))))

(declare-fun apply!6167 (BalanceConc!16284 Int) C!12396)

(assert (=> b!2192062 (= lt!819458 (apply!6167 totalInput!923 from!1114))))

(declare-fun b!2192063 () Bool)

(assert (=> b!2192063 (= e!1400855 (matchZipper!225 lt!819459 (take!317 (drop!1327 (list!9772 totalInput!923) (+ 1 from!1114)) lt!819456)))))

(declare-fun b!2192064 () Bool)

(declare-fun e!1400848 () Bool)

(assert (=> b!2192064 (= e!1400848 (= lastNullablePos!193 (- from!1114 1)))))

(declare-fun b!2192065 () Bool)

(assert (=> b!2192065 (= e!1400853 true)))

(declare-fun apply!6168 (List!25524 Int) C!12396)

(assert (=> b!2192065 (= (Cons!25440 (apply!6168 lt!819453 from!1114) lt!819464) (take!317 (drop!1327 lt!819453 from!1114) (+ 2 lt!819454)))))

(declare-fun lt!819462 () Unit!38553)

(declare-fun lemmaDropTakeAddOneLeft!10 (List!25524 Int Int) Unit!38553)

(assert (=> b!2192065 (= lt!819462 (lemmaDropTakeAddOneLeft!10 lt!819453 from!1114 lt!819456))))

(declare-fun b!2192066 () Bool)

(declare-fun res!942368 () Bool)

(assert (=> b!2192066 (=> res!942368 e!1400853)))

(assert (=> b!2192066 (= res!942368 (not (matchZipper!225 z!3955 (Cons!25440 lt!819458 lt!819464))))))

(declare-fun setNonEmpty!18600 () Bool)

(declare-fun setElem!18600 () Context!3390)

(declare-fun e!1400852 () Bool)

(declare-fun tp!683217 () Bool)

(declare-fun inv!33964 (Context!3390) Bool)

(assert (=> setNonEmpty!18600 (= setRes!18600 (and tp!683217 (inv!33964 setElem!18600) e!1400852))))

(declare-fun setRest!18600 () (InoxSet Context!3390))

(assert (=> setNonEmpty!18600 (= z!3955 ((_ map or) (store ((as const (Array Context!3390 Bool)) false) setElem!18600 true) setRest!18600))))

(declare-fun b!2192067 () Bool)

(declare-fun res!942369 () Bool)

(assert (=> b!2192067 (=> (not res!942369) (not e!1400854))))

(assert (=> b!2192067 (= res!942369 e!1400848)))

(declare-fun res!942372 () Bool)

(assert (=> b!2192067 (=> res!942372 e!1400848)))

(assert (=> b!2192067 (= res!942372 (not (nullableZipper!405 z!3955)))))

(declare-fun res!942367 () Bool)

(declare-fun e!1400856 () Bool)

(assert (=> start!212566 (=> (not res!942367) (not e!1400856))))

(assert (=> start!212566 (= res!942367 (>= from!1114 0))))

(assert (=> start!212566 e!1400856))

(assert (=> start!212566 true))

(declare-fun inv!33965 (BalanceConc!16284) Bool)

(assert (=> start!212566 (and (inv!33965 totalInput!923) e!1400857)))

(declare-fun condSetEmpty!18600 () Bool)

(assert (=> start!212566 (= condSetEmpty!18600 (= z!3955 ((as const (Array Context!3390 Bool)) false)))))

(assert (=> start!212566 setRes!18600))

(declare-fun b!2192068 () Bool)

(assert (=> b!2192068 (= e!1400849 from!1114)))

(declare-fun b!2192069 () Bool)

(declare-fun tp!683218 () Bool)

(assert (=> b!2192069 (= e!1400852 tp!683218)))

(declare-fun b!2192070 () Bool)

(assert (=> b!2192070 (= e!1400849 lastNullablePos!193)))

(declare-fun b!2192071 () Bool)

(assert (=> b!2192071 (= e!1400856 e!1400854)))

(declare-fun res!942370 () Bool)

(assert (=> b!2192071 (=> (not res!942370) (not e!1400854))))

(assert (=> b!2192071 (= res!942370 (and (<= from!1114 lt!819461) (>= lastNullablePos!193 (- 1)) (< lastNullablePos!193 from!1114)))))

(declare-fun size!19845 (BalanceConc!16284) Int)

(assert (=> b!2192071 (= lt!819461 (size!19845 totalInput!923))))

(assert (= (and start!212566 res!942367) b!2192071))

(assert (= (and b!2192071 res!942370) b!2192067))

(assert (= (and b!2192067 (not res!942372)) b!2192064))

(assert (= (and b!2192067 res!942369) b!2192057))

(assert (= (and b!2192057 res!942375) b!2192058))

(assert (= (and b!2192058 res!942373) b!2192062))

(assert (= (and b!2192062 c!348657) b!2192068))

(assert (= (and b!2192062 (not c!348657)) b!2192070))

(assert (= (and b!2192062 res!942374) b!2192061))

(assert (= (and b!2192061 (not res!942371)) b!2192063))

(assert (= (and b!2192061 (not res!942366)) b!2192059))

(assert (= (and b!2192059 (not res!942365)) b!2192066))

(assert (= (and b!2192066 (not res!942368)) b!2192065))

(assert (= start!212566 b!2192060))

(assert (= (and start!212566 condSetEmpty!18600) setIsEmpty!18600))

(assert (= (and start!212566 (not condSetEmpty!18600)) setNonEmpty!18600))

(assert (= setNonEmpty!18600 b!2192069))

(declare-fun m!2634795 () Bool)

(assert (=> start!212566 m!2634795))

(declare-fun m!2634797 () Bool)

(assert (=> b!2192059 m!2634797))

(declare-fun m!2634799 () Bool)

(assert (=> b!2192059 m!2634799))

(assert (=> b!2192059 m!2634799))

(declare-fun m!2634801 () Bool)

(assert (=> b!2192059 m!2634801))

(declare-fun m!2634803 () Bool)

(assert (=> b!2192059 m!2634803))

(declare-fun m!2634805 () Bool)

(assert (=> setNonEmpty!18600 m!2634805))

(assert (=> b!2192063 m!2634803))

(assert (=> b!2192063 m!2634803))

(declare-fun m!2634807 () Bool)

(assert (=> b!2192063 m!2634807))

(assert (=> b!2192063 m!2634807))

(declare-fun m!2634809 () Bool)

(assert (=> b!2192063 m!2634809))

(assert (=> b!2192063 m!2634809))

(declare-fun m!2634811 () Bool)

(assert (=> b!2192063 m!2634811))

(declare-fun m!2634813 () Bool)

(assert (=> b!2192067 m!2634813))

(declare-fun m!2634815 () Bool)

(assert (=> b!2192060 m!2634815))

(declare-fun m!2634817 () Bool)

(assert (=> b!2192071 m!2634817))

(declare-fun m!2634819 () Bool)

(assert (=> b!2192066 m!2634819))

(declare-fun m!2634821 () Bool)

(assert (=> b!2192058 m!2634821))

(declare-fun m!2634823 () Bool)

(assert (=> b!2192061 m!2634823))

(declare-fun m!2634825 () Bool)

(assert (=> b!2192062 m!2634825))

(declare-fun m!2634827 () Bool)

(assert (=> b!2192062 m!2634827))

(declare-fun m!2634829 () Bool)

(assert (=> b!2192062 m!2634829))

(declare-fun m!2634831 () Bool)

(assert (=> b!2192062 m!2634831))

(declare-fun m!2634833 () Bool)

(assert (=> b!2192062 m!2634833))

(declare-fun m!2634835 () Bool)

(assert (=> b!2192065 m!2634835))

(declare-fun m!2634837 () Bool)

(assert (=> b!2192065 m!2634837))

(assert (=> b!2192065 m!2634837))

(declare-fun m!2634839 () Bool)

(assert (=> b!2192065 m!2634839))

(declare-fun m!2634841 () Bool)

(assert (=> b!2192065 m!2634841))

(check-sat (not b!2192066) (not b!2192061) (not b!2192058) (not b!2192059) (not setNonEmpty!18600) (not b!2192069) (not start!212566) (not b!2192063) (not b!2192071) (not b!2192065) (not b!2192067) (not b!2192060) (not b!2192062))
(check-sat)
