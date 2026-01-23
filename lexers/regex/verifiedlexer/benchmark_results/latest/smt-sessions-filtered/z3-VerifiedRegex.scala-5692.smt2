; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!283238 () Bool)

(assert start!283238)

(declare-fun b!2909251 () Bool)

(declare-fun e!1836381 () Bool)

(declare-fun e!1836379 () Bool)

(assert (=> b!2909251 (= e!1836381 e!1836379)))

(declare-fun res!1201179 () Bool)

(assert (=> b!2909251 (=> (not res!1201179) (not e!1836379))))

(declare-fun i!1878 () Int)

(declare-fun lt!1023329 () Int)

(assert (=> b!2909251 (= res!1201179 (and (<= i!1878 lt!1023329) (not (= i!1878 lt!1023329))))))

(declare-datatypes ((C!18060 0))(
  ( (C!18061 (val!11064 Int)) )
))
(declare-datatypes ((List!34787 0))(
  ( (Nil!34663) (Cons!34663 (h!40083 C!18060) (t!233830 List!34787)) )
))
(declare-datatypes ((IArray!21033 0))(
  ( (IArray!21034 (innerList!10574 List!34787)) )
))
(declare-datatypes ((Conc!10514 0))(
  ( (Node!10514 (left!26034 Conc!10514) (right!26364 Conc!10514) (csize!21258 Int) (cheight!10725 Int)) (Leaf!16207 (xs!13632 IArray!21033) (csize!21259 Int)) (Empty!10514) )
))
(declare-datatypes ((BalanceConc!20666 0))(
  ( (BalanceConc!20667 (c!474171 Conc!10514)) )
))
(declare-fun input!3770 () BalanceConc!20666)

(declare-fun size!26406 (BalanceConc!20666) Int)

(assert (=> b!2909251 (= lt!1023329 (size!26406 input!3770))))

(declare-fun b!2909252 () Bool)

(declare-fun e!1836378 () Bool)

(declare-fun tp!934865 () Bool)

(assert (=> b!2909252 (= e!1836378 tp!934865)))

(declare-fun b!2909253 () Bool)

(declare-fun e!1836380 () Bool)

(declare-fun tp!934866 () Bool)

(declare-fun inv!46816 (Conc!10514) Bool)

(assert (=> b!2909253 (= e!1836380 (and (inv!46816 (c!474171 input!3770)) tp!934866))))

(declare-fun lt!1023332 () List!34787)

(declare-fun lt!1023333 () C!18060)

(declare-fun b!2909254 () Bool)

(declare-fun dropList!1040 (BalanceConc!20666 Int) List!34787)

(declare-fun $colon$colon!611 (List!34787 C!18060) List!34787)

(assert (=> b!2909254 (= e!1836379 (not (= (dropList!1040 input!3770 i!1878) ($colon$colon!611 lt!1023332 lt!1023333))))))

(declare-fun lt!1023327 () List!34787)

(declare-fun lt!1023328 () List!34787)

(declare-fun tail!4680 (List!34787) List!34787)

(declare-fun drop!1824 (List!34787 Int) List!34787)

(assert (=> b!2909254 (= (tail!4680 lt!1023327) (drop!1824 lt!1023328 (+ 1 i!1878)))))

(declare-datatypes ((Unit!48209 0))(
  ( (Unit!48210) )
))
(declare-fun lt!1023330 () Unit!48209)

(declare-fun lemmaDropTail!889 (List!34787 Int) Unit!48209)

(assert (=> b!2909254 (= lt!1023330 (lemmaDropTail!889 lt!1023328 i!1878))))

(declare-fun head!6455 (List!34787) C!18060)

(declare-fun apply!7900 (List!34787 Int) C!18060)

(assert (=> b!2909254 (= (head!6455 lt!1023327) (apply!7900 lt!1023328 i!1878))))

(assert (=> b!2909254 (= lt!1023327 (drop!1824 lt!1023328 i!1878))))

(declare-fun lt!1023335 () Unit!48209)

(declare-fun lemmaDropApply!1003 (List!34787 Int) Unit!48209)

(assert (=> b!2909254 (= lt!1023335 (lemmaDropApply!1003 lt!1023328 i!1878))))

(declare-fun list!12606 (BalanceConc!20666) List!34787)

(assert (=> b!2909254 (= lt!1023328 (list!12606 input!3770))))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((Regex!8939 0))(
  ( (ElementMatch!8939 (c!474172 C!18060)) (Concat!14260 (regOne!18390 Regex!8939) (regTwo!18390 Regex!8939)) (EmptyExpr!8939) (Star!8939 (reg!9268 Regex!8939)) (EmptyLang!8939) (Union!8939 (regOne!18391 Regex!8939) (regTwo!18391 Regex!8939)) )
))
(declare-datatypes ((List!34788 0))(
  ( (Nil!34664) (Cons!34664 (h!40084 Regex!8939) (t!233831 List!34788)) )
))
(declare-datatypes ((Context!5518 0))(
  ( (Context!5519 (exprs!3259 List!34788)) )
))
(declare-fun lt!1023331 () (InoxSet Context!5518))

(declare-fun prefixMatchZipper!375 ((InoxSet Context!5518) List!34787) Bool)

(declare-fun prefixMatchZipperSequence!779 ((InoxSet Context!5518) BalanceConc!20666 Int) Bool)

(assert (=> b!2909254 (= (prefixMatchZipper!375 lt!1023331 lt!1023332) (prefixMatchZipperSequence!779 lt!1023331 input!3770 (+ 1 i!1878)))))

(assert (=> b!2909254 (= lt!1023332 (dropList!1040 input!3770 (+ 1 i!1878)))))

(declare-fun lt!1023334 () Unit!48209)

(declare-fun lemmaprefixMatchZipperSequenceEquivalent!255 ((InoxSet Context!5518) BalanceConc!20666 Int) Unit!48209)

(assert (=> b!2909254 (= lt!1023334 (lemmaprefixMatchZipperSequenceEquivalent!255 lt!1023331 input!3770 (+ 1 i!1878)))))

(declare-fun z!644 () (InoxSet Context!5518))

(declare-fun derivationStepZipper!519 ((InoxSet Context!5518) C!18060) (InoxSet Context!5518))

(assert (=> b!2909254 (= lt!1023331 (derivationStepZipper!519 z!644 lt!1023333))))

(declare-fun apply!7901 (BalanceConc!20666 Int) C!18060)

(assert (=> b!2909254 (= lt!1023333 (apply!7901 input!3770 i!1878))))

(declare-fun setIsEmpty!25885 () Bool)

(declare-fun setRes!25885 () Bool)

(assert (=> setIsEmpty!25885 setRes!25885))

(declare-fun res!1201178 () Bool)

(assert (=> start!283238 (=> (not res!1201178) (not e!1836381))))

(assert (=> start!283238 (= res!1201178 (>= i!1878 0))))

(assert (=> start!283238 e!1836381))

(assert (=> start!283238 true))

(declare-fun inv!46817 (BalanceConc!20666) Bool)

(assert (=> start!283238 (and (inv!46817 input!3770) e!1836380)))

(declare-fun condSetEmpty!25885 () Bool)

(assert (=> start!283238 (= condSetEmpty!25885 (= z!644 ((as const (Array Context!5518 Bool)) false)))))

(assert (=> start!283238 setRes!25885))

(declare-fun setNonEmpty!25885 () Bool)

(declare-fun tp!934867 () Bool)

(declare-fun setElem!25885 () Context!5518)

(declare-fun inv!46818 (Context!5518) Bool)

(assert (=> setNonEmpty!25885 (= setRes!25885 (and tp!934867 (inv!46818 setElem!25885) e!1836378))))

(declare-fun setRest!25885 () (InoxSet Context!5518))

(assert (=> setNonEmpty!25885 (= z!644 ((_ map or) (store ((as const (Array Context!5518 Bool)) false) setElem!25885 true) setRest!25885))))

(assert (= (and start!283238 res!1201178) b!2909251))

(assert (= (and b!2909251 res!1201179) b!2909254))

(assert (= start!283238 b!2909253))

(assert (= (and start!283238 condSetEmpty!25885) setIsEmpty!25885))

(assert (= (and start!283238 (not condSetEmpty!25885)) setNonEmpty!25885))

(assert (= setNonEmpty!25885 b!2909252))

(declare-fun m!3310683 () Bool)

(assert (=> b!2909254 m!3310683))

(declare-fun m!3310685 () Bool)

(assert (=> b!2909254 m!3310685))

(declare-fun m!3310687 () Bool)

(assert (=> b!2909254 m!3310687))

(declare-fun m!3310689 () Bool)

(assert (=> b!2909254 m!3310689))

(declare-fun m!3310691 () Bool)

(assert (=> b!2909254 m!3310691))

(declare-fun m!3310693 () Bool)

(assert (=> b!2909254 m!3310693))

(declare-fun m!3310695 () Bool)

(assert (=> b!2909254 m!3310695))

(declare-fun m!3310697 () Bool)

(assert (=> b!2909254 m!3310697))

(declare-fun m!3310699 () Bool)

(assert (=> b!2909254 m!3310699))

(declare-fun m!3310701 () Bool)

(assert (=> b!2909254 m!3310701))

(declare-fun m!3310703 () Bool)

(assert (=> b!2909254 m!3310703))

(declare-fun m!3310705 () Bool)

(assert (=> b!2909254 m!3310705))

(declare-fun m!3310707 () Bool)

(assert (=> b!2909254 m!3310707))

(declare-fun m!3310709 () Bool)

(assert (=> b!2909254 m!3310709))

(declare-fun m!3310711 () Bool)

(assert (=> b!2909254 m!3310711))

(declare-fun m!3310713 () Bool)

(assert (=> b!2909254 m!3310713))

(declare-fun m!3310715 () Bool)

(assert (=> b!2909253 m!3310715))

(declare-fun m!3310717 () Bool)

(assert (=> b!2909251 m!3310717))

(declare-fun m!3310719 () Bool)

(assert (=> start!283238 m!3310719))

(declare-fun m!3310721 () Bool)

(assert (=> setNonEmpty!25885 m!3310721))

(check-sat (not b!2909252) (not b!2909254) (not setNonEmpty!25885) (not start!283238) (not b!2909251) (not b!2909253))
(check-sat)
(get-model)

(declare-fun d!836913 () Bool)

(declare-fun lambda!107940 () Int)

(declare-fun forall!7127 (List!34788 Int) Bool)

(assert (=> d!836913 (= (inv!46818 setElem!25885) (forall!7127 (exprs!3259 setElem!25885) lambda!107940))))

(declare-fun bs!524369 () Bool)

(assert (= bs!524369 d!836913))

(declare-fun m!3310793 () Bool)

(assert (=> bs!524369 m!3310793))

(assert (=> setNonEmpty!25885 d!836913))

(declare-fun d!836951 () Bool)

(declare-fun lt!1023357 () Int)

(declare-fun size!26409 (List!34787) Int)

(assert (=> d!836951 (= lt!1023357 (size!26409 (list!12606 input!3770)))))

(declare-fun size!26410 (Conc!10514) Int)

(assert (=> d!836951 (= lt!1023357 (size!26410 (c!474171 input!3770)))))

(assert (=> d!836951 (= (size!26406 input!3770) lt!1023357)))

(declare-fun bs!524370 () Bool)

(assert (= bs!524370 d!836951))

(assert (=> bs!524370 m!3310697))

(assert (=> bs!524370 m!3310697))

(declare-fun m!3310795 () Bool)

(assert (=> bs!524370 m!3310795))

(declare-fun m!3310797 () Bool)

(assert (=> bs!524370 m!3310797))

(assert (=> b!2909251 d!836951))

(declare-fun d!836953 () Bool)

(declare-fun isBalanced!3165 (Conc!10514) Bool)

(assert (=> d!836953 (= (inv!46817 input!3770) (isBalanced!3165 (c!474171 input!3770)))))

(declare-fun bs!524371 () Bool)

(assert (= bs!524371 d!836953))

(declare-fun m!3310805 () Bool)

(assert (=> bs!524371 m!3310805))

(assert (=> start!283238 d!836953))

(declare-fun d!836957 () Bool)

(declare-fun c!474205 () Bool)

(get-info :version)

(assert (=> d!836957 (= c!474205 ((_ is Node!10514) (c!474171 input!3770)))))

(declare-fun e!1836435 () Bool)

(assert (=> d!836957 (= (inv!46816 (c!474171 input!3770)) e!1836435)))

(declare-fun b!2909340 () Bool)

(declare-fun inv!46821 (Conc!10514) Bool)

(assert (=> b!2909340 (= e!1836435 (inv!46821 (c!474171 input!3770)))))

(declare-fun b!2909341 () Bool)

(declare-fun e!1836436 () Bool)

(assert (=> b!2909341 (= e!1836435 e!1836436)))

(declare-fun res!1201203 () Bool)

(assert (=> b!2909341 (= res!1201203 (not ((_ is Leaf!16207) (c!474171 input!3770))))))

(assert (=> b!2909341 (=> res!1201203 e!1836436)))

(declare-fun b!2909342 () Bool)

(declare-fun inv!46822 (Conc!10514) Bool)

(assert (=> b!2909342 (= e!1836436 (inv!46822 (c!474171 input!3770)))))

(assert (= (and d!836957 c!474205) b!2909340))

(assert (= (and d!836957 (not c!474205)) b!2909341))

(assert (= (and b!2909341 (not res!1201203)) b!2909342))

(declare-fun m!3310807 () Bool)

(assert (=> b!2909340 m!3310807))

(declare-fun m!3310809 () Bool)

(assert (=> b!2909342 m!3310809))

(assert (=> b!2909253 d!836957))

(declare-fun d!836959 () Bool)

(declare-fun c!474208 () Bool)

(assert (=> d!836959 (= c!474208 (= (+ 1 i!1878) (size!26406 input!3770)))))

(declare-fun e!1836452 () Bool)

(assert (=> d!836959 (= (prefixMatchZipperSequence!779 lt!1023331 input!3770 (+ 1 i!1878)) e!1836452)))

(declare-fun b!2909369 () Bool)

(declare-fun lostCauseZipper!612 ((InoxSet Context!5518)) Bool)

(assert (=> b!2909369 (= e!1836452 (not (lostCauseZipper!612 lt!1023331)))))

(declare-fun b!2909370 () Bool)

(assert (=> b!2909370 (= e!1836452 (prefixMatchZipperSequence!779 (derivationStepZipper!519 lt!1023331 (apply!7901 input!3770 (+ 1 i!1878))) input!3770 (+ 1 i!1878 1)))))

(assert (= (and d!836959 c!474208) b!2909369))

(assert (= (and d!836959 (not c!474208)) b!2909370))

(assert (=> d!836959 m!3310717))

(declare-fun m!3310823 () Bool)

(assert (=> b!2909369 m!3310823))

(declare-fun m!3310825 () Bool)

(assert (=> b!2909370 m!3310825))

(assert (=> b!2909370 m!3310825))

(declare-fun m!3310827 () Bool)

(assert (=> b!2909370 m!3310827))

(assert (=> b!2909370 m!3310827))

(declare-fun m!3310829 () Bool)

(assert (=> b!2909370 m!3310829))

(assert (=> b!2909254 d!836959))

