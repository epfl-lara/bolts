; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!213642 () Bool)

(assert start!213642)

(declare-fun b!2200693 () Bool)

(declare-fun e!1406247 () Bool)

(assert (=> b!2200693 (= e!1406247 true)))

(declare-fun lt!823218 () Int)

(declare-fun from!1082 () Int)

(declare-fun knownSize!10 () Int)

(assert (=> b!2200693 (>= lt!823218 (+ from!1082 (- knownSize!10 1)))))

(declare-datatypes ((Unit!38755 0))(
  ( (Unit!38756) )
))
(declare-fun lt!823221 () Unit!38755)

(declare-datatypes ((C!12592 0))(
  ( (C!12593 (val!7282 Int)) )
))
(declare-datatypes ((List!25740 0))(
  ( (Nil!25656) (Cons!25656 (h!31057 C!12592) (t!198358 List!25740)) )
))
(declare-datatypes ((IArray!16723 0))(
  ( (IArray!16724 (innerList!8419 List!25740)) )
))
(declare-datatypes ((Conc!8359 0))(
  ( (Node!8359 (left!19705 Conc!8359) (right!20035 Conc!8359) (csize!16948 Int) (cheight!8570 Int)) (Leaf!12238 (xs!11301 IArray!16723) (csize!16949 Int)) (Empty!8359) )
))
(declare-datatypes ((BalanceConc!16480 0))(
  ( (BalanceConc!16481 (c!350934 Conc!8359)) )
))
(declare-fun totalInput!891 () BalanceConc!16480)

(declare-fun lt!823216 () Int)

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((Regex!6223 0))(
  ( (ElementMatch!6223 (c!350935 C!12592)) (Concat!10525 (regOne!12958 Regex!6223) (regTwo!12958 Regex!6223)) (EmptyExpr!6223) (Star!6223 (reg!6552 Regex!6223)) (EmptyLang!6223) (Union!6223 (regOne!12959 Regex!6223) (regTwo!12959 Regex!6223)) )
))
(declare-datatypes ((List!25741 0))(
  ( (Nil!25657) (Cons!25657 (h!31058 Regex!6223) (t!198359 List!25741)) )
))
(declare-datatypes ((Context!3586 0))(
  ( (Context!3587 (exprs!2293 List!25741)) )
))
(declare-fun lt!823217 () (InoxSet Context!3586))

(declare-fun lemmaKnownAcceptedStringThenFromSmallPAtLeastThatV3!6 ((InoxSet Context!3586) Int BalanceConc!16480 Int Int) Unit!38755)

(assert (=> b!2200693 (= lt!823221 (lemmaKnownAcceptedStringThenFromSmallPAtLeastThatV3!6 lt!823217 (+ 1 from!1082) totalInput!891 (- knownSize!10 1) lt!823216))))

(declare-fun b!2200694 () Bool)

(declare-fun e!1406250 () Bool)

(declare-fun e!1406248 () Bool)

(assert (=> b!2200694 (= e!1406250 e!1406248)))

(declare-fun res!946127 () Bool)

(assert (=> b!2200694 (=> (not res!946127) (not e!1406248))))

(declare-fun z!3888 () (InoxSet Context!3586))

(declare-fun lt!823224 () List!25740)

(declare-fun matchZipper!309 ((InoxSet Context!3586) List!25740) Bool)

(assert (=> b!2200694 (= res!946127 (matchZipper!309 z!3888 lt!823224))))

(declare-fun lt!823219 () List!25740)

(declare-fun take!401 (List!25740 Int) List!25740)

(assert (=> b!2200694 (= lt!823224 (take!401 lt!823219 knownSize!10))))

(declare-fun lt!823223 () List!25740)

(declare-fun drop!1411 (List!25740 Int) List!25740)

(assert (=> b!2200694 (= lt!823219 (drop!1411 lt!823223 from!1082))))

(declare-fun list!9881 (BalanceConc!16480) List!25740)

(assert (=> b!2200694 (= lt!823223 (list!9881 totalInput!891))))

(declare-fun b!2200695 () Bool)

(declare-fun e!1406251 () Int)

(assert (=> b!2200695 (= e!1406251 from!1082)))

(declare-fun b!2200696 () Bool)

(assert (=> b!2200696 (= e!1406248 (not e!1406247))))

(declare-fun res!946121 () Bool)

(assert (=> b!2200696 (=> res!946121 e!1406247)))

(declare-fun lt!823214 () List!25740)

(declare-fun tail!3168 (List!25740) List!25740)

(assert (=> b!2200696 (= res!946121 (not (= lt!823214 (tail!3168 lt!823224))))))

(declare-fun lt!823215 () C!12592)

(assert (=> b!2200696 (= (Cons!25656 lt!823215 lt!823214) (take!401 lt!823219 (+ 1 (- knownSize!10 1))))))

(assert (=> b!2200696 (= lt!823214 (take!401 (drop!1411 lt!823223 (+ 1 from!1082)) (- knownSize!10 1)))))

(declare-fun apply!6304 (List!25740 Int) C!12592)

