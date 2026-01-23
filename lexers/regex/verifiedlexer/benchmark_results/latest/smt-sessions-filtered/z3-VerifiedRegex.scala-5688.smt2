; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!283222 () Bool)

(assert start!283222)

(declare-fun res!1201125 () Bool)

(declare-fun e!1836279 () Bool)

(assert (=> start!283222 (=> (not res!1201125) (not e!1836279))))

(declare-fun i!1878 () Int)

(assert (=> start!283222 (= res!1201125 (>= i!1878 0))))

(assert (=> start!283222 e!1836279))

(assert (=> start!283222 true))

(declare-datatypes ((C!18044 0))(
  ( (C!18045 (val!11056 Int)) )
))
(declare-datatypes ((List!34771 0))(
  ( (Nil!34647) (Cons!34647 (h!40067 C!18044) (t!233814 List!34771)) )
))
(declare-datatypes ((IArray!21017 0))(
  ( (IArray!21018 (innerList!10566 List!34771)) )
))
(declare-datatypes ((Conc!10506 0))(
  ( (Node!10506 (left!26022 Conc!10506) (right!26352 Conc!10506) (csize!21242 Int) (cheight!10717 Int)) (Leaf!16195 (xs!13624 IArray!21017) (csize!21243 Int)) (Empty!10506) )
))
(declare-datatypes ((BalanceConc!20650 0))(
  ( (BalanceConc!20651 (c!474155 Conc!10506)) )
))
(declare-fun input!3770 () BalanceConc!20650)

(declare-fun e!1836276 () Bool)

(declare-fun inv!46780 (BalanceConc!20650) Bool)

(assert (=> start!283222 (and (inv!46780 input!3770) e!1836276)))

(declare-fun condSetEmpty!25861 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((Regex!8931 0))(
  ( (ElementMatch!8931 (c!474156 C!18044)) (Concat!14252 (regOne!18374 Regex!8931) (regTwo!18374 Regex!8931)) (EmptyExpr!8931) (Star!8931 (reg!9260 Regex!8931)) (EmptyLang!8931) (Union!8931 (regOne!18375 Regex!8931) (regTwo!18375 Regex!8931)) )
))
(declare-datatypes ((List!34772 0))(
  ( (Nil!34648) (Cons!34648 (h!40068 Regex!8931) (t!233815 List!34772)) )
))
(declare-datatypes ((Context!5502 0))(
  ( (Context!5503 (exprs!3251 List!34772)) )
))
(declare-fun z!644 () (InoxSet Context!5502))

(assert (=> start!283222 (= condSetEmpty!25861 (= z!644 ((as const (Array Context!5502 Bool)) false)))))

(declare-fun setRes!25861 () Bool)

(assert (=> start!283222 setRes!25861))

(declare-fun tp!934794 () Bool)

(declare-fun e!1836277 () Bool)

(declare-fun setElem!25861 () Context!5502)

(declare-fun setNonEmpty!25861 () Bool)

(declare-fun inv!46781 (Context!5502) Bool)

(assert (=> setNonEmpty!25861 (= setRes!25861 (and tp!934794 (inv!46781 setElem!25861) e!1836277))))

(declare-fun setRest!25861 () (InoxSet Context!5502))

(assert (=> setNonEmpty!25861 (= z!644 ((_ map or) (store ((as const (Array Context!5502 Bool)) false) setElem!25861 true) setRest!25861))))

(declare-fun setIsEmpty!25861 () Bool)

(assert (=> setIsEmpty!25861 setRes!25861))

(declare-fun b!2909149 () Bool)

(declare-fun e!1836278 () Bool)

(assert (=> b!2909149 (= e!1836278 (not true))))

(declare-fun lt!1023119 () Int)

(declare-fun lt!1023117 () List!34771)

(declare-fun size!26397 (List!34771) Int)

(assert (=> b!2909149 (= lt!1023119 (size!26397 lt!1023117))))

(declare-fun head!6447 (List!34771) C!18044)

(declare-fun drop!1816 (List!34771 Int) List!34771)

(declare-fun apply!7884 (List!34771 Int) C!18044)

(assert (=> b!2909149 (= (head!6447 (drop!1816 lt!1023117 i!1878)) (apply!7884 lt!1023117 i!1878))))

(declare-datatypes ((Unit!48193 0))(
  ( (Unit!48194) )
))
(declare-fun lt!1023114 () Unit!48193)

(declare-fun lemmaDropApply!995 (List!34771 Int) Unit!48193)

(assert (=> b!2909149 (= lt!1023114 (lemmaDropApply!995 lt!1023117 i!1878))))

(declare-fun list!12598 (BalanceConc!20650) List!34771)