(declare-fun d!836961 () Bool)

(declare-fun list!12608 (Conc!10514) List!34787)

(assert (=> d!836961 (= (dropList!1040 input!3770 (+ 1 i!1878)) (drop!1824 (list!12608 (c!474171 input!3770)) (+ 1 i!1878)))))

(declare-fun bs!524372 () Bool)

(assert (= bs!524372 d!836961))

(declare-fun m!3310831 () Bool)

(assert (=> bs!524372 m!3310831))

(assert (=> bs!524372 m!3310831))

(declare-fun m!3310833 () Bool)

(assert (=> bs!524372 m!3310833))

(assert (=> b!2909254 d!836961))

(declare-fun b!2909389 () Bool)

(declare-fun e!1836463 () List!34787)

(assert (=> b!2909389 (= e!1836463 lt!1023328)))

(declare-fun b!2909390 () Bool)

(declare-fun e!1836465 () Int)

(assert (=> b!2909390 (= e!1836465 0)))

(declare-fun b!2909391 () Bool)

(declare-fun e!1836467 () List!34787)

(assert (=> b!2909391 (= e!1836467 Nil!34663)))

(declare-fun b!2909392 () Bool)

(declare-fun call!189923 () Int)

(assert (=> b!2909392 (= e!1836465 (- call!189923 i!1878))))

(declare-fun b!2909393 () Bool)

(declare-fun e!1836464 () Int)

(assert (=> b!2909393 (= e!1836464 call!189923)))

(declare-fun b!2909394 () Bool)

(assert (=> b!2909394 (= e!1836463 (drop!1824 (t!233830 lt!1023328) (- i!1878 1)))))

(declare-fun b!2909395 () Bool)

(assert (=> b!2909395 (= e!1836464 e!1836465)))

(declare-fun c!474218 () Bool)

(assert (=> b!2909395 (= c!474218 (>= i!1878 call!189923))))

(declare-fun b!2909396 () Bool)

(assert (=> b!2909396 (= e!1836467 e!1836463)))

(declare-fun c!474219 () Bool)

(assert (=> b!2909396 (= c!474219 (<= i!1878 0))))

(declare-fun b!2909397 () Bool)

(declare-fun e!1836466 () Bool)

(declare-fun lt!1023363 () List!34787)

(assert (=> b!2909397 (= e!1836466 (= (size!26409 lt!1023363) e!1836464))))

(declare-fun c!474220 () Bool)

(assert (=> b!2909397 (= c!474220 (<= i!1878 0))))

(declare-fun d!836963 () Bool)

(assert (=> d!836963 e!1836466))

(declare-fun res!1201207 () Bool)

(assert (=> d!836963 (=> (not res!1201207) (not e!1836466))))

(declare-fun content!4740 (List!34787) (InoxSet C!18060))

(assert (=> d!836963 (= res!1201207 (= ((_ map implies) (content!4740 lt!1023363) (content!4740 lt!1023328)) ((as const (InoxSet C!18060)) true)))))

(assert (=> d!836963 (= lt!1023363 e!1836467)))

(declare-fun c!474217 () Bool)

(assert (=> d!836963 (= c!474217 ((_ is Nil!34663) lt!1023328))))

(assert (=> d!836963 (= (drop!1824 lt!1023328 i!1878) lt!1023363)))

(declare-fun bm!189918 () Bool)

(assert (=> bm!189918 (= call!189923 (size!26409 lt!1023328))))

(assert (= (and d!836963 c!474217) b!2909391))

(assert (= (and d!836963 (not c!474217)) b!2909396))

(assert (= (and b!2909396 c!474219) b!2909389))

(assert (= (and b!2909396 (not c!474219)) b!2909394))

(assert (= (and d!836963 res!1201207) b!2909397))

(assert (= (and b!2909397 c!474220) b!2909393))

(assert (= (and b!2909397 (not c!474220)) b!2909395))

(assert (= (and b!2909395 c!474218) b!2909390))

(assert (= (and b!2909395 (not c!474218)) b!2909392))

(assert (= (or b!2909393 b!2909395 b!2909392) bm!189918))

(declare-fun m!3310835 () Bool)

(assert (=> b!2909394 m!3310835))

(declare-fun m!3310837 () Bool)

(assert (=> b!2909397 m!3310837))

(declare-fun m!3310839 () Bool)

(assert (=> d!836963 m!3310839))

(declare-fun m!3310841 () Bool)

(assert (=> d!836963 m!3310841))

(declare-fun m!3310843 () Bool)

(assert (=> bm!189918 m!3310843))

(assert (=> b!2909254 d!836963))

(declare-fun d!836965 () Bool)

(declare-fun lt!1023366 () C!18060)

(assert (=> d!836965 (= lt!1023366 (apply!7900 (list!12606 input!3770) i!1878))))

(declare-fun apply!7903 (Conc!10514 Int) C!18060)

(assert (=> d!836965 (= lt!1023366 (apply!7903 (c!474171 input!3770) i!1878))))

(declare-fun e!1836470 () Bool)

(assert (=> d!836965 e!1836470))

(declare-fun res!1201210 () Bool)

(assert (=> d!836965 (=> (not res!1201210) (not e!1836470))))

(assert (=> d!836965 (= res!1201210 (<= 0 i!1878))))

(assert (=> d!836965 (= (apply!7901 input!3770 i!1878) lt!1023366)))

(declare-fun b!2909400 () Bool)

(assert (=> b!2909400 (= e!1836470 (< i!1878 (size!26406 input!3770)))))

(assert (= (and d!836965 res!1201210) b!2909400))

(assert (=> d!836965 m!3310697))

(assert (=> d!836965 m!3310697))

(declare-fun m!3310845 () Bool)

(assert (=> d!836965 m!3310845))

(declare-fun m!3310847 () Bool)

(assert (=> d!836965 m!3310847))

(assert (=> b!2909400 m!3310717))

(assert (=> b!2909254 d!836965))

(declare-fun b!2909401 () Bool)

(declare-fun e!1836471 () List!34787)

(assert (=> b!2909401 (= e!1836471 lt!1023328)))

(declare-fun b!2909402 () Bool)

(declare-fun e!1836473 () Int)

(assert (=> b!2909402 (= e!1836473 0)))

(declare-fun b!2909403 () Bool)

(declare-fun e!1836475 () List!34787)

(assert (=> b!2909403 (= e!1836475 Nil!34663)))

(declare-fun b!2909404 () Bool)

(declare-fun call!189924 () Int)

(assert (=> b!2909404 (= e!1836473 (- call!189924 (+ 1 i!1878)))))

(declare-fun b!2909405 () Bool)

(declare-fun e!1836472 () Int)

(assert (=> b!2909405 (= e!1836472 call!189924)))

(declare-fun b!2909406 () Bool)

(assert (=> b!2909406 (= e!1836471 (drop!1824 (t!233830 lt!1023328) (- (+ 1 i!1878) 1)))))

(declare-fun b!2909407 () Bool)

(assert (=> b!2909407 (= e!1836472 e!1836473)))

(declare-fun c!474222 () Bool)

(assert (=> b!2909407 (= c!474222 (>= (+ 1 i!1878) call!189924))))

(declare-fun b!2909408 () Bool)

(assert (=> b!2909408 (= e!1836475 e!1836471)))

(declare-fun c!474223 () Bool)

(assert (=> b!2909408 (= c!474223 (<= (+ 1 i!1878) 0))))

(declare-fun b!2909409 () Bool)

(declare-fun e!1836474 () Bool)

(declare-fun lt!1023367 () List!34787)

(assert (=> b!2909409 (= e!1836474 (= (size!26409 lt!1023367) e!1836472))))

(declare-fun c!474224 () Bool)

(assert (=> b!2909409 (= c!474224 (<= (+ 1 i!1878) 0))))

(declare-fun d!836967 () Bool)

(assert (=> d!836967 e!1836474))

(declare-fun res!1201211 () Bool)

(assert (=> d!836967 (=> (not res!1201211) (not e!1836474))))

(assert (=> d!836967 (= res!1201211 (= ((_ map implies) (content!4740 lt!1023367) (content!4740 lt!1023328)) ((as const (InoxSet C!18060)) true)))))

(assert (=> d!836967 (= lt!1023367 e!1836475)))

(declare-fun c!474221 () Bool)

(assert (=> d!836967 (= c!474221 ((_ is Nil!34663) lt!1023328))))

(assert (=> d!836967 (= (drop!1824 lt!1023328 (+ 1 i!1878)) lt!1023367)))

(declare-fun bm!189919 () Bool)

(assert (=> bm!189919 (= call!189924 (size!26409 lt!1023328))))

(assert (= (and d!836967 c!474221) b!2909403))

(assert (= (and d!836967 (not c!474221)) b!2909408))

(assert (= (and b!2909408 c!474223) b!2909401))

(assert (= (and b!2909408 (not c!474223)) b!2909406))

(assert (= (and d!836967 res!1201211) b!2909409))

(assert (= (and b!2909409 c!474224) b!2909405))

(assert (= (and b!2909409 (not c!474224)) b!2909407))

(assert (= (and b!2909407 c!474222) b!2909402))

(assert (= (and b!2909407 (not c!474222)) b!2909404))

(assert (= (or b!2909405 b!2909407 b!2909404) bm!189919))

(declare-fun m!3310849 () Bool)

(assert (=> b!2909406 m!3310849))

(declare-fun m!3310851 () Bool)

(assert (=> b!2909409 m!3310851))

(declare-fun m!3310853 () Bool)

(assert (=> d!836967 m!3310853))

(assert (=> d!836967 m!3310841))

(assert (=> bm!189919 m!3310843))

(assert (=> b!2909254 d!836967))

(declare-fun d!836969 () Bool)

(assert (=> d!836969 (= (head!6455 (drop!1824 lt!1023328 i!1878)) (apply!7900 lt!1023328 i!1878))))

(declare-fun lt!1023370 () Unit!48209)

(declare-fun choose!17101 (List!34787 Int) Unit!48209)

(assert (=> d!836969 (= lt!1023370 (choose!17101 lt!1023328 i!1878))))

(declare-fun e!1836478 () Bool)

(assert (=> d!836969 e!1836478))

(declare-fun res!1201214 () Bool)

(assert (=> d!836969 (=> (not res!1201214) (not e!1836478))))

(assert (=> d!836969 (= res!1201214 (>= i!1878 0))))

(assert (=> d!836969 (= (lemmaDropApply!1003 lt!1023328 i!1878) lt!1023370)))

(declare-fun b!2909412 () Bool)

(assert (=> b!2909412 (= e!1836478 (< i!1878 (size!26409 lt!1023328)))))

(assert (= (and d!836969 res!1201214) b!2909412))

(assert (=> d!836969 m!3310701))

(assert (=> d!836969 m!3310701))

(declare-fun m!3310855 () Bool)

(assert (=> d!836969 m!3310855))

(assert (=> d!836969 m!3310683))

(declare-fun m!3310857 () Bool)

(assert (=> d!836969 m!3310857))

(assert (=> b!2909412 m!3310843))

(assert (=> b!2909254 d!836969))

(declare-fun d!836971 () Bool)

(assert (=> d!836971 (= (prefixMatchZipper!375 lt!1023331 (dropList!1040 input!3770 (+ 1 i!1878))) (prefixMatchZipperSequence!779 lt!1023331 input!3770 (+ 1 i!1878)))))

(declare-fun lt!1023373 () Unit!48209)

(declare-fun choose!17102 ((InoxSet Context!5518) BalanceConc!20666 Int) Unit!48209)

(assert (=> d!836971 (= lt!1023373 (choose!17102 lt!1023331 input!3770 (+ 1 i!1878)))))

(declare-fun e!1836481 () Bool)

(assert (=> d!836971 e!1836481))

(declare-fun res!1201217 () Bool)

(assert (=> d!836971 (=> (not res!1201217) (not e!1836481))))

(assert (=> d!836971 (= res!1201217 (>= (+ 1 i!1878) 0))))

(assert (=> d!836971 (= (lemmaprefixMatchZipperSequenceEquivalent!255 lt!1023331 input!3770 (+ 1 i!1878)) lt!1023373)))

(declare-fun b!2909415 () Bool)

(assert (=> b!2909415 (= e!1836481 (<= (+ 1 i!1878) (size!26406 input!3770)))))

(assert (= (and d!836971 res!1201217) b!2909415))

(assert (=> d!836971 m!3310711))

(assert (=> d!836971 m!3310711))

(declare-fun m!3310859 () Bool)

(assert (=> d!836971 m!3310859))

(assert (=> d!836971 m!3310705))

(declare-fun m!3310861 () Bool)

(assert (=> d!836971 m!3310861))

(assert (=> b!2909415 m!3310717))

(assert (=> b!2909254 d!836971))

(declare-fun d!836973 () Bool)

(assert (=> d!836973 (= (list!12606 input!3770) (list!12608 (c!474171 input!3770)))))

(declare-fun bs!524373 () Bool)

(assert (= bs!524373 d!836973))

(assert (=> bs!524373 m!3310831))

(assert (=> b!2909254 d!836973))

(declare-fun d!836975 () Bool)

(declare-fun lt!1023376 () C!18060)

(declare-fun contains!6129 (List!34787 C!18060) Bool)

(assert (=> d!836975 (contains!6129 lt!1023328 lt!1023376)))

(declare-fun e!1836486 () C!18060)

(assert (=> d!836975 (= lt!1023376 e!1836486)))

(declare-fun c!474227 () Bool)

(assert (=> d!836975 (= c!474227 (= i!1878 0))))

(declare-fun e!1836487 () Bool)

(assert (=> d!836975 e!1836487))

(declare-fun res!1201220 () Bool)

(assert (=> d!836975 (=> (not res!1201220) (not e!1836487))))

(assert (=> d!836975 (= res!1201220 (<= 0 i!1878))))

(assert (=> d!836975 (= (apply!7900 lt!1023328 i!1878) lt!1023376)))

(declare-fun b!2909422 () Bool)

(assert (=> b!2909422 (= e!1836487 (< i!1878 (size!26409 lt!1023328)))))

(declare-fun b!2909423 () Bool)

(assert (=> b!2909423 (= e!1836486 (head!6455 lt!1023328))))

(declare-fun b!2909424 () Bool)

(assert (=> b!2909424 (= e!1836486 (apply!7900 (tail!4680 lt!1023328) (- i!1878 1)))))

(assert (= (and d!836975 res!1201220) b!2909422))

(assert (= (and d!836975 c!474227) b!2909423))

(assert (= (and d!836975 (not c!474227)) b!2909424))

(declare-fun m!3310863 () Bool)

(assert (=> d!836975 m!3310863))

(assert (=> b!2909422 m!3310843))

(declare-fun m!3310865 () Bool)

(assert (=> b!2909423 m!3310865))

(declare-fun m!3310867 () Bool)

(assert (=> b!2909424 m!3310867))

(assert (=> b!2909424 m!3310867))

(declare-fun m!3310869 () Bool)

(assert (=> b!2909424 m!3310869))

(assert (=> b!2909254 d!836975))

(declare-fun d!836977 () Bool)

(assert (=> d!836977 true))

(declare-fun lambda!107943 () Int)