(assert (=> b!2200696 (= lt!823215 (apply!6304 lt!823223 from!1082))))

(declare-fun lt!823220 () Unit!38755)

(declare-fun lemmaDropTakeAddOneLeft!30 (List!25740 Int Int) Unit!38755)

(assert (=> b!2200696 (= lt!823220 (lemmaDropTakeAddOneLeft!30 lt!823223 from!1082 (- knownSize!10 1)))))

(declare-fun lt!823222 () Int)

(declare-fun furthestNullablePosition!375 ((InoxSet Context!3586) Int BalanceConc!16480 Int Int) Int)

(assert (=> b!2200696 (= lt!823218 (furthestNullablePosition!375 lt!823217 (+ 1 from!1082) totalInput!891 lt!823222 lt!823216))))

(assert (=> b!2200696 (= lt!823216 e!1406251)))

(declare-fun c!350933 () Bool)

(declare-fun nullableZipper!503 ((InoxSet Context!3586)) Bool)

(assert (=> b!2200696 (= c!350933 (nullableZipper!503 lt!823217))))

(declare-fun derivationStepZipper!281 ((InoxSet Context!3586) C!12592) (InoxSet Context!3586))

(declare-fun apply!6305 (BalanceConc!16480 Int) C!12592)

(assert (=> b!2200696 (= lt!823217 (derivationStepZipper!281 z!3888 (apply!6305 totalInput!891 from!1082)))))

(declare-fun setNonEmpty!18972 () Bool)

(declare-fun setRes!18972 () Bool)

(declare-fun setElem!18972 () Context!3586)

(declare-fun e!1406249 () Bool)

(declare-fun tp!684822 () Bool)

(declare-fun inv!34462 (Context!3586) Bool)

(assert (=> setNonEmpty!18972 (= setRes!18972 (and tp!684822 (inv!34462 setElem!18972) e!1406249))))

(declare-fun setRest!18972 () (InoxSet Context!3586))

(assert (=> setNonEmpty!18972 (= z!3888 ((_ map or) (store ((as const (Array Context!3586 Bool)) false) setElem!18972 true) setRest!18972))))

(declare-fun b!2200698 () Bool)

(declare-fun res!946124 () Bool)

(assert (=> b!2200698 (=> res!946124 e!1406247)))

(assert (=> b!2200698 (= res!946124 (not (matchZipper!309 lt!823217 lt!823214)))))

(declare-fun b!2200699 () Bool)

(declare-fun res!946122 () Bool)

(assert (=> b!2200699 (=> (not res!946122) (not e!1406248))))

(declare-fun isEmpty!14633 (BalanceConc!16480) Bool)

(assert (=> b!2200699 (= res!946122 (not (isEmpty!14633 totalInput!891)))))

(declare-fun b!2200700 () Bool)

(declare-fun res!946123 () Bool)

(assert (=> b!2200700 (=> (not res!946123) (not e!1406248))))

(declare-fun lostCauseZipper!333 ((InoxSet Context!3586)) Bool)

(assert (=> b!2200700 (= res!946123 (not (lostCauseZipper!333 z!3888)))))

(declare-fun b!2200701 () Bool)

(declare-fun res!946118 () Bool)

(assert (=> b!2200701 (=> (not res!946118) (not e!1406248))))

(assert (=> b!2200701 (= res!946118 (and (not (= knownSize!10 0)) (> knownSize!10 0) (not (= from!1082 lt!823222))))))

(declare-fun b!2200702 () Bool)

(declare-fun res!946126 () Bool)

(assert (=> b!2200702 (=> (not res!946126) (not e!1406248))))

(declare-fun lastNullablePos!161 () Int)

(assert (=> b!2200702 (= res!946126 (and (>= lastNullablePos!161 (- 1)) (< lastNullablePos!161 from!1082)))))

(declare-fun res!946125 () Bool)

(declare-fun e!1406244 () Bool)

(assert (=> start!213642 (=> (not res!946125) (not e!1406244))))

(assert (=> start!213642 (= res!946125 (>= from!1082 0))))

(assert (=> start!213642 e!1406244))

(assert (=> start!213642 true))

(declare-fun e!1406246 () Bool)

(declare-fun inv!34463 (BalanceConc!16480) Bool)

(assert (=> start!213642 (and (inv!34463 totalInput!891) e!1406246)))

(declare-fun condSetEmpty!18972 () Bool)

(assert (=> start!213642 (= condSetEmpty!18972 (= z!3888 ((as const (Array Context!3586 Bool)) false)))))

(assert (=> start!213642 setRes!18972))

(declare-fun b!2200697 () Bool)

(declare-fun tp!684821 () Bool)

(assert (=> b!2200697 (= e!1406249 tp!684821)))

(declare-fun b!2200703 () Bool)

(declare-fun tp!684820 () Bool)

(declare-fun inv!34464 (Conc!8359) Bool)

(assert (=> b!2200703 (= e!1406246 (and (inv!34464 (c!350934 totalInput!891)) tp!684820))))

(declare-fun b!2200704 () Bool)