(assert (=> b!2909149 (= lt!1023117 (list!12598 input!3770))))

(declare-fun lt!1023118 () (InoxSet Context!5502))

(declare-fun prefixMatchZipper!367 ((InoxSet Context!5502) List!34771) Bool)

(declare-fun dropList!1032 (BalanceConc!20650 Int) List!34771)

(declare-fun prefixMatchZipperSequence!771 ((InoxSet Context!5502) BalanceConc!20650 Int) Bool)

(assert (=> b!2909149 (= (prefixMatchZipper!367 lt!1023118 (dropList!1032 input!3770 (+ 1 i!1878))) (prefixMatchZipperSequence!771 lt!1023118 input!3770 (+ 1 i!1878)))))

(declare-fun lt!1023115 () Unit!48193)

(declare-fun lemmaprefixMatchZipperSequenceEquivalent!247 ((InoxSet Context!5502) BalanceConc!20650 Int) Unit!48193)

(assert (=> b!2909149 (= lt!1023115 (lemmaprefixMatchZipperSequenceEquivalent!247 lt!1023118 input!3770 (+ 1 i!1878)))))

(declare-fun derivationStepZipper!511 ((InoxSet Context!5502) C!18044) (InoxSet Context!5502))

(declare-fun apply!7885 (BalanceConc!20650 Int) C!18044)

(assert (=> b!2909149 (= lt!1023118 (derivationStepZipper!511 z!644 (apply!7885 input!3770 i!1878)))))

(declare-fun b!2909150 () Bool)

(declare-fun tp!934793 () Bool)

(declare-fun inv!46782 (Conc!10506) Bool)

(assert (=> b!2909150 (= e!1836276 (and (inv!46782 (c!474155 input!3770)) tp!934793))))

(declare-fun b!2909151 () Bool)

(assert (=> b!2909151 (= e!1836279 e!1836278)))

(declare-fun res!1201124 () Bool)

(assert (=> b!2909151 (=> (not res!1201124) (not e!1836278))))

(declare-fun lt!1023116 () Int)

(assert (=> b!2909151 (= res!1201124 (and (<= i!1878 lt!1023116) (not (= i!1878 lt!1023116))))))

(declare-fun size!26398 (BalanceConc!20650) Int)

(assert (=> b!2909151 (= lt!1023116 (size!26398 input!3770))))

(declare-fun b!2909152 () Bool)

(declare-fun tp!934795 () Bool)

(assert (=> b!2909152 (= e!1836277 tp!934795)))

(assert (= (and start!283222 res!1201125) b!2909151))

(assert (= (and b!2909151 res!1201124) b!2909149))

(assert (= start!283222 b!2909150))

(assert (= (and start!283222 condSetEmpty!25861) setIsEmpty!25861))

(assert (= (and start!283222 (not condSetEmpty!25861)) setNonEmpty!25861))

(assert (= setNonEmpty!25861 b!2909152))

(declare-fun m!3310375 () Bool)

(assert (=> b!2909150 m!3310375))

(declare-fun m!3310377 () Bool)

(assert (=> setNonEmpty!25861 m!3310377))

(declare-fun m!3310379 () Bool)

(assert (=> start!283222 m!3310379))

(declare-fun m!3310381 () Bool)

(assert (=> b!2909149 m!3310381))

(declare-fun m!3310383 () Bool)

(assert (=> b!2909149 m!3310383))

(declare-fun m!3310385 () Bool)

(assert (=> b!2909149 m!3310385))

(declare-fun m!3310387 () Bool)

(assert (=> b!2909149 m!3310387))

(assert (=> b!2909149 m!3310381))

(declare-fun m!3310389 () Bool)

(assert (=> b!2909149 m!3310389))

(declare-fun m!3310391 () Bool)

(assert (=> b!2909149 m!3310391))

(declare-fun m!3310393 () Bool)

(assert (=> b!2909149 m!3310393))

(declare-fun m!3310395 () Bool)

(assert (=> b!2909149 m!3310395))

(declare-fun m!3310397 () Bool)

(assert (=> b!2909149 m!3310397))

(declare-fun m!3310399 () Bool)

(assert (=> b!2909149 m!3310399))

(assert (=> b!2909149 m!3310395))

(declare-fun m!3310401 () Bool)

(assert (=> b!2909149 m!3310401))

(assert (=> b!2909149 m!3310383))

(declare-fun m!3310403 () Bool)

(assert (=> b!2909149 m!3310403))

(declare-fun m!3310405 () Bool)

(assert (=> b!2909151 m!3310405))

(check-sat (not start!283222) (not b!2909151) (not setNonEmpty!25861) (not b!2909149) (not b!2909152) (not b!2909150))
(check-sat)