(declare-fun flatMap!246 ((InoxSet Context!5518) Int) (InoxSet Context!5518))

(assert (=> d!836977 (= (derivationStepZipper!519 z!644 lt!1023333) (flatMap!246 z!644 lambda!107943))))

(declare-fun bs!524374 () Bool)

(assert (= bs!524374 d!836977))

(declare-fun m!3310871 () Bool)

(assert (=> bs!524374 m!3310871))

(assert (=> b!2909254 d!836977))

(declare-fun d!836979 () Bool)

(assert (=> d!836979 (= ($colon$colon!611 lt!1023332 lt!1023333) (Cons!34663 lt!1023333 lt!1023332))))

(assert (=> b!2909254 d!836979))

(declare-fun d!836981 () Bool)

(assert (=> d!836981 (= (dropList!1040 input!3770 i!1878) (drop!1824 (list!12608 (c!474171 input!3770)) i!1878))))

(declare-fun bs!524375 () Bool)

(assert (= bs!524375 d!836981))

(assert (=> bs!524375 m!3310831))

(assert (=> bs!524375 m!3310831))

(declare-fun m!3310873 () Bool)

(assert (=> bs!524375 m!3310873))

(assert (=> b!2909254 d!836981))

(declare-fun d!836983 () Bool)

(assert (=> d!836983 (= (tail!4680 lt!1023327) (t!233830 lt!1023327))))

(assert (=> b!2909254 d!836983))

(declare-fun d!836985 () Bool)

(assert (=> d!836985 (= (head!6455 lt!1023327) (h!40083 lt!1023327))))

(assert (=> b!2909254 d!836985))

(declare-fun d!836987 () Bool)

(declare-fun c!474232 () Bool)

(declare-fun isEmpty!18913 (List!34787) Bool)

(assert (=> d!836987 (= c!474232 (isEmpty!18913 lt!1023332))))

(declare-fun e!1836490 () Bool)

(assert (=> d!836987 (= (prefixMatchZipper!375 lt!1023331 lt!1023332) e!1836490)))

(declare-fun b!2909431 () Bool)

(assert (=> b!2909431 (= e!1836490 (not (lostCauseZipper!612 lt!1023331)))))

(declare-fun b!2909432 () Bool)

(assert (=> b!2909432 (= e!1836490 (prefixMatchZipper!375 (derivationStepZipper!519 lt!1023331 (head!6455 lt!1023332)) (tail!4680 lt!1023332)))))

(assert (= (and d!836987 c!474232) b!2909431))

(assert (= (and d!836987 (not c!474232)) b!2909432))

(declare-fun m!3310875 () Bool)

(assert (=> d!836987 m!3310875))

(assert (=> b!2909431 m!3310823))

(declare-fun m!3310877 () Bool)

(assert (=> b!2909432 m!3310877))

(assert (=> b!2909432 m!3310877))

(declare-fun m!3310879 () Bool)

(assert (=> b!2909432 m!3310879))

(declare-fun m!3310881 () Bool)

(assert (=> b!2909432 m!3310881))

(assert (=> b!2909432 m!3310879))

(assert (=> b!2909432 m!3310881))

(declare-fun m!3310883 () Bool)

(assert (=> b!2909432 m!3310883))

(assert (=> b!2909254 d!836987))

(declare-fun d!836989 () Bool)

(assert (=> d!836989 (= (tail!4680 (drop!1824 lt!1023328 i!1878)) (drop!1824 lt!1023328 (+ i!1878 1)))))

(declare-fun lt!1023379 () Unit!48209)

(declare-fun choose!17103 (List!34787 Int) Unit!48209)

(assert (=> d!836989 (= lt!1023379 (choose!17103 lt!1023328 i!1878))))

(declare-fun e!1836493 () Bool)

(assert (=> d!836989 e!1836493))

(declare-fun res!1201223 () Bool)

(assert (=> d!836989 (=> (not res!1201223) (not e!1836493))))

(assert (=> d!836989 (= res!1201223 (>= i!1878 0))))

(assert (=> d!836989 (= (lemmaDropTail!889 lt!1023328 i!1878) lt!1023379)))

(declare-fun b!2909435 () Bool)

(assert (=> b!2909435 (= e!1836493 (< i!1878 (size!26409 lt!1023328)))))

(assert (= (and d!836989 res!1201223) b!2909435))

(assert (=> d!836989 m!3310701))

(assert (=> d!836989 m!3310701))

(declare-fun m!3310885 () Bool)

(assert (=> d!836989 m!3310885))

(declare-fun m!3310887 () Bool)

(assert (=> d!836989 m!3310887))

(declare-fun m!3310889 () Bool)

(assert (=> d!836989 m!3310889))

(assert (=> b!2909435 m!3310843))

(assert (=> b!2909254 d!836989))

(declare-fun condSetEmpty!25891 () Bool)

(assert (=> setNonEmpty!25885 (= condSetEmpty!25891 (= setRest!25885 ((as const (Array Context!5518 Bool)) false)))))

(declare-fun setRes!25891 () Bool)

(assert (=> setNonEmpty!25885 (= tp!934867 setRes!25891)))

(declare-fun setIsEmpty!25891 () Bool)

(assert (=> setIsEmpty!25891 setRes!25891))

(declare-fun setElem!25891 () Context!5518)

(declare-fun tp!934893 () Bool)

(declare-fun setNonEmpty!25891 () Bool)

(declare-fun e!1836496 () Bool)

(assert (=> setNonEmpty!25891 (= setRes!25891 (and tp!934893 (inv!46818 setElem!25891) e!1836496))))

(declare-fun setRest!25891 () (InoxSet Context!5518))

(assert (=> setNonEmpty!25891 (= setRest!25885 ((_ map or) (store ((as const (Array Context!5518 Bool)) false) setElem!25891 true) setRest!25891))))

(declare-fun b!2909440 () Bool)

(declare-fun tp!934894 () Bool)

(assert (=> b!2909440 (= e!1836496 tp!934894)))

(assert (= (and setNonEmpty!25885 condSetEmpty!25891) setIsEmpty!25891))

(assert (= (and setNonEmpty!25885 (not condSetEmpty!25891)) setNonEmpty!25891))

(assert (= setNonEmpty!25891 b!2909440))

(declare-fun m!3310891 () Bool)

(assert (=> setNonEmpty!25891 m!3310891))

(declare-fun b!2909445 () Bool)

(declare-fun e!1836499 () Bool)

(declare-fun tp!934899 () Bool)

(declare-fun tp!934900 () Bool)

(assert (=> b!2909445 (= e!1836499 (and tp!934899 tp!934900))))

(assert (=> b!2909252 (= tp!934865 e!1836499)))

(assert (= (and b!2909252 ((_ is Cons!34664) (exprs!3259 setElem!25885))) b!2909445))

(declare-fun b!2909454 () Bool)

(declare-fun e!1836505 () Bool)

(declare-fun tp!934907 () Bool)

(declare-fun tp!934909 () Bool)

(assert (=> b!2909454 (= e!1836505 (and (inv!46816 (left!26034 (c!474171 input!3770))) tp!934909 (inv!46816 (right!26364 (c!474171 input!3770))) tp!934907))))

(declare-fun b!2909456 () Bool)

(declare-fun e!1836504 () Bool)

(declare-fun tp!934908 () Bool)

(assert (=> b!2909456 (= e!1836504 tp!934908)))

(declare-fun b!2909455 () Bool)

(declare-fun inv!46824 (IArray!21033) Bool)

(assert (=> b!2909455 (= e!1836505 (and (inv!46824 (xs!13632 (c!474171 input!3770))) e!1836504))))

(assert (=> b!2909253 (= tp!934866 (and (inv!46816 (c!474171 input!3770)) e!1836505))))

(assert (= (and b!2909253 ((_ is Node!10514) (c!474171 input!3770))) b!2909454))

(assert (= b!2909455 b!2909456))

(assert (= (and b!2909253 ((_ is Leaf!16207) (c!474171 input!3770))) b!2909455))

(declare-fun m!3310893 () Bool)

(assert (=> b!2909454 m!3310893))

(declare-fun m!3310895 () Bool)

(assert (=> b!2909454 m!3310895))

(declare-fun m!3310897 () Bool)

(assert (=> b!2909455 m!3310897))

(assert (=> b!2909253 m!3310715))

(check-sat (not bm!189918) (not d!836959) (not b!2909454) (not b!2909340) (not b!2909456) (not b!2909440) (not d!836971) (not b!2909431) (not b!2909455) (not d!836967) (not b!2909397) (not b!2909253) (not setNonEmpty!25891) (not b!2909370) (not b!2909445) (not b!2909422) (not d!836961) (not d!836989) (not d!836969) (not b!2909406) (not b!2909369) (not b!2909435) (not b!2909432) (not b!2909400) (not b!2909394) (not b!2909342) (not b!2909424) (not d!836981) (not d!836977) (not bm!189919) (not b!2909412) (not d!836975) (not d!836965) (not d!836963) (not d!836953) (not d!836987) (not d!836913) (not b!2909415) (not d!836973) (not b!2909409) (not b!2909423) (not d!836951))
(check-sat)
(get-model)

(declare-fun d!837017 () Bool)

(declare-fun lt!1023397 () Int)

(assert (=> d!837017 (>= lt!1023397 0)))

(declare-fun e!1836552 () Int)

(assert (=> d!837017 (= lt!1023397 e!1836552)))

(declare-fun c!474266 () Bool)

(assert (=> d!837017 (= c!474266 ((_ is Nil!34663) lt!1023328))))

(assert (=> d!837017 (= (size!26409 lt!1023328) lt!1023397)))

(declare-fun b!2909536 () Bool)

(assert (=> b!2909536 (= e!1836552 0)))

(declare-fun b!2909537 () Bool)

(assert (=> b!2909537 (= e!1836552 (+ 1 (size!26409 (t!233830 lt!1023328))))))

(assert (= (and d!837017 c!474266) b!2909536))

(assert (= (and d!837017 (not c!474266)) b!2909537))

(declare-fun m!3310973 () Bool)

(assert (=> b!2909537 m!3310973))

(assert (=> bm!189919 d!837017))

(declare-fun d!837025 () Bool)

(declare-fun res!1201261 () Bool)

(declare-fun e!1836566 () Bool)

(assert (=> d!837025 (=> (not res!1201261) (not e!1836566))))

(assert (=> d!837025 (= res!1201261 (= (csize!21258 (c!474171 input!3770)) (+ (size!26410 (left!26034 (c!474171 input!3770))) (size!26410 (right!26364 (c!474171 input!3770))))))))

(assert (=> d!837025 (= (inv!46821 (c!474171 input!3770)) e!1836566)))

(declare-fun b!2909564 () Bool)

(declare-fun res!1201262 () Bool)

(assert (=> b!2909564 (=> (not res!1201262) (not e!1836566))))

(assert (=> b!2909564 (= res!1201262 (and (not (= (left!26034 (c!474171 input!3770)) Empty!10514)) (not (= (right!26364 (c!474171 input!3770)) Empty!10514))))))

(declare-fun b!2909565 () Bool)

(declare-fun res!1201263 () Bool)

(assert (=> b!2909565 (=> (not res!1201263) (not e!1836566))))

(declare-fun max!0 (Int Int) Int)

(declare-fun height!1519 (Conc!10514) Int)

(assert (=> b!2909565 (= res!1201263 (= (cheight!10725 (c!474171 input!3770)) (+ (max!0 (height!1519 (left!26034 (c!474171 input!3770))) (height!1519 (right!26364 (c!474171 input!3770)))) 1)))))

(declare-fun b!2909566 () Bool)

(assert (=> b!2909566 (= e!1836566 (<= 0 (cheight!10725 (c!474171 input!3770))))))

(assert (= (and d!837025 res!1201261) b!2909564))

(assert (= (and b!2909564 res!1201262) b!2909565))

(assert (= (and b!2909565 res!1201263) b!2909566))

(declare-fun m!3310983 () Bool)

(assert (=> d!837025 m!3310983))

(declare-fun m!3310985 () Bool)

(assert (=> d!837025 m!3310985))

(declare-fun m!3310987 () Bool)

(assert (=> b!2909565 m!3310987))

(declare-fun m!3310989 () Bool)

(assert (=> b!2909565 m!3310989))

(assert (=> b!2909565 m!3310987))

(assert (=> b!2909565 m!3310989))

(declare-fun m!3310991 () Bool)

(assert (=> b!2909565 m!3310991))

(assert (=> b!2909340 d!837025))

(declare-fun d!837035 () Bool)

(declare-fun c!474268 () Bool)

(assert (=> d!837035 (= c!474268 (isEmpty!18913 (tail!4680 lt!1023332)))))

(declare-fun e!1836567 () Bool)

(assert (=> d!837035 (= (prefixMatchZipper!375 (derivationStepZipper!519 lt!1023331 (head!6455 lt!1023332)) (tail!4680 lt!1023332)) e!1836567)))

(declare-fun b!2909567 () Bool)

(assert (=> b!2909567 (= e!1836567 (not (lostCauseZipper!612 (derivationStepZipper!519 lt!1023331 (head!6455 lt!1023332)))))))

(declare-fun b!2909568 () Bool)

(assert (=> b!2909568 (= e!1836567 (prefixMatchZipper!375 (derivationStepZipper!519 (derivationStepZipper!519 lt!1023331 (head!6455 lt!1023332)) (head!6455 (tail!4680 lt!1023332))) (tail!4680 (tail!4680 lt!1023332))))))

(assert (= (and d!837035 c!474268) b!2909567))

(assert (= (and d!837035 (not c!474268)) b!2909568))

(assert (=> d!837035 m!3310881))

(declare-fun m!3310993 () Bool)

(assert (=> d!837035 m!3310993))

(assert (=> b!2909567 m!3310879))

(declare-fun m!3310995 () Bool)

(assert (=> b!2909567 m!3310995))

(assert (=> b!2909568 m!3310881))

(declare-fun m!3310997 () Bool)

(assert (=> b!2909568 m!3310997))

(assert (=> b!2909568 m!3310879))

(assert (=> b!2909568 m!3310997))

(declare-fun m!3310999 () Bool)

(assert (=> b!2909568 m!3310999))

(assert (=> b!2909568 m!3310881))

(declare-fun m!3311001 () Bool)

(assert (=> b!2909568 m!3311001))

(assert (=> b!2909568 m!3310999))

(assert (=> b!2909568 m!3311001))

(declare-fun m!3311003 () Bool)

(assert (=> b!2909568 m!3311003))

(assert (=> b!2909432 d!837035))

(declare-fun bs!524381 () Bool)

(declare-fun d!837037 () Bool)

(assert (= bs!524381 (and d!837037 d!836977)))

(declare-fun lambda!107945 () Int)

(assert (=> bs!524381 (= (= (head!6455 lt!1023332) lt!1023333) (= lambda!107945 lambda!107943))))

(assert (=> d!837037 true))

(assert (=> d!837037 (= (derivationStepZipper!519 lt!1023331 (head!6455 lt!1023332)) (flatMap!246 lt!1023331 lambda!107945))))

(declare-fun bs!524382 () Bool)

(assert (= bs!524382 d!837037))

(declare-fun m!3311017 () Bool)

(assert (=> bs!524382 m!3311017))