(declare-fun e!1406245 () Bool)

(assert (=> b!2200704 (= e!1406245 (= lastNullablePos!161 (- from!1082 1)))))

(declare-fun b!2200705 () Bool)

(declare-fun res!946119 () Bool)

(assert (=> b!2200705 (=> (not res!946119) (not e!1406248))))

(assert (=> b!2200705 (= res!946119 e!1406245)))

(declare-fun res!946117 () Bool)

(assert (=> b!2200705 (=> res!946117 e!1406245)))

(assert (=> b!2200705 (= res!946117 (not (nullableZipper!503 z!3888)))))

(declare-fun b!2200706 () Bool)

(assert (=> b!2200706 (= e!1406251 lastNullablePos!161)))

(declare-fun b!2200707 () Bool)

(assert (=> b!2200707 (= e!1406244 e!1406250)))

(declare-fun res!946120 () Bool)

(assert (=> b!2200707 (=> (not res!946120) (not e!1406250))))

(assert (=> b!2200707 (= res!946120 (and (<= from!1082 lt!823222) (>= knownSize!10 0) (<= knownSize!10 (- lt!823222 from!1082))))))

(declare-fun size!19990 (BalanceConc!16480) Int)

(assert (=> b!2200707 (= lt!823222 (size!19990 totalInput!891))))

(declare-fun setIsEmpty!18972 () Bool)

(assert (=> setIsEmpty!18972 setRes!18972))

(assert (= (and start!213642 res!946125) b!2200707))

(assert (= (and b!2200707 res!946120) b!2200694))

(assert (= (and b!2200694 res!946127) b!2200702))

(assert (= (and b!2200702 res!946126) b!2200705))

(assert (= (and b!2200705 (not res!946117)) b!2200704))

(assert (= (and b!2200705 res!946119) b!2200699))

(assert (= (and b!2200699 res!946122) b!2200701))

(assert (= (and b!2200701 res!946118) b!2200700))

(assert (= (and b!2200700 res!946123) b!2200696))

(assert (= (and b!2200696 c!350933) b!2200695))

(assert (= (and b!2200696 (not c!350933)) b!2200706))

(assert (= (and b!2200696 (not res!946121)) b!2200698))

(assert (= (and b!2200698 (not res!946124)) b!2200693))

(assert (= start!213642 b!2200703))

(assert (= (and start!213642 condSetEmpty!18972) setIsEmpty!18972))

(assert (= (and start!213642 (not condSetEmpty!18972)) setNonEmpty!18972))

(assert (= setNonEmpty!18972 b!2200697))

(declare-fun m!2643337 () Bool)

(assert (=> b!2200696 m!2643337))

(declare-fun m!2643339 () Bool)

(assert (=> b!2200696 m!2643339))

(declare-fun m!2643341 () Bool)

(assert (=> b!2200696 m!2643341))

(declare-fun m!2643343 () Bool)

(assert (=> b!2200696 m!2643343))

(declare-fun m!2643345 () Bool)

(assert (=> b!2200696 m!2643345))

(declare-fun m!2643347 () Bool)

(assert (=> b!2200696 m!2643347))

(declare-fun m!2643349 () Bool)

(assert (=> b!2200696 m!2643349))

(declare-fun m!2643351 () Bool)

(assert (=> b!2200696 m!2643351))

(assert (=> b!2200696 m!2643347))

(declare-fun m!2643353 () Bool)

(assert (=> b!2200696 m!2643353))

(assert (=> b!2200696 m!2643351))

(declare-fun m!2643355 () Bool)

(assert (=> b!2200696 m!2643355))

(declare-fun m!2643357 () Bool)

(assert (=> setNonEmpty!18972 m!2643357))

(declare-fun m!2643359 () Bool)

(assert (=> start!213642 m!2643359))

(declare-fun m!2643361 () Bool)

(assert (=> b!2200703 m!2643361))

(declare-fun m!2643363 () Bool)

(assert (=> b!2200694 m!2643363))

(declare-fun m!2643365 () Bool)

(assert (=> b!2200694 m!2643365))

(declare-fun m!2643367 () Bool)

(assert (=> b!2200694 m!2643367))

(declare-fun m!2643369 () Bool)

(assert (=> b!2200694 m!2643369))

(declare-fun m!2643371 () Bool)

(assert (=> b!2200707 m!2643371))

(declare-fun m!2643373 () Bool)

(assert (=> b!2200693 m!2643373))

(declare-fun m!2643375 () Bool)

(assert (=> b!2200699 m!2643375))

(declare-fun m!2643377 () Bool)

(assert (=> b!2200705 m!2643377))

(declare-fun m!2643379 () Bool)

(assert (=> b!2200698 m!2643379))

(declare-fun m!2643381 () Bool)

(assert (=> b!2200700 m!2643381))

(check-sat (not b!2200697) (not b!2200694) (not b!2200698) (not b!2200700) (not start!213642) (not b!2200693) (not setNonEmpty!18972) (not b!2200707) (not b!2200705) (not b!2200696) (not b!2200699) (not b!2200703))
(check-sat)