(assert (=> b!2909432 d!837037))

(declare-fun d!837041 () Bool)

(assert (=> d!837041 (= (head!6455 lt!1023332) (h!40083 lt!1023332))))

(assert (=> b!2909432 d!837041))

(declare-fun d!837043 () Bool)

(assert (=> d!837043 (= (tail!4680 lt!1023332) (t!233830 lt!1023332))))

(assert (=> b!2909432 d!837043))

(declare-fun b!2909575 () Bool)

(declare-fun e!1836570 () List!34787)

(assert (=> b!2909575 (= e!1836570 (t!233830 lt!1023328))))

(declare-fun b!2909576 () Bool)

(declare-fun e!1836572 () Int)

(assert (=> b!2909576 (= e!1836572 0)))

(declare-fun b!2909577 () Bool)

(declare-fun e!1836574 () List!34787)

(assert (=> b!2909577 (= e!1836574 Nil!34663)))

(declare-fun b!2909578 () Bool)

(declare-fun call!189929 () Int)

(assert (=> b!2909578 (= e!1836572 (- call!189929 (- (+ 1 i!1878) 1)))))

(declare-fun b!2909579 () Bool)

(declare-fun e!1836571 () Int)

(assert (=> b!2909579 (= e!1836571 call!189929)))

(declare-fun b!2909580 () Bool)

(assert (=> b!2909580 (= e!1836570 (drop!1824 (t!233830 (t!233830 lt!1023328)) (- (- (+ 1 i!1878) 1) 1)))))

(declare-fun b!2909581 () Bool)

(assert (=> b!2909581 (= e!1836571 e!1836572)))

(declare-fun c!474270 () Bool)

(assert (=> b!2909581 (= c!474270 (>= (- (+ 1 i!1878) 1) call!189929))))

(declare-fun b!2909582 () Bool)

(assert (=> b!2909582 (= e!1836574 e!1836570)))

(declare-fun c!474271 () Bool)

(assert (=> b!2909582 (= c!474271 (<= (- (+ 1 i!1878) 1) 0))))

(declare-fun b!2909583 () Bool)

(declare-fun e!1836573 () Bool)

(declare-fun lt!1023401 () List!34787)

(assert (=> b!2909583 (= e!1836573 (= (size!26409 lt!1023401) e!1836571))))

(declare-fun c!474272 () Bool)

(assert (=> b!2909583 (= c!474272 (<= (- (+ 1 i!1878) 1) 0))))

(declare-fun d!837045 () Bool)

(assert (=> d!837045 e!1836573))

(declare-fun res!1201270 () Bool)

(assert (=> d!837045 (=> (not res!1201270) (not e!1836573))))

(assert (=> d!837045 (= res!1201270 (= ((_ map implies) (content!4740 lt!1023401) (content!4740 (t!233830 lt!1023328))) ((as const (InoxSet C!18060)) true)))))

(assert (=> d!837045 (= lt!1023401 e!1836574)))

(declare-fun c!474269 () Bool)

(assert (=> d!837045 (= c!474269 ((_ is Nil!34663) (t!233830 lt!1023328)))))

(assert (=> d!837045 (= (drop!1824 (t!233830 lt!1023328) (- (+ 1 i!1878) 1)) lt!1023401)))

(declare-fun bm!189924 () Bool)

(assert (=> bm!189924 (= call!189929 (size!26409 (t!233830 lt!1023328)))))

(assert (= (and d!837045 c!474269) b!2909577))

(assert (= (and d!837045 (not c!474269)) b!2909582))

(assert (= (and b!2909582 c!474271) b!2909575))

(assert (= (and b!2909582 (not c!474271)) b!2909580))

(assert (= (and d!837045 res!1201270) b!2909583))

(assert (= (and b!2909583 c!474272) b!2909579))

(assert (= (and b!2909583 (not c!474272)) b!2909581))

(assert (= (and b!2909581 c!474270) b!2909576))

(assert (= (and b!2909581 (not c!474270)) b!2909578))

(assert (= (or b!2909579 b!2909581 b!2909578) bm!189924))

(declare-fun m!3311019 () Bool)

(assert (=> b!2909580 m!3311019))

(declare-fun m!3311021 () Bool)

(assert (=> b!2909583 m!3311021))

(declare-fun m!3311023 () Bool)

(assert (=> d!837045 m!3311023))

(declare-fun m!3311025 () Bool)

(assert (=> d!837045 m!3311025))

(assert (=> bm!189924 m!3310973))

(assert (=> b!2909406 d!837045))

(declare-fun d!837047 () Bool)

(declare-fun c!474283 () Bool)

(assert (=> d!837047 (= c!474283 ((_ is Nil!34663) lt!1023363))))

(declare-fun e!1836590 () (InoxSet C!18060))

(assert (=> d!837047 (= (content!4740 lt!1023363) e!1836590)))

(declare-fun b!2909615 () Bool)

(assert (=> b!2909615 (= e!1836590 ((as const (Array C!18060 Bool)) false))))

(declare-fun b!2909616 () Bool)

(assert (=> b!2909616 (= e!1836590 ((_ map or) (store ((as const (Array C!18060 Bool)) false) (h!40083 lt!1023363) true) (content!4740 (t!233830 lt!1023363))))))

(assert (= (and d!837047 c!474283) b!2909615))

(assert (= (and d!837047 (not c!474283)) b!2909616))

(declare-fun m!3311039 () Bool)

(assert (=> b!2909616 m!3311039))

(declare-fun m!3311045 () Bool)

(assert (=> b!2909616 m!3311045))

(assert (=> d!836963 d!837047))

(declare-fun d!837055 () Bool)

(declare-fun c!474287 () Bool)

(assert (=> d!837055 (= c!474287 ((_ is Nil!34663) lt!1023328))))

(declare-fun e!1836594 () (InoxSet C!18060))

(assert (=> d!837055 (= (content!4740 lt!1023328) e!1836594)))

(declare-fun b!2909617 () Bool)

(assert (=> b!2909617 (= e!1836594 ((as const (Array C!18060 Bool)) false))))

(declare-fun b!2909618 () Bool)

(assert (=> b!2909618 (= e!1836594 ((_ map or) (store ((as const (Array C!18060 Bool)) false) (h!40083 lt!1023328) true) (content!4740 (t!233830 lt!1023328))))))

(assert (= (and d!837055 c!474287) b!2909617))

(assert (= (and d!837055 (not c!474287)) b!2909618))

(declare-fun m!3311047 () Bool)

(assert (=> b!2909618 m!3311047))

(assert (=> b!2909618 m!3311025))

(assert (=> d!836963 d!837055))

(declare-fun d!837057 () Bool)

(declare-fun lt!1023408 () Bool)

(assert (=> d!837057 (= lt!1023408 (select (content!4740 lt!1023328) lt!1023376))))

(declare-fun e!1836605 () Bool)

(assert (=> d!837057 (= lt!1023408 e!1836605)))

(declare-fun res!1201288 () Bool)

(assert (=> d!837057 (=> (not res!1201288) (not e!1836605))))

(assert (=> d!837057 (= res!1201288 ((_ is Cons!34663) lt!1023328))))

(assert (=> d!837057 (= (contains!6129 lt!1023328 lt!1023376) lt!1023408)))

(declare-fun b!2909637 () Bool)

(declare-fun e!1836604 () Bool)

(assert (=> b!2909637 (= e!1836605 e!1836604)))

(declare-fun res!1201289 () Bool)

(assert (=> b!2909637 (=> res!1201289 e!1836604)))

(assert (=> b!2909637 (= res!1201289 (= (h!40083 lt!1023328) lt!1023376))))

(declare-fun b!2909638 () Bool)

(assert (=> b!2909638 (= e!1836604 (contains!6129 (t!233830 lt!1023328) lt!1023376))))

(assert (= (and d!837057 res!1201288) b!2909637))

(assert (= (and b!2909637 (not res!1201289)) b!2909638))

(assert (=> d!837057 m!3310841))

(declare-fun m!3311083 () Bool)

(assert (=> d!837057 m!3311083))

(declare-fun m!3311085 () Bool)

(assert (=> b!2909638 m!3311085))

(assert (=> d!836975 d!837057))

(declare-fun d!837079 () Bool)

(declare-fun c!474291 () Bool)

(assert (=> d!837079 (= c!474291 (= (+ 1 i!1878 1) (size!26406 input!3770)))))

(declare-fun e!1836606 () Bool)

(assert (=> d!837079 (= (prefixMatchZipperSequence!779 (derivationStepZipper!519 lt!1023331 (apply!7901 input!3770 (+ 1 i!1878))) input!3770 (+ 1 i!1878 1)) e!1836606)))

(declare-fun b!2909639 () Bool)

(assert (=> b!2909639 (= e!1836606 (not (lostCauseZipper!612 (derivationStepZipper!519 lt!1023331 (apply!7901 input!3770 (+ 1 i!1878))))))))

(declare-fun b!2909640 () Bool)

(assert (=> b!2909640 (= e!1836606 (prefixMatchZipperSequence!779 (derivationStepZipper!519 (derivationStepZipper!519 lt!1023331 (apply!7901 input!3770 (+ 1 i!1878))) (apply!7901 input!3770 (+ 1 i!1878 1))) input!3770 (+ 1 i!1878 1 1)))))

(assert (= (and d!837079 c!474291) b!2909639))

(assert (= (and d!837079 (not c!474291)) b!2909640))

(assert (=> d!837079 m!3310717))

(assert (=> b!2909639 m!3310827))

(declare-fun m!3311087 () Bool)

(assert (=> b!2909639 m!3311087))

(declare-fun m!3311089 () Bool)

(assert (=> b!2909640 m!3311089))

(assert (=> b!2909640 m!3310827))

(assert (=> b!2909640 m!3311089))

(declare-fun m!3311091 () Bool)

(assert (=> b!2909640 m!3311091))

(assert (=> b!2909640 m!3311091))

(declare-fun m!3311093 () Bool)

(assert (=> b!2909640 m!3311093))

(assert (=> b!2909370 d!837079))

(declare-fun bs!524389 () Bool)

(declare-fun d!837081 () Bool)

(assert (= bs!524389 (and d!837081 d!836977)))

(declare-fun lambda!107948 () Int)

(assert (=> bs!524389 (= (= (apply!7901 input!3770 (+ 1 i!1878)) lt!1023333) (= lambda!107948 lambda!107943))))

(declare-fun bs!524390 () Bool)

(assert (= bs!524390 (and d!837081 d!837037)))

(assert (=> bs!524390 (= (= (apply!7901 input!3770 (+ 1 i!1878)) (head!6455 lt!1023332)) (= lambda!107948 lambda!107945))))

(assert (=> d!837081 true))

(assert (=> d!837081 (= (derivationStepZipper!519 lt!1023331 (apply!7901 input!3770 (+ 1 i!1878))) (flatMap!246 lt!1023331 lambda!107948))))

(declare-fun bs!524391 () Bool)

(assert (= bs!524391 d!837081))

(declare-fun m!3311095 () Bool)

(assert (=> bs!524391 m!3311095))

(assert (=> b!2909370 d!837081))

(declare-fun d!837083 () Bool)

(declare-fun lt!1023409 () C!18060)

(assert (=> d!837083 (= lt!1023409 (apply!7900 (list!12606 input!3770) (+ 1 i!1878)))))

(assert (=> d!837083 (= lt!1023409 (apply!7903 (c!474171 input!3770) (+ 1 i!1878)))))

(declare-fun e!1836607 () Bool)

(assert (=> d!837083 e!1836607))

(declare-fun res!1201290 () Bool)

(assert (=> d!837083 (=> (not res!1201290) (not e!1836607))))

(assert (=> d!837083 (= res!1201290 (<= 0 (+ 1 i!1878)))))

(assert (=> d!837083 (= (apply!7901 input!3770 (+ 1 i!1878)) lt!1023409)))

(declare-fun b!2909641 () Bool)

(assert (=> b!2909641 (= e!1836607 (< (+ 1 i!1878) (size!26406 input!3770)))))

(assert (= (and d!837083 res!1201290) b!2909641))

(assert (=> d!837083 m!3310697))

(assert (=> d!837083 m!3310697))

(declare-fun m!3311097 () Bool)

(assert (=> d!837083 m!3311097))

(declare-fun m!3311099 () Bool)

(assert (=> d!837083 m!3311099))

(assert (=> b!2909641 m!3310717))

(assert (=> b!2909370 d!837083))

(declare-fun bs!524396 () Bool)

(declare-fun b!2909667 () Bool)

(declare-fun d!837085 () Bool)

(assert (= bs!524396 (and b!2909667 d!837085)))

(declare-fun lambda!107977 () Int)

(declare-fun lambda!107976 () Int)

(assert (=> bs!524396 (not (= lambda!107977 lambda!107976))))

(declare-fun bs!524397 () Bool)

(declare-fun b!2909668 () Bool)

(assert (= bs!524397 (and b!2909668 d!837085)))

(declare-fun lambda!107978 () Int)

(assert (=> bs!524397 (not (= lambda!107978 lambda!107976))))

(declare-fun bs!524398 () Bool)

(assert (= bs!524398 (and b!2909668 b!2909667)))

(assert (=> bs!524398 (= lambda!107978 lambda!107977)))

(declare-fun e!1836629 () Unit!48209)

(declare-fun Unit!48211 () Unit!48209)

(assert (=> b!2909667 (= e!1836629 Unit!48211)))

(declare-datatypes ((List!34789 0))(
  ( (Nil!34665) (Cons!34665 (h!40085 Context!5518) (t!233842 List!34789)) )
))
(declare-fun lt!1023457 () List!34789)

(declare-fun call!189944 () List!34789)

(assert (=> b!2909667 (= lt!1023457 call!189944)))

(declare-fun lt!1023454 () Unit!48209)

(declare-fun lemmaNotForallThenExists!166 (List!34789 Int) Unit!48209)

(assert (=> b!2909667 (= lt!1023454 (lemmaNotForallThenExists!166 lt!1023457 lambda!107976))))

(declare-fun call!189945 () Bool)

(assert (=> b!2909667 call!189945))

(declare-fun lt!1023453 () Unit!48209)

(assert (=> b!2909667 (= lt!1023453 lt!1023454)))

(declare-fun bm!189940 () Bool)

(declare-fun toList!2039 ((InoxSet Context!5518)) List!34789)

(assert (=> bm!189940 (= call!189944 (toList!2039 lt!1023331))))

(declare-fun lt!1023455 () Bool)

(declare-datatypes ((Option!6549 0))(
  ( (None!6548) (Some!6548 (v!34676 List!34787)) )
))
(declare-fun isEmpty!18915 (Option!6549) Bool)

(declare-fun getLanguageWitness!584 ((InoxSet Context!5518)) Option!6549)

(assert (=> d!837085 (= lt!1023455 (isEmpty!18915 (getLanguageWitness!584 lt!1023331)))))

(declare-fun forall!7128 ((InoxSet Context!5518) Int) Bool)

(assert (=> d!837085 (= lt!1023455 (forall!7128 lt!1023331 lambda!107976))))

(declare-fun lt!1023452 () Unit!48209)

(assert (=> d!837085 (= lt!1023452 e!1836629)))

(declare-fun c!474317 () Bool)

(assert (=> d!837085 (= c!474317 (not (forall!7128 lt!1023331 lambda!107976)))))

(assert (=> d!837085 (= (lostCauseZipper!612 lt!1023331) lt!1023455)))

(declare-fun lt!1023458 () List!34789)

(declare-fun bm!189939 () Bool)

(declare-fun exists!1215 (List!34789 Int) Bool)

(assert (=> bm!189939 (= call!189945 (exists!1215 (ite c!474317 lt!1023457 lt!1023458) (ite c!474317 lambda!107977 lambda!107978)))))

(declare-fun Unit!48212 () Unit!48209)

(assert (=> b!2909668 (= e!1836629 Unit!48212)))

(assert (=> b!2909668 (= lt!1023458 call!189944)))

(declare-fun lt!1023456 () Unit!48209)

(declare-fun lemmaForallThenNotExists!149 (List!34789 Int) Unit!48209)

(assert (=> b!2909668 (= lt!1023456 (lemmaForallThenNotExists!149 lt!1023458 lambda!107976))))

(assert (=> b!2909668 (not call!189945)))

(declare-fun lt!1023451 () Unit!48209)

(assert (=> b!2909668 (= lt!1023451 lt!1023456)))

(assert (= (and d!837085 c!474317) b!2909667))

(assert (= (and d!837085 (not c!474317)) b!2909668))

(assert (= (or b!2909667 b!2909668) bm!189939))

(assert (= (or b!2909667 b!2909668) bm!189940))

(declare-fun m!3311125 () Bool)

(assert (=> b!2909668 m!3311125))

(declare-fun m!3311127 () Bool)

(assert (=> b!2909667 m!3311127))

(declare-fun m!3311129 () Bool)

(assert (=> bm!189939 m!3311129))

(declare-fun m!3311131 () Bool)

(assert (=> d!837085 m!3311131))

(assert (=> d!837085 m!3311131))

(declare-fun m!3311133 () Bool)

(assert (=> d!837085 m!3311133))

(declare-fun m!3311135 () Bool)

(assert (=> d!837085 m!3311135))

(assert (=> d!837085 m!3311135))

(declare-fun m!3311137 () Bool)

(assert (=> bm!189940 m!3311137))

(assert (=> b!2909431 d!837085))

(declare-fun d!837097 () Bool)

(declare-fun c!474318 () Bool)

(assert (=> d!837097 (= c!474318 ((_ is Nil!34663) lt!1023367))))

(declare-fun e!1836630 () (InoxSet C!18060))

(assert (=> d!837097 (= (content!4740 lt!1023367) e!1836630)))

(declare-fun b!2909669 () Bool)

(assert (=> b!2909669 (= e!1836630 ((as const (Array C!18060 Bool)) false))))

(declare-fun b!2909670 () Bool)

(assert (=> b!2909670 (= e!1836630 ((_ map or) (store ((as const (Array C!18060 Bool)) false) (h!40083 lt!1023367) true) (content!4740 (t!233830 lt!1023367))))))

(assert (= (and d!837097 c!474318) b!2909669))

(assert (= (and d!837097 (not c!474318)) b!2909670))

(declare-fun m!3311139 () Bool)

(assert (=> b!2909670 m!3311139))

(declare-fun m!3311141 () Bool)

(assert (=> b!2909670 m!3311141))

(assert (=> d!836967 d!837097))

(assert (=> d!836967 d!837055))

(declare-fun d!837101 () Bool)

(declare-fun res!1201303 () Bool)

(declare-fun e!1836644 () Bool)

(assert (=> d!837101 (=> (not res!1201303) (not e!1836644))))

(declare-fun list!12610 (IArray!21033) List!34787)

(assert (=> d!837101 (= res!1201303 (<= (size!26409 (list!12610 (xs!13632 (c!474171 input!3770)))) 512))))

(assert (=> d!837101 (= (inv!46822 (c!474171 input!3770)) e!1836644)))

(declare-fun b!2909692 () Bool)

(declare-fun res!1201304 () Bool)

(assert (=> b!2909692 (=> (not res!1201304) (not e!1836644))))

(assert (=> b!2909692 (= res!1201304 (= (csize!21259 (c!474171 input!3770)) (size!26409 (list!12610 (xs!13632 (c!474171 input!3770))))))))

(declare-fun b!2909693 () Bool)

(assert (=> b!2909693 (= e!1836644 (and (> (csize!21259 (c!474171 input!3770)) 0) (<= (csize!21259 (c!474171 input!3770)) 512)))))

(assert (= (and d!837101 res!1201303) b!2909692))

(assert (= (and b!2909692 res!1201304) b!2909693))

(declare-fun m!3311169 () Bool)

(assert (=> d!837101 m!3311169))

(assert (=> d!837101 m!3311169))

(declare-fun m!3311173 () Bool)

(assert (=> d!837101 m!3311173))

(assert (=> b!2909692 m!3311169))

(assert (=> b!2909692 m!3311169))

(assert (=> b!2909692 m!3311173))

(assert (=> b!2909342 d!837101))

(declare-fun d!837111 () Bool)

(declare-fun lt!1023462 () C!18060)

(assert (=> d!837111 (contains!6129 (list!12606 input!3770) lt!1023462)))

(declare-fun e!1836649 () C!18060)

(assert (=> d!837111 (= lt!1023462 e!1836649)))

(declare-fun c!474322 () Bool)

(assert (=> d!837111 (= c!474322 (= i!1878 0))))

(declare-fun e!1836650 () Bool)

(assert (=> d!837111 e!1836650))

(declare-fun res!1201305 () Bool)

(assert (=> d!837111 (=> (not res!1201305) (not e!1836650))))

(assert (=> d!837111 (= res!1201305 (<= 0 i!1878))))

(assert (=> d!837111 (= (apply!7900 (list!12606 input!3770) i!1878) lt!1023462)))

(declare-fun b!2909703 () Bool)

(assert (=> b!2909703 (= e!1836650 (< i!1878 (size!26409 (list!12606 input!3770))))))

(declare-fun b!2909704 () Bool)

(assert (=> b!2909704 (= e!1836649 (head!6455 (list!12606 input!3770)))))

(declare-fun b!2909705 () Bool)

(assert (=> b!2909705 (= e!1836649 (apply!7900 (tail!4680 (list!12606 input!3770)) (- i!1878 1)))))

(assert (= (and d!837111 res!1201305) b!2909703))

(assert (= (and d!837111 c!474322) b!2909704))

(assert (= (and d!837111 (not c!474322)) b!2909705))

(assert (=> d!837111 m!3310697))

(declare-fun m!3311175 () Bool)

(assert (=> d!837111 m!3311175))

(assert (=> b!2909703 m!3310697))

(assert (=> b!2909703 m!3310795))

(assert (=> b!2909704 m!3310697))

(declare-fun m!3311177 () Bool)

(assert (=> b!2909704 m!3311177))

(assert (=> b!2909705 m!3310697))

(declare-fun m!3311179 () Bool)

(assert (=> b!2909705 m!3311179))

(assert (=> b!2909705 m!3311179))

(declare-fun m!3311181 () Bool)

(assert (=> b!2909705 m!3311181))

(assert (=> d!836965 d!837111))

(assert (=> d!836965 d!836973))

(declare-fun b!2909729 () Bool)

(declare-fun e!1836662 () Int)

(assert (=> b!2909729 (= e!1836662 i!1878)))

(declare-fun b!2909730 () Bool)

(declare-fun e!1836661 () Bool)

(assert (=> b!2909730 (= e!1836661 (< i!1878 (size!26410 (c!474171 input!3770))))))

(declare-fun b!2909731 () Bool)

(assert (=> b!2909731 (= e!1836662 (- i!1878 (size!26410 (left!26034 (c!474171 input!3770)))))))

(declare-fun b!2909732 () Bool)

(declare-fun e!1836664 () C!18060)

(declare-fun apply!7905 (IArray!21033 Int) C!18060)

(assert (=> b!2909732 (= e!1836664 (apply!7905 (xs!13632 (c!474171 input!3770)) i!1878))))

(declare-fun bm!189943 () Bool)

(declare-fun c!474329 () Bool)

(declare-fun c!474331 () Bool)

(assert (=> bm!189943 (= c!474329 c!474331)))

(declare-fun call!189948 () C!18060)

(assert (=> bm!189943 (= call!189948 (apply!7903 (ite c!474331 (left!26034 (c!474171 input!3770)) (right!26364 (c!474171 input!3770))) e!1836662))))

(declare-fun d!837113 () Bool)

(declare-fun lt!1023467 () C!18060)

(assert (=> d!837113 (= lt!1023467 (apply!7900 (list!12608 (c!474171 input!3770)) i!1878))))

(assert (=> d!837113 (= lt!1023467 e!1836664)))

(declare-fun c!474330 () Bool)

(assert (=> d!837113 (= c!474330 ((_ is Leaf!16207) (c!474171 input!3770)))))

(assert (=> d!837113 e!1836661))

(declare-fun res!1201308 () Bool)

(assert (=> d!837113 (=> (not res!1201308) (not e!1836661))))

(assert (=> d!837113 (= res!1201308 (<= 0 i!1878))))

(assert (=> d!837113 (= (apply!7903 (c!474171 input!3770) i!1878) lt!1023467)))

(declare-fun b!2909733 () Bool)

(declare-fun e!1836663 () C!18060)

(assert (=> b!2909733 (= e!1836664 e!1836663)))

(declare-fun lt!1023468 () Bool)

(declare-fun appendIndex!300 (List!34787 List!34787 Int) Bool)

(assert (=> b!2909733 (= lt!1023468 (appendIndex!300 (list!12608 (left!26034 (c!474171 input!3770))) (list!12608 (right!26364 (c!474171 input!3770))) i!1878))))

(assert (=> b!2909733 (= c!474331 (< i!1878 (size!26410 (left!26034 (c!474171 input!3770)))))))

(declare-fun b!2909734 () Bool)

(assert (=> b!2909734 (= e!1836663 call!189948)))

(declare-fun b!2909735 () Bool)

(assert (=> b!2909735 (= e!1836663 call!189948)))

(assert (= (and d!837113 res!1201308) b!2909730))

(assert (= (and d!837113 c!474330) b!2909732))

(assert (= (and d!837113 (not c!474330)) b!2909733))

(assert (= (and b!2909733 c!474331) b!2909735))

(assert (= (and b!2909733 (not c!474331)) b!2909734))

(assert (= (or b!2909735 b!2909734) bm!189943))

(assert (= (and bm!189943 c!474329) b!2909729))

(assert (= (and bm!189943 (not c!474329)) b!2909731))

(declare-fun m!3311185 () Bool)

(assert (=> bm!189943 m!3311185))

(assert (=> b!2909731 m!3310983))

(assert (=> b!2909730 m!3310797))

(declare-fun m!3311187 () Bool)

(assert (=> b!2909732 m!3311187))

(declare-fun m!3311189 () Bool)

(assert (=> b!2909733 m!3311189))

(declare-fun m!3311191 () Bool)

(assert (=> b!2909733 m!3311191))

(assert (=> b!2909733 m!3311189))

(assert (=> b!2909733 m!3311191))

(declare-fun m!3311193 () Bool)

(assert (=> b!2909733 m!3311193))

(assert (=> b!2909733 m!3310983))

(assert (=> d!837113 m!3310831))

(assert (=> d!837113 m!3310831))

(declare-fun m!3311195 () Bool)

(assert (=> d!837113 m!3311195))

(assert (=> d!836965 d!837113))

(declare-fun d!837117 () Bool)

(declare-fun choose!17104 ((InoxSet Context!5518) Int) (InoxSet Context!5518))

(assert (=> d!837117 (= (flatMap!246 z!644 lambda!107943) (choose!17104 z!644 lambda!107943))))

(declare-fun bs!524401 () Bool)

(assert (= bs!524401 d!837117))

(declare-fun m!3311197 () Bool)

(assert (=> bs!524401 m!3311197))

(assert (=> d!836977 d!837117))

(declare-fun b!2909745 () Bool)

(declare-fun e!1836669 () List!34787)

(declare-fun e!1836670 () List!34787)

(assert (=> b!2909745 (= e!1836669 e!1836670)))

(declare-fun c!474337 () Bool)

(assert (=> b!2909745 (= c!474337 ((_ is Leaf!16207) (c!474171 input!3770)))))

(declare-fun b!2909746 () Bool)

(assert (=> b!2909746 (= e!1836670 (list!12610 (xs!13632 (c!474171 input!3770))))))

(declare-fun b!2909744 () Bool)

(assert (=> b!2909744 (= e!1836669 Nil!34663)))

(declare-fun d!837119 () Bool)

(declare-fun c!474336 () Bool)

(assert (=> d!837119 (= c!474336 ((_ is Empty!10514) (c!474171 input!3770)))))

(assert (=> d!837119 (= (list!12608 (c!474171 input!3770)) e!1836669)))

(declare-fun b!2909747 () Bool)

(declare-fun ++!8265 (List!34787 List!34787) List!34787)

(assert (=> b!2909747 (= e!1836670 (++!8265 (list!12608 (left!26034 (c!474171 input!3770))) (list!12608 (right!26364 (c!474171 input!3770)))))))

(assert (= (and d!837119 c!474336) b!2909744))

(assert (= (and d!837119 (not c!474336)) b!2909745))

(assert (= (and b!2909745 c!474337) b!2909746))

(assert (= (and b!2909745 (not c!474337)) b!2909747))

(assert (=> b!2909746 m!3311169))

(assert (=> b!2909747 m!3311189))

(assert (=> b!2909747 m!3311191))

(assert (=> b!2909747 m!3311189))

(assert (=> b!2909747 m!3311191))

(declare-fun m!3311199 () Bool)

(assert (=> b!2909747 m!3311199))

(assert (=> d!836973 d!837119))

(declare-fun d!837121 () Bool)

(assert (=> d!837121 (= (inv!46824 (xs!13632 (c!474171 input!3770))) (<= (size!26409 (innerList!10574 (xs!13632 (c!474171 input!3770)))) 2147483647))))

(declare-fun bs!524402 () Bool)

(assert (= bs!524402 d!837121))

(declare-fun m!3311201 () Bool)

(assert (=> bs!524402 m!3311201))

(assert (=> b!2909455 d!837121))

(assert (=> b!2909369 d!837085))

(assert (=> b!2909400 d!836951))

(declare-fun d!837123 () Bool)

(declare-fun lt!1023469 () Int)

(assert (=> d!837123 (>= lt!1023469 0)))

(declare-fun e!1836671 () Int)

(assert (=> d!837123 (= lt!1023469 e!1836671)))

(declare-fun c!474338 () Bool)

(assert (=> d!837123 (= c!474338 ((_ is Nil!34663) lt!1023363))))

(assert (=> d!837123 (= (size!26409 lt!1023363) lt!1023469)))

(declare-fun b!2909748 () Bool)

(assert (=> b!2909748 (= e!1836671 0)))

(declare-fun b!2909749 () Bool)

(assert (=> b!2909749 (= e!1836671 (+ 1 (size!26409 (t!233830 lt!1023363))))))

(assert (= (and d!837123 c!474338) b!2909748))

(assert (= (and d!837123 (not c!474338)) b!2909749))

(declare-fun m!3311203 () Bool)

(assert (=> b!2909749 m!3311203))

(assert (=> b!2909397 d!837123))

(declare-fun b!2909750 () Bool)

(declare-fun e!1836672 () List!34787)

(assert (=> b!2909750 (= e!1836672 (list!12608 (c!474171 input!3770)))))

(declare-fun b!2909751 () Bool)

(declare-fun e!1836674 () Int)

(assert (=> b!2909751 (= e!1836674 0)))

(declare-fun b!2909752 () Bool)

(declare-fun e!1836676 () List!34787)

(assert (=> b!2909752 (= e!1836676 Nil!34663)))

(declare-fun b!2909753 () Bool)

(declare-fun call!189949 () Int)

(assert (=> b!2909753 (= e!1836674 (- call!189949 i!1878))))

(declare-fun b!2909754 () Bool)

(declare-fun e!1836673 () Int)

(assert (=> b!2909754 (= e!1836673 call!189949)))

(declare-fun b!2909755 () Bool)

(assert (=> b!2909755 (= e!1836672 (drop!1824 (t!233830 (list!12608 (c!474171 input!3770))) (- i!1878 1)))))

(declare-fun b!2909756 () Bool)

(assert (=> b!2909756 (= e!1836673 e!1836674)))

(declare-fun c!474340 () Bool)

(assert (=> b!2909756 (= c!474340 (>= i!1878 call!189949))))

(declare-fun b!2909757 () Bool)

(assert (=> b!2909757 (= e!1836676 e!1836672)))

(declare-fun c!474341 () Bool)

(assert (=> b!2909757 (= c!474341 (<= i!1878 0))))

(declare-fun b!2909758 () Bool)

(declare-fun e!1836675 () Bool)

(declare-fun lt!1023470 () List!34787)

(assert (=> b!2909758 (= e!1836675 (= (size!26409 lt!1023470) e!1836673))))

(declare-fun c!474342 () Bool)

(assert (=> b!2909758 (= c!474342 (<= i!1878 0))))

(declare-fun d!837125 () Bool)

(assert (=> d!837125 e!1836675))

(declare-fun res!1201309 () Bool)

(assert (=> d!837125 (=> (not res!1201309) (not e!1836675))))

(assert (=> d!837125 (= res!1201309 (= ((_ map implies) (content!4740 lt!1023470) (content!4740 (list!12608 (c!474171 input!3770)))) ((as const (InoxSet C!18060)) true)))))

(assert (=> d!837125 (= lt!1023470 e!1836676)))

(declare-fun c!474339 () Bool)

(assert (=> d!837125 (= c!474339 ((_ is Nil!34663) (list!12608 (c!474171 input!3770))))))

(assert (=> d!837125 (= (drop!1824 (list!12608 (c!474171 input!3770)) i!1878) lt!1023470)))

(declare-fun bm!189944 () Bool)

(assert (=> bm!189944 (= call!189949 (size!26409 (list!12608 (c!474171 input!3770))))))

(assert (= (and d!837125 c!474339) b!2909752))

(assert (= (and d!837125 (not c!474339)) b!2909757))

(assert (= (and b!2909757 c!474341) b!2909750))

(assert (= (and b!2909757 (not c!474341)) b!2909755))

(assert (= (and d!837125 res!1201309) b!2909758))

(assert (= (and b!2909758 c!474342) b!2909754))

(assert (= (and b!2909758 (not c!474342)) b!2909756))

(assert (= (and b!2909756 c!474340) b!2909751))

(assert (= (and b!2909756 (not c!474340)) b!2909753))

(assert (= (or b!2909754 b!2909756 b!2909753) bm!189944))

(declare-fun m!3311205 () Bool)

(assert (=> b!2909755 m!3311205))

(declare-fun m!3311207 () Bool)

(assert (=> b!2909758 m!3311207))

(declare-fun m!3311209 () Bool)

(assert (=> d!837125 m!3311209))

(assert (=> d!837125 m!3310831))

(declare-fun m!3311211 () Bool)

(assert (=> d!837125 m!3311211))

(assert (=> bm!189944 m!3310831))

(declare-fun m!3311213 () Bool)

(assert (=> bm!189944 m!3311213))

(assert (=> d!836981 d!837125))

(assert (=> d!836981 d!837119))

(declare-fun b!2909771 () Bool)

(declare-fun res!1201322 () Bool)

(declare-fun e!1836682 () Bool)

(assert (=> b!2909771 (=> (not res!1201322) (not e!1836682))))

(assert (=> b!2909771 (= res!1201322 (isBalanced!3165 (right!26364 (c!474171 input!3770))))))

(declare-fun b!2909772 () Bool)

(declare-fun isEmpty!18917 (Conc!10514) Bool)

(assert (=> b!2909772 (= e!1836682 (not (isEmpty!18917 (right!26364 (c!474171 input!3770)))))))

(declare-fun d!837127 () Bool)

(declare-fun res!1201324 () Bool)

(declare-fun e!1836681 () Bool)

(assert (=> d!837127 (=> res!1201324 e!1836681)))

(assert (=> d!837127 (= res!1201324 (not ((_ is Node!10514) (c!474171 input!3770))))))

(assert (=> d!837127 (= (isBalanced!3165 (c!474171 input!3770)) e!1836681)))

(declare-fun b!2909773 () Bool)

(assert (=> b!2909773 (= e!1836681 e!1836682)))

(declare-fun res!1201325 () Bool)

(assert (=> b!2909773 (=> (not res!1201325) (not e!1836682))))

(assert (=> b!2909773 (= res!1201325 (<= (- 1) (- (height!1519 (left!26034 (c!474171 input!3770))) (height!1519 (right!26364 (c!474171 input!3770))))))))

(declare-fun b!2909774 () Bool)

(declare-fun res!1201326 () Bool)

(assert (=> b!2909774 (=> (not res!1201326) (not e!1836682))))

(assert (=> b!2909774 (= res!1201326 (isBalanced!3165 (left!26034 (c!474171 input!3770))))))

(declare-fun b!2909775 () Bool)

(declare-fun res!1201327 () Bool)

(assert (=> b!2909775 (=> (not res!1201327) (not e!1836682))))

(assert (=> b!2909775 (= res!1201327 (not (isEmpty!18917 (left!26034 (c!474171 input!3770)))))))

(declare-fun b!2909776 () Bool)

(declare-fun res!1201323 () Bool)

(assert (=> b!2909776 (=> (not res!1201323) (not e!1836682))))

(assert (=> b!2909776 (= res!1201323 (<= (- (height!1519 (left!26034 (c!474171 input!3770))) (height!1519 (right!26364 (c!474171 input!3770)))) 1))))

(assert (= (and d!837127 (not res!1201324)) b!2909773))

(assert (= (and b!2909773 res!1201325) b!2909776))

(assert (= (and b!2909776 res!1201323) b!2909774))

(assert (= (and b!2909774 res!1201326) b!2909771))

(assert (= (and b!2909771 res!1201322) b!2909775))

(assert (= (and b!2909775 res!1201327) b!2909772))

(declare-fun m!3311215 () Bool)

(assert (=> b!2909775 m!3311215))

(declare-fun m!3311217 () Bool)

(assert (=> b!2909774 m!3311217))

(declare-fun m!3311219 () Bool)

(assert (=> b!2909771 m!3311219))

(assert (=> b!2909776 m!3310987))

(assert (=> b!2909776 m!3310989))

(assert (=> b!2909773 m!3310987))

(assert (=> b!2909773 m!3310989))

(declare-fun m!3311221 () Bool)

(assert (=> b!2909772 m!3311221))

(assert (=> d!836953 d!837127))

(declare-fun b!2909777 () Bool)

(declare-fun e!1836683 () List!34787)

(assert (=> b!2909777 (= e!1836683 (list!12608 (c!474171 input!3770)))))

(declare-fun b!2909778 () Bool)

(declare-fun e!1836685 () Int)

(assert (=> b!2909778 (= e!1836685 0)))

(declare-fun b!2909779 () Bool)

(declare-fun e!1836687 () List!34787)

(assert (=> b!2909779 (= e!1836687 Nil!34663)))

(declare-fun b!2909780 () Bool)

(declare-fun call!189950 () Int)

(assert (=> b!2909780 (= e!1836685 (- call!189950 (+ 1 i!1878)))))

(declare-fun b!2909781 () Bool)

(declare-fun e!1836684 () Int)

(assert (=> b!2909781 (= e!1836684 call!189950)))

(declare-fun b!2909782 () Bool)

(assert (=> b!2909782 (= e!1836683 (drop!1824 (t!233830 (list!12608 (c!474171 input!3770))) (- (+ 1 i!1878) 1)))))

(declare-fun b!2909783 () Bool)

(assert (=> b!2909783 (= e!1836684 e!1836685)))

(declare-fun c!474344 () Bool)

(assert (=> b!2909783 (= c!474344 (>= (+ 1 i!1878) call!189950))))

(declare-fun b!2909784 () Bool)

(assert (=> b!2909784 (= e!1836687 e!1836683)))

(declare-fun c!474345 () Bool)

(assert (=> b!2909784 (= c!474345 (<= (+ 1 i!1878) 0))))

(declare-fun b!2909785 () Bool)

(declare-fun e!1836686 () Bool)

(declare-fun lt!1023471 () List!34787)

(assert (=> b!2909785 (= e!1836686 (= (size!26409 lt!1023471) e!1836684))))

(declare-fun c!474346 () Bool)

(assert (=> b!2909785 (= c!474346 (<= (+ 1 i!1878) 0))))

(declare-fun d!837129 () Bool)

(assert (=> d!837129 e!1836686))

(declare-fun res!1201328 () Bool)

(assert (=> d!837129 (=> (not res!1201328) (not e!1836686))))

(assert (=> d!837129 (= res!1201328 (= ((_ map implies) (content!4740 lt!1023471) (content!4740 (list!12608 (c!474171 input!3770)))) ((as const (InoxSet C!18060)) true)))))

(assert (=> d!837129 (= lt!1023471 e!1836687)))

(declare-fun c!474343 () Bool)

(assert (=> d!837129 (= c!474343 ((_ is Nil!34663) (list!12608 (c!474171 input!3770))))))

(assert (=> d!837129 (= (drop!1824 (list!12608 (c!474171 input!3770)) (+ 1 i!1878)) lt!1023471)))

(declare-fun bm!189945 () Bool)

(assert (=> bm!189945 (= call!189950 (size!26409 (list!12608 (c!474171 input!3770))))))

(assert (= (and d!837129 c!474343) b!2909779))

(assert (= (and d!837129 (not c!474343)) b!2909784))

(assert (= (and b!2909784 c!474345) b!2909777))

(assert (= (and b!2909784 (not c!474345)) b!2909782))

(assert (= (and d!837129 res!1201328) b!2909785))

(assert (= (and b!2909785 c!474346) b!2909781))

(assert (= (and b!2909785 (not c!474346)) b!2909783))

(assert (= (and b!2909783 c!474344) b!2909778))

(assert (= (and b!2909783 (not c!474344)) b!2909780))

(assert (= (or b!2909781 b!2909783 b!2909780) bm!189945))

(declare-fun m!3311223 () Bool)

(assert (=> b!2909782 m!3311223))

(declare-fun m!3311225 () Bool)

(assert (=> b!2909785 m!3311225))

(declare-fun m!3311227 () Bool)

(assert (=> d!837129 m!3311227))

(assert (=> d!837129 m!3310831))

(assert (=> d!837129 m!3311211))

(assert (=> bm!189945 m!3310831))

(assert (=> bm!189945 m!3311213))

(assert (=> d!836961 d!837129))

(assert (=> d!836961 d!837119))

(assert (=> b!2909415 d!836951))

(declare-fun d!837131 () Bool)

(declare-fun c!474347 () Bool)

(assert (=> d!837131 (= c!474347 ((_ is Node!10514) (left!26034 (c!474171 input!3770))))))

(declare-fun e!1836688 () Bool)

(assert (=> d!837131 (= (inv!46816 (left!26034 (c!474171 input!3770))) e!1836688)))

(declare-fun b!2909786 () Bool)

(assert (=> b!2909786 (= e!1836688 (inv!46821 (left!26034 (c!474171 input!3770))))))

(declare-fun b!2909787 () Bool)

(declare-fun e!1836689 () Bool)

(assert (=> b!2909787 (= e!1836688 e!1836689)))

(declare-fun res!1201329 () Bool)

(assert (=> b!2909787 (= res!1201329 (not ((_ is Leaf!16207) (left!26034 (c!474171 input!3770)))))))

(assert (=> b!2909787 (=> res!1201329 e!1836689)))

(declare-fun b!2909788 () Bool)

(assert (=> b!2909788 (= e!1836689 (inv!46822 (left!26034 (c!474171 input!3770))))))

(assert (= (and d!837131 c!474347) b!2909786))

(assert (= (and d!837131 (not c!474347)) b!2909787))

(assert (= (and b!2909787 (not res!1201329)) b!2909788))

(declare-fun m!3311229 () Bool)

(assert (=> b!2909786 m!3311229))

(declare-fun m!3311231 () Bool)

(assert (=> b!2909788 m!3311231))

(assert (=> b!2909454 d!837131))

(declare-fun d!837133 () Bool)

(declare-fun c!474348 () Bool)

(assert (=> d!837133 (= c!474348 ((_ is Node!10514) (right!26364 (c!474171 input!3770))))))

(declare-fun e!1836690 () Bool)

(assert (=> d!837133 (= (inv!46816 (right!26364 (c!474171 input!3770))) e!1836690)))

(declare-fun b!2909789 () Bool)

(assert (=> b!2909789 (= e!1836690 (inv!46821 (right!26364 (c!474171 input!3770))))))

(declare-fun b!2909790 () Bool)

(declare-fun e!1836691 () Bool)

(assert (=> b!2909790 (= e!1836690 e!1836691)))

(declare-fun res!1201330 () Bool)

(assert (=> b!2909790 (= res!1201330 (not ((_ is Leaf!16207) (right!26364 (c!474171 input!3770)))))))

(assert (=> b!2909790 (=> res!1201330 e!1836691)))

(declare-fun b!2909791 () Bool)

(assert (=> b!2909791 (= e!1836691 (inv!46822 (right!26364 (c!474171 input!3770))))))

(assert (= (and d!837133 c!474348) b!2909789))

(assert (= (and d!837133 (not c!474348)) b!2909790))

(assert (= (and b!2909790 (not res!1201330)) b!2909791))

(declare-fun m!3311233 () Bool)

(assert (=> b!2909789 m!3311233))

(declare-fun m!3311235 () Bool)

(assert (=> b!2909791 m!3311235))

(assert (=> b!2909454 d!837133))

(declare-fun d!837135 () Bool)

(assert (=> d!837135 (= (tail!4680 (drop!1824 lt!1023328 i!1878)) (t!233830 (drop!1824 lt!1023328 i!1878)))))

(assert (=> d!836989 d!837135))

(assert (=> d!836989 d!836963))

(declare-fun b!2909792 () Bool)

(declare-fun e!1836692 () List!34787)

(assert (=> b!2909792 (= e!1836692 lt!1023328)))

(declare-fun b!2909793 () Bool)

(declare-fun e!1836694 () Int)

(assert (=> b!2909793 (= e!1836694 0)))

(declare-fun b!2909794 () Bool)

(declare-fun e!1836696 () List!34787)

(assert (=> b!2909794 (= e!1836696 Nil!34663)))

(declare-fun b!2909795 () Bool)

(declare-fun call!189951 () Int)

(assert (=> b!2909795 (= e!1836694 (- call!189951 (+ i!1878 1)))))

(declare-fun b!2909796 () Bool)

(declare-fun e!1836693 () Int)

(assert (=> b!2909796 (= e!1836693 call!189951)))

(declare-fun b!2909797 () Bool)

(assert (=> b!2909797 (= e!1836692 (drop!1824 (t!233830 lt!1023328) (- (+ i!1878 1) 1)))))

(declare-fun b!2909798 () Bool)

(assert (=> b!2909798 (= e!1836693 e!1836694)))

(declare-fun c!474350 () Bool)

(assert (=> b!2909798 (= c!474350 (>= (+ i!1878 1) call!189951))))

(declare-fun b!2909799 () Bool)

(assert (=> b!2909799 (= e!1836696 e!1836692)))

(declare-fun c!474351 () Bool)

(assert (=> b!2909799 (= c!474351 (<= (+ i!1878 1) 0))))

(declare-fun b!2909800 () Bool)

(declare-fun e!1836695 () Bool)

(declare-fun lt!1023472 () List!34787)

(assert (=> b!2909800 (= e!1836695 (= (size!26409 lt!1023472) e!1836693))))

(declare-fun c!474352 () Bool)

(assert (=> b!2909800 (= c!474352 (<= (+ i!1878 1) 0))))

(declare-fun d!837137 () Bool)

(assert (=> d!837137 e!1836695))

(declare-fun res!1201331 () Bool)

(assert (=> d!837137 (=> (not res!1201331) (not e!1836695))))

(assert (=> d!837137 (= res!1201331 (= ((_ map implies) (content!4740 lt!1023472) (content!4740 lt!1023328)) ((as const (InoxSet C!18060)) true)))))

(assert (=> d!837137 (= lt!1023472 e!1836696)))

(declare-fun c!474349 () Bool)

(assert (=> d!837137 (= c!474349 ((_ is Nil!34663) lt!1023328))))

(assert (=> d!837137 (= (drop!1824 lt!1023328 (+ i!1878 1)) lt!1023472)))

(declare-fun bm!189946 () Bool)

(assert (=> bm!189946 (= call!189951 (size!26409 lt!1023328))))

(assert (= (and d!837137 c!474349) b!2909794))

(assert (= (and d!837137 (not c!474349)) b!2909799))

(assert (= (and b!2909799 c!474351) b!2909792))

(assert (= (and b!2909799 (not c!474351)) b!2909797))

(assert (= (and d!837137 res!1201331) b!2909800))

(assert (= (and b!2909800 c!474352) b!2909796))

(assert (= (and b!2909800 (not c!474352)) b!2909798))

(assert (= (and b!2909798 c!474350) b!2909793))

(assert (= (and b!2909798 (not c!474350)) b!2909795))

(assert (= (or b!2909796 b!2909798 b!2909795) bm!189946))

(declare-fun m!3311237 () Bool)

(assert (=> b!2909797 m!3311237))

(declare-fun m!3311239 () Bool)

(assert (=> b!2909800 m!3311239))

(declare-fun m!3311241 () Bool)

(assert (=> d!837137 m!3311241))

(assert (=> d!837137 m!3310841))

(assert (=> bm!189946 m!3310843))

(assert (=> d!836989 d!837137))

(declare-fun d!837139 () Bool)

(assert (=> d!837139 (= (tail!4680 (drop!1824 lt!1023328 i!1878)) (drop!1824 lt!1023328 (+ i!1878 1)))))

(assert (=> d!837139 true))

(declare-fun _$28!605 () Unit!48209)

(assert (=> d!837139 (= (choose!17103 lt!1023328 i!1878) _$28!605)))

(declare-fun bs!524403 () Bool)

(assert (= bs!524403 d!837139))

(assert (=> bs!524403 m!3310701))

(assert (=> bs!524403 m!3310701))

(assert (=> bs!524403 m!3310885))

(assert (=> bs!524403 m!3310887))

(assert (=> d!836989 d!837139))

(declare-fun d!837141 () Bool)

(declare-fun c!474353 () Bool)

(assert (=> d!837141 (= c!474353 (isEmpty!18913 (dropList!1040 input!3770 (+ 1 i!1878))))))

(declare-fun e!1836697 () Bool)

(assert (=> d!837141 (= (prefixMatchZipper!375 lt!1023331 (dropList!1040 input!3770 (+ 1 i!1878))) e!1836697)))

(declare-fun b!2909801 () Bool)

(assert (=> b!2909801 (= e!1836697 (not (lostCauseZipper!612 lt!1023331)))))

(declare-fun b!2909802 () Bool)

(assert (=> b!2909802 (= e!1836697 (prefixMatchZipper!375 (derivationStepZipper!519 lt!1023331 (head!6455 (dropList!1040 input!3770 (+ 1 i!1878)))) (tail!4680 (dropList!1040 input!3770 (+ 1 i!1878)))))))

(assert (= (and d!837141 c!474353) b!2909801))

(assert (= (and d!837141 (not c!474353)) b!2909802))

(assert (=> d!837141 m!3310711))

(declare-fun m!3311243 () Bool)

(assert (=> d!837141 m!3311243))

(assert (=> b!2909801 m!3310823))

(assert (=> b!2909802 m!3310711))

(declare-fun m!3311245 () Bool)

(assert (=> b!2909802 m!3311245))

(assert (=> b!2909802 m!3311245))

(declare-fun m!3311247 () Bool)

(assert (=> b!2909802 m!3311247))

(assert (=> b!2909802 m!3310711))

(declare-fun m!3311249 () Bool)

(assert (=> b!2909802 m!3311249))

(assert (=> b!2909802 m!3311247))

(assert (=> b!2909802 m!3311249))

(declare-fun m!3311251 () Bool)

(assert (=> b!2909802 m!3311251))

(assert (=> d!836971 d!837141))

(assert (=> d!836971 d!836961))

(assert (=> d!836971 d!836959))

(declare-fun d!837143 () Bool)

(assert (=> d!837143 (= (prefixMatchZipper!375 lt!1023331 (dropList!1040 input!3770 (+ 1 i!1878))) (prefixMatchZipperSequence!779 lt!1023331 input!3770 (+ 1 i!1878)))))

(assert (=> d!837143 true))

(declare-fun _$29!436 () Unit!48209)

(assert (=> d!837143 (= (choose!17102 lt!1023331 input!3770 (+ 1 i!1878)) _$29!436)))

(declare-fun bs!524404 () Bool)

(assert (= bs!524404 d!837143))

(assert (=> bs!524404 m!3310711))

(assert (=> bs!524404 m!3310711))

(assert (=> bs!524404 m!3310859))

(assert (=> bs!524404 m!3310705))

(assert (=> d!836971 d!837143))

(declare-fun d!837145 () Bool)

(assert (=> d!837145 (= (head!6455 (drop!1824 lt!1023328 i!1878)) (h!40083 (drop!1824 lt!1023328 i!1878)))))

(assert (=> d!836969 d!837145))

(assert (=> d!836969 d!836963))

(assert (=> d!836969 d!836975))

(declare-fun d!837147 () Bool)

(assert (=> d!837147 (= (head!6455 (drop!1824 lt!1023328 i!1878)) (apply!7900 lt!1023328 i!1878))))

(assert (=> d!837147 true))

(declare-fun _$27!858 () Unit!48209)

(assert (=> d!837147 (= (choose!17101 lt!1023328 i!1878) _$27!858)))

(declare-fun bs!524405 () Bool)

(assert (= bs!524405 d!837147))

(assert (=> bs!524405 m!3310701))

(assert (=> bs!524405 m!3310701))

(assert (=> bs!524405 m!3310855))

(assert (=> bs!524405 m!3310683))

(assert (=> d!836969 d!837147))

(declare-fun d!837149 () Bool)

(declare-fun res!1201336 () Bool)

(declare-fun e!1836702 () Bool)

(assert (=> d!837149 (=> res!1201336 e!1836702)))

(assert (=> d!837149 (= res!1201336 ((_ is Nil!34664) (exprs!3259 setElem!25885)))))

(assert (=> d!837149 (= (forall!7127 (exprs!3259 setElem!25885) lambda!107940) e!1836702)))

(declare-fun b!2909807 () Bool)

(declare-fun e!1836703 () Bool)

(assert (=> b!2909807 (= e!1836702 e!1836703)))

(declare-fun res!1201337 () Bool)

(assert (=> b!2909807 (=> (not res!1201337) (not e!1836703))))

(declare-fun dynLambda!14352 (Int Regex!8939) Bool)

(assert (=> b!2909807 (= res!1201337 (dynLambda!14352 lambda!107940 (h!40084 (exprs!3259 setElem!25885))))))

(declare-fun b!2909808 () Bool)

(assert (=> b!2909808 (= e!1836703 (forall!7127 (t!233831 (exprs!3259 setElem!25885)) lambda!107940))))

(assert (= (and d!837149 (not res!1201336)) b!2909807))

(assert (= (and b!2909807 res!1201337) b!2909808))

(declare-fun b_lambda!86363 () Bool)

(assert (=> (not b_lambda!86363) (not b!2909807)))

(declare-fun m!3311253 () Bool)

(assert (=> b!2909807 m!3311253))

(declare-fun m!3311255 () Bool)

(assert (=> b!2909808 m!3311255))

(assert (=> d!836913 d!837149))

(declare-fun d!837151 () Bool)

(declare-fun lt!1023473 () Int)

(assert (=> d!837151 (>= lt!1023473 0)))

(declare-fun e!1836704 () Int)

(assert (=> d!837151 (= lt!1023473 e!1836704)))

(declare-fun c!474354 () Bool)

(assert (=> d!837151 (= c!474354 ((_ is Nil!34663) (list!12606 input!3770)))))

(assert (=> d!837151 (= (size!26409 (list!12606 input!3770)) lt!1023473)))

(declare-fun b!2909809 () Bool)

(assert (=> b!2909809 (= e!1836704 0)))

(declare-fun b!2909810 () Bool)

(assert (=> b!2909810 (= e!1836704 (+ 1 (size!26409 (t!233830 (list!12606 input!3770)))))))

(assert (= (and d!837151 c!474354) b!2909809))

(assert (= (and d!837151 (not c!474354)) b!2909810))

(declare-fun m!3311257 () Bool)

(assert (=> b!2909810 m!3311257))

(assert (=> d!836951 d!837151))

(assert (=> d!836951 d!836973))

(declare-fun d!837153 () Bool)

(declare-fun lt!1023476 () Int)

(assert (=> d!837153 (= lt!1023476 (size!26409 (list!12608 (c!474171 input!3770))))))

(assert (=> d!837153 (= lt!1023476 (ite ((_ is Empty!10514) (c!474171 input!3770)) 0 (ite ((_ is Leaf!16207) (c!474171 input!3770)) (csize!21259 (c!474171 input!3770)) (csize!21258 (c!474171 input!3770)))))))

(assert (=> d!837153 (= (size!26410 (c!474171 input!3770)) lt!1023476)))

(declare-fun bs!524406 () Bool)

(assert (= bs!524406 d!837153))

(assert (=> bs!524406 m!3310831))

(assert (=> bs!524406 m!3310831))

(assert (=> bs!524406 m!3311213))

(assert (=> d!836951 d!837153))

(declare-fun d!837155 () Bool)

(assert (=> d!837155 (= (head!6455 lt!1023328) (h!40083 lt!1023328))))

(assert (=> b!2909423 d!837155))

(declare-fun d!837157 () Bool)

(assert (=> d!837157 (= (isEmpty!18913 lt!1023332) ((_ is Nil!34663) lt!1023332))))

(assert (=> d!836987 d!837157))

(assert (=> b!2909422 d!837017))

(declare-fun d!837159 () Bool)

(declare-fun lt!1023477 () Int)

(assert (=> d!837159 (>= lt!1023477 0)))

(declare-fun e!1836705 () Int)

(assert (=> d!837159 (= lt!1023477 e!1836705)))

(declare-fun c!474355 () Bool)

(assert (=> d!837159 (= c!474355 ((_ is Nil!34663) lt!1023367))))

(assert (=> d!837159 (= (size!26409 lt!1023367) lt!1023477)))

(declare-fun b!2909811 () Bool)

(assert (=> b!2909811 (= e!1836705 0)))

(declare-fun b!2909812 () Bool)

(assert (=> b!2909812 (= e!1836705 (+ 1 (size!26409 (t!233830 lt!1023367))))))

(assert (= (and d!837159 c!474355) b!2909811))

(assert (= (and d!837159 (not c!474355)) b!2909812))

(declare-fun m!3311259 () Bool)

(assert (=> b!2909812 m!3311259))

(assert (=> b!2909409 d!837159))

(assert (=> b!2909253 d!836957))

(assert (=> d!836959 d!836951))

(assert (=> bm!189918 d!837017))

(assert (=> b!2909435 d!837017))

(declare-fun bs!524407 () Bool)

(declare-fun d!837161 () Bool)

(assert (= bs!524407 (and d!837161 d!836913)))

(declare-fun lambda!107979 () Int)

(assert (=> bs!524407 (= lambda!107979 lambda!107940)))

(assert (=> d!837161 (= (inv!46818 setElem!25891) (forall!7127 (exprs!3259 setElem!25891) lambda!107979))))

(declare-fun bs!524408 () Bool)

(assert (= bs!524408 d!837161))

(declare-fun m!3311261 () Bool)

(assert (=> bs!524408 m!3311261))

(assert (=> setNonEmpty!25891 d!837161))

(declare-fun b!2909813 () Bool)

(declare-fun e!1836706 () List!34787)

(assert (=> b!2909813 (= e!1836706 (t!233830 lt!1023328))))

(declare-fun b!2909814 () Bool)

(declare-fun e!1836708 () Int)

(assert (=> b!2909814 (= e!1836708 0)))

(declare-fun b!2909815 () Bool)

(declare-fun e!1836710 () List!34787)

(assert (=> b!2909815 (= e!1836710 Nil!34663)))

(declare-fun b!2909816 () Bool)

(declare-fun call!189952 () Int)

(assert (=> b!2909816 (= e!1836708 (- call!189952 (- i!1878 1)))))

(declare-fun b!2909817 () Bool)

(declare-fun e!1836707 () Int)

(assert (=> b!2909817 (= e!1836707 call!189952)))

(declare-fun b!2909818 () Bool)

(assert (=> b!2909818 (= e!1836706 (drop!1824 (t!233830 (t!233830 lt!1023328)) (- (- i!1878 1) 1)))))

(declare-fun b!2909819 () Bool)

(assert (=> b!2909819 (= e!1836707 e!1836708)))

(declare-fun c!474357 () Bool)

(assert (=> b!2909819 (= c!474357 (>= (- i!1878 1) call!189952))))

(declare-fun b!2909820 () Bool)

(assert (=> b!2909820 (= e!1836710 e!1836706)))

(declare-fun c!474358 () Bool)

(assert (=> b!2909820 (= c!474358 (<= (- i!1878 1) 0))))

(declare-fun b!2909821 () Bool)

(declare-fun e!1836709 () Bool)

(declare-fun lt!1023478 () List!34787)

(assert (=> b!2909821 (= e!1836709 (= (size!26409 lt!1023478) e!1836707))))

(declare-fun c!474359 () Bool)

(assert (=> b!2909821 (= c!474359 (<= (- i!1878 1) 0))))

(declare-fun d!837163 () Bool)

(assert (=> d!837163 e!1836709))

(declare-fun res!1201338 () Bool)

(assert (=> d!837163 (=> (not res!1201338) (not e!1836709))))

(assert (=> d!837163 (= res!1201338 (= ((_ map implies) (content!4740 lt!1023478) (content!4740 (t!233830 lt!1023328))) ((as const (InoxSet C!18060)) true)))))

(assert (=> d!837163 (= lt!1023478 e!1836710)))

(declare-fun c!474356 () Bool)

(assert (=> d!837163 (= c!474356 ((_ is Nil!34663) (t!233830 lt!1023328)))))

(assert (=> d!837163 (= (drop!1824 (t!233830 lt!1023328) (- i!1878 1)) lt!1023478)))

(declare-fun bm!189947 () Bool)

(assert (=> bm!189947 (= call!189952 (size!26409 (t!233830 lt!1023328)))))

(assert (= (and d!837163 c!474356) b!2909815))

(assert (= (and d!837163 (not c!474356)) b!2909820))

(assert (= (and b!2909820 c!474358) b!2909813))

(assert (= (and b!2909820 (not c!474358)) b!2909818))

(assert (= (and d!837163 res!1201338) b!2909821))

(assert (= (and b!2909821 c!474359) b!2909817))

(assert (= (and b!2909821 (not c!474359)) b!2909819))

(assert (= (and b!2909819 c!474357) b!2909814))

(assert (= (and b!2909819 (not c!474357)) b!2909816))

(assert (= (or b!2909817 b!2909819 b!2909816) bm!189947))

(declare-fun m!3311263 () Bool)

(assert (=> b!2909818 m!3311263))

(declare-fun m!3311265 () Bool)

(assert (=> b!2909821 m!3311265))

(declare-fun m!3311267 () Bool)

(assert (=> d!837163 m!3311267))

(assert (=> d!837163 m!3311025))

(assert (=> bm!189947 m!3310973))

(assert (=> b!2909394 d!837163))

(assert (=> b!2909412 d!837017))

(declare-fun d!837165 () Bool)

(declare-fun lt!1023479 () C!18060)

(assert (=> d!837165 (contains!6129 (tail!4680 lt!1023328) lt!1023479)))

(declare-fun e!1836711 () C!18060)

(assert (=> d!837165 (= lt!1023479 e!1836711)))

(declare-fun c!474360 () Bool)

(assert (=> d!837165 (= c!474360 (= (- i!1878 1) 0))))

(declare-fun e!1836712 () Bool)

(assert (=> d!837165 e!1836712))

(declare-fun res!1201339 () Bool)

(assert (=> d!837165 (=> (not res!1201339) (not e!1836712))))

(assert (=> d!837165 (= res!1201339 (<= 0 (- i!1878 1)))))

(assert (=> d!837165 (= (apply!7900 (tail!4680 lt!1023328) (- i!1878 1)) lt!1023479)))

(declare-fun b!2909822 () Bool)

(assert (=> b!2909822 (= e!1836712 (< (- i!1878 1) (size!26409 (tail!4680 lt!1023328))))))

(declare-fun b!2909823 () Bool)

(assert (=> b!2909823 (= e!1836711 (head!6455 (tail!4680 lt!1023328)))))

(declare-fun b!2909824 () Bool)

(assert (=> b!2909824 (= e!1836711 (apply!7900 (tail!4680 (tail!4680 lt!1023328)) (- (- i!1878 1) 1)))))

(assert (= (and d!837165 res!1201339) b!2909822))

(assert (= (and d!837165 c!474360) b!2909823))

(assert (= (and d!837165 (not c!474360)) b!2909824))

(assert (=> d!837165 m!3310867))

(declare-fun m!3311269 () Bool)

(assert (=> d!837165 m!3311269))

(assert (=> b!2909822 m!3310867))

(declare-fun m!3311271 () Bool)

(assert (=> b!2909822 m!3311271))

(assert (=> b!2909823 m!3310867))

(declare-fun m!3311273 () Bool)

(assert (=> b!2909823 m!3311273))

(assert (=> b!2909824 m!3310867))

(declare-fun m!3311275 () Bool)

(assert (=> b!2909824 m!3311275))

(assert (=> b!2909824 m!3311275))

(declare-fun m!3311277 () Bool)

(assert (=> b!2909824 m!3311277))

(assert (=> b!2909424 d!837165))

(declare-fun d!837167 () Bool)

(assert (=> d!837167 (= (tail!4680 lt!1023328) (t!233830 lt!1023328))))

(assert (=> b!2909424 d!837167))

(declare-fun b!2909829 () Bool)

(declare-fun e!1836715 () Bool)

(declare-fun tp_is_empty!15445 () Bool)

(declare-fun tp!934942 () Bool)

(assert (=> b!2909829 (= e!1836715 (and tp_is_empty!15445 tp!934942))))

(assert (=> b!2909456 (= tp!934908 e!1836715)))

(assert (= (and b!2909456 ((_ is Cons!34663) (innerList!10574 (xs!13632 (c!474171 input!3770))))) b!2909829))

(declare-fun tp!934945 () Bool)

(declare-fun b!2909830 () Bool)

(declare-fun tp!934943 () Bool)

(declare-fun e!1836717 () Bool)

(assert (=> b!2909830 (= e!1836717 (and (inv!46816 (left!26034 (left!26034 (c!474171 input!3770)))) tp!934945 (inv!46816 (right!26364 (left!26034 (c!474171 input!3770)))) tp!934943))))

(declare-fun b!2909832 () Bool)

(declare-fun e!1836716 () Bool)

(declare-fun tp!934944 () Bool)

(assert (=> b!2909832 (= e!1836716 tp!934944)))

(declare-fun b!2909831 () Bool)

(assert (=> b!2909831 (= e!1836717 (and (inv!46824 (xs!13632 (left!26034 (c!474171 input!3770)))) e!1836716))))

(assert (=> b!2909454 (= tp!934909 (and (inv!46816 (left!26034 (c!474171 input!3770))) e!1836717))))

(assert (= (and b!2909454 ((_ is Node!10514) (left!26034 (c!474171 input!3770)))) b!2909830))

(assert (= b!2909831 b!2909832))

(assert (= (and b!2909454 ((_ is Leaf!16207) (left!26034 (c!474171 input!3770)))) b!2909831))

(declare-fun m!3311279 () Bool)

(assert (=> b!2909830 m!3311279))

(declare-fun m!3311281 () Bool)

(assert (=> b!2909830 m!3311281))

(declare-fun m!3311283 () Bool)

(assert (=> b!2909831 m!3311283))

(assert (=> b!2909454 m!3310893))

(declare-fun b!2909833 () Bool)

(declare-fun tp!934948 () Bool)

(declare-fun e!1836719 () Bool)

(declare-fun tp!934946 () Bool)

(assert (=> b!2909833 (= e!1836719 (and (inv!46816 (left!26034 (right!26364 (c!474171 input!3770)))) tp!934948 (inv!46816 (right!26364 (right!26364 (c!474171 input!3770)))) tp!934946))))

(declare-fun b!2909835 () Bool)

(declare-fun e!1836718 () Bool)

(declare-fun tp!934947 () Bool)

(assert (=> b!2909835 (= e!1836718 tp!934947)))

(declare-fun b!2909834 () Bool)

(assert (=> b!2909834 (= e!1836719 (and (inv!46824 (xs!13632 (right!26364 (c!474171 input!3770)))) e!1836718))))

(assert (=> b!2909454 (= tp!934907 (and (inv!46816 (right!26364 (c!474171 input!3770))) e!1836719))))

(assert (= (and b!2909454 ((_ is Node!10514) (right!26364 (c!474171 input!3770)))) b!2909833))

(assert (= b!2909834 b!2909835))

(assert (= (and b!2909454 ((_ is Leaf!16207) (right!26364 (c!474171 input!3770)))) b!2909834))

(declare-fun m!3311285 () Bool)

(assert (=> b!2909833 m!3311285))

(declare-fun m!3311287 () Bool)

(assert (=> b!2909833 m!3311287))

(declare-fun m!3311289 () Bool)

(assert (=> b!2909834 m!3311289))

(assert (=> b!2909454 m!3310895))

(declare-fun b!2909836 () Bool)

(declare-fun e!1836720 () Bool)

(declare-fun tp!934949 () Bool)

(declare-fun tp!934950 () Bool)

(assert (=> b!2909836 (= e!1836720 (and tp!934949 tp!934950))))

(assert (=> b!2909440 (= tp!934894 e!1836720)))

(assert (= (and b!2909440 ((_ is Cons!34664) (exprs!3259 setElem!25891))) b!2909836))

(declare-fun condSetEmpty!25893 () Bool)

(assert (=> setNonEmpty!25891 (= condSetEmpty!25893 (= setRest!25891 ((as const (Array Context!5518 Bool)) false)))))

(declare-fun setRes!25893 () Bool)

(assert (=> setNonEmpty!25891 (= tp!934893 setRes!25893)))

(declare-fun setIsEmpty!25893 () Bool)

(assert (=> setIsEmpty!25893 setRes!25893))

(declare-fun e!1836721 () Bool)

(declare-fun tp!934951 () Bool)

(declare-fun setNonEmpty!25893 () Bool)

(declare-fun setElem!25893 () Context!5518)

(assert (=> setNonEmpty!25893 (= setRes!25893 (and tp!934951 (inv!46818 setElem!25893) e!1836721))))

(declare-fun setRest!25893 () (InoxSet Context!5518))

(assert (=> setNonEmpty!25893 (= setRest!25891 ((_ map or) (store ((as const (Array Context!5518 Bool)) false) setElem!25893 true) setRest!25893))))

(declare-fun b!2909837 () Bool)

(declare-fun tp!934952 () Bool)

(assert (=> b!2909837 (= e!1836721 tp!934952)))

(assert (= (and setNonEmpty!25891 condSetEmpty!25893) setIsEmpty!25893))

(assert (= (and setNonEmpty!25891 (not condSetEmpty!25893)) setNonEmpty!25893))

(assert (= setNonEmpty!25893 b!2909837))

(declare-fun m!3311291 () Bool)

(assert (=> setNonEmpty!25893 m!3311291))

(declare-fun b!2909848 () Bool)

(declare-fun e!1836724 () Bool)

(assert (=> b!2909848 (= e!1836724 tp_is_empty!15445)))

(declare-fun b!2909850 () Bool)

(declare-fun tp!934967 () Bool)

(assert (=> b!2909850 (= e!1836724 tp!934967)))

(declare-fun b!2909851 () Bool)

(declare-fun tp!934966 () Bool)

(declare-fun tp!934965 () Bool)

(assert (=> b!2909851 (= e!1836724 (and tp!934966 tp!934965))))

(assert (=> b!2909445 (= tp!934899 e!1836724)))

(declare-fun b!2909849 () Bool)

(declare-fun tp!934963 () Bool)

(declare-fun tp!934964 () Bool)

(assert (=> b!2909849 (= e!1836724 (and tp!934963 tp!934964))))

(assert (= (and b!2909445 ((_ is ElementMatch!8939) (h!40084 (exprs!3259 setElem!25885)))) b!2909848))

(assert (= (and b!2909445 ((_ is Concat!14260) (h!40084 (exprs!3259 setElem!25885)))) b!2909849))

(assert (= (and b!2909445 ((_ is Star!8939) (h!40084 (exprs!3259 setElem!25885)))) b!2909850))

(assert (= (and b!2909445 ((_ is Union!8939) (h!40084 (exprs!3259 setElem!25885)))) b!2909851))

(declare-fun b!2909852 () Bool)

(declare-fun e!1836725 () Bool)

(declare-fun tp!934968 () Bool)

(declare-fun tp!934969 () Bool)

(assert (=> b!2909852 (= e!1836725 (and tp!934968 tp!934969))))

(assert (=> b!2909445 (= tp!934900 e!1836725)))

(assert (= (and b!2909445 ((_ is Cons!34664) (t!233831 (exprs!3259 setElem!25885)))) b!2909852))

(declare-fun b_lambda!86365 () Bool)

(assert (= b_lambda!86363 (or d!836913 b_lambda!86365)))

(declare-fun bs!524409 () Bool)

(declare-fun d!837169 () Bool)

(assert (= bs!524409 (and d!837169 d!836913)))

(declare-fun validRegex!3679 (Regex!8939) Bool)

(assert (=> bs!524409 (= (dynLambda!14352 lambda!107940 (h!40084 (exprs!3259 setElem!25885))) (validRegex!3679 (h!40084 (exprs!3259 setElem!25885))))))

(declare-fun m!3311293 () Bool)

(assert (=> bs!524409 m!3311293))

(assert (=> b!2909807 d!837169))

(check-sat (not bm!189939) (not b!2909667) (not b!2909801) (not d!837101) (not b!2909818) (not d!837085) (not d!837117) (not d!837137) (not d!837153) (not d!837143) (not b!2909833) (not b!2909774) (not b!2909810) (not bm!189924) (not b!2909823) (not b!2909821) (not b!2909705) (not b!2909785) (not d!837057) (not b!2909639) (not d!837147) (not b!2909772) (not b!2909732) (not b!2909641) (not b!2909638) (not d!837163) (not b!2909746) (not b!2909755) (not b!2909668) (not b!2909837) (not d!837111) (not b_lambda!86365) (not b!2909747) (not b!2909454) (not b!2909836) (not b!2909616) (not b!2909791) (not b!2909703) (not bm!189946) (not b!2909565) (not b!2909852) (not d!837129) (not b!2909773) (not b!2909618) (not b!2909583) (not b!2909829) (not bs!524409) (not b!2909800) (not b!2909771) (not b!2909580) (not bm!189945) (not bm!189943) (not setNonEmpty!25893) (not d!837121) (not b!2909788) (not b!2909789) (not b!2909797) (not d!837035) (not d!837125) (not b!2909835) (not b!2909692) tp_is_empty!15445 (not b!2909782) (not b!2909730) (not b!2909776) (not d!837045) (not d!837083) (not d!837081) (not b!2909831) (not b!2909822) (not b!2909832) (not b!2909731) (not b!2909567) (not b!2909834) (not b!2909802) (not b!2909786) (not b!2909824) (not bm!189947) (not b!2909670) (not b!2909537) (not b!2909851) (not d!837139) (not b!2909704) (not d!837141) (not d!837025) (not d!837037) (not d!837113) (not b!2909749) (not b!2909568) (not b!2909850) (not b!2909640) (not b!2909733) (not b!2909808) (not b!2909758) (not d!837165) (not b!2909849) (not bm!189940) (not b!2909775) (not d!837079) (not bm!189944) (not b!2909812) (not d!837161) (not b!2909830))
(check-sat)
