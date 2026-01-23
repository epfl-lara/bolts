; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!283230 () Bool)

(assert start!283230)

(declare-fun b!2909197 () Bool)

(declare-fun e!1836327 () Bool)

(declare-fun e!1836326 () Bool)

(assert (=> b!2909197 (= e!1836327 e!1836326)))

(declare-fun res!1201148 () Bool)

(assert (=> b!2909197 (=> (not res!1201148) (not e!1836326))))

(declare-fun i!1878 () Int)

(declare-fun lt!1023204 () Int)

(assert (=> b!2909197 (= res!1201148 (and (<= i!1878 lt!1023204) (not (= i!1878 lt!1023204))))))

(declare-datatypes ((C!18052 0))(
  ( (C!18053 (val!11060 Int)) )
))
(declare-datatypes ((List!34779 0))(
  ( (Nil!34655) (Cons!34655 (h!40075 C!18052) (t!233822 List!34779)) )
))
(declare-datatypes ((IArray!21025 0))(
  ( (IArray!21026 (innerList!10570 List!34779)) )
))
(declare-datatypes ((Conc!10510 0))(
  ( (Node!10510 (left!26028 Conc!10510) (right!26358 Conc!10510) (csize!21250 Int) (cheight!10721 Int)) (Leaf!16201 (xs!13628 IArray!21025) (csize!21251 Int)) (Empty!10510) )
))
(declare-datatypes ((BalanceConc!20658 0))(
  ( (BalanceConc!20659 (c!474163 Conc!10510)) )
))
(declare-fun input!3770 () BalanceConc!20658)

(declare-fun size!26402 (BalanceConc!20658) Int)

(assert (=> b!2909197 (= lt!1023204 (size!26402 input!3770))))

(declare-fun setNonEmpty!25873 () Bool)

(declare-fun setRes!25873 () Bool)

(declare-fun tp!934829 () Bool)

(declare-fun e!1836324 () Bool)

(declare-datatypes ((Regex!8935 0))(
  ( (ElementMatch!8935 (c!474164 C!18052)) (Concat!14256 (regOne!18382 Regex!8935) (regTwo!18382 Regex!8935)) (EmptyExpr!8935) (Star!8935 (reg!9264 Regex!8935)) (EmptyLang!8935) (Union!8935 (regOne!18383 Regex!8935) (regTwo!18383 Regex!8935)) )
))
(declare-datatypes ((List!34780 0))(
  ( (Nil!34656) (Cons!34656 (h!40076 Regex!8935) (t!233823 List!34780)) )
))
(declare-datatypes ((Context!5510 0))(
  ( (Context!5511 (exprs!3255 List!34780)) )
))
(declare-fun setElem!25873 () Context!5510)

(declare-fun inv!46798 (Context!5510) Bool)

(assert (=> setNonEmpty!25873 (= setRes!25873 (and tp!934829 (inv!46798 setElem!25873) e!1836324))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun z!644 () (InoxSet Context!5510))

(declare-fun setRest!25873 () (InoxSet Context!5510))

(assert (=> setNonEmpty!25873 (= z!644 ((_ map or) (store ((as const (Array Context!5510 Bool)) false) setElem!25873 true) setRest!25873))))

(declare-fun b!2909198 () Bool)

(declare-fun tp!934830 () Bool)

(assert (=> b!2909198 (= e!1836324 tp!934830)))

(declare-fun setIsEmpty!25873 () Bool)

(assert (=> setIsEmpty!25873 setRes!25873))

(declare-fun b!2909199 () Bool)

(assert (=> b!2909199 (= e!1836326 (not true))))

(declare-fun lt!1023209 () List!34779)

(declare-fun dropList!1036 (BalanceConc!20658 Int) List!34779)

(assert (=> b!2909199 (= lt!1023209 (dropList!1036 input!3770 i!1878))))

(declare-fun lt!1023206 () List!34779)

(declare-fun lt!1023207 () List!34779)

(declare-fun tail!4676 (List!34779) List!34779)

(declare-fun drop!1820 (List!34779 Int) List!34779)

(assert (=> b!2909199 (= (tail!4676 lt!1023206) (drop!1820 lt!1023207 (+ 1 i!1878)))))

(declare-datatypes ((Unit!48201 0))(
  ( (Unit!48202) )
))
(declare-fun lt!1023205 () Unit!48201)

(declare-fun lemmaDropTail!885 (List!34779 Int) Unit!48201)

(assert (=> b!2909199 (= lt!1023205 (lemmaDropTail!885 lt!1023207 i!1878))))

(declare-fun head!6451 (List!34779) C!18052)

(declare-fun apply!7892 (List!34779 Int) C!18052)

(assert (=> b!2909199 (= (head!6451 lt!1023206) (apply!7892 lt!1023207 i!1878))))

(assert (=> b!2909199 (= lt!1023206 (drop!1820 lt!1023207 i!1878))))

(declare-fun lt!1023208 () Unit!48201)

(declare-fun lemmaDropApply!999 (List!34779 Int) Unit!48201)

(assert (=> b!2909199 (= lt!1023208 (lemmaDropApply!999 lt!1023207 i!1878))))

(declare-fun list!12602 (BalanceConc!20658) List!34779)

(assert (=> b!2909199 (= lt!1023207 (list!12602 input!3770))))

(declare-fun lt!1023202 () (InoxSet Context!5510))

(declare-fun prefixMatchZipper!371 ((InoxSet Context!5510) List!34779) Bool)

(declare-fun prefixMatchZipperSequence!775 ((InoxSet Context!5510) BalanceConc!20658 Int) Bool)

(assert (=> b!2909199 (= (prefixMatchZipper!371 lt!1023202 (dropList!1036 input!3770 (+ 1 i!1878))) (prefixMatchZipperSequence!775 lt!1023202 input!3770 (+ 1 i!1878)))))

(declare-fun lt!1023203 () Unit!48201)

(declare-fun lemmaprefixMatchZipperSequenceEquivalent!251 ((InoxSet Context!5510) BalanceConc!20658 Int) Unit!48201)

(assert (=> b!2909199 (= lt!1023203 (lemmaprefixMatchZipperSequenceEquivalent!251 lt!1023202 input!3770 (+ 1 i!1878)))))

(declare-fun derivationStepZipper!515 ((InoxSet Context!5510) C!18052) (InoxSet Context!5510))

(declare-fun apply!7893 (BalanceConc!20658 Int) C!18052)

(assert (=> b!2909199 (= lt!1023202 (derivationStepZipper!515 z!644 (apply!7893 input!3770 i!1878)))))

(declare-fun res!1201149 () Bool)

(assert (=> start!283230 (=> (not res!1201149) (not e!1836327))))

(assert (=> start!283230 (= res!1201149 (>= i!1878 0))))

(assert (=> start!283230 e!1836327))

(assert (=> start!283230 true))

(declare-fun e!1836325 () Bool)

(declare-fun inv!46799 (BalanceConc!20658) Bool)

(assert (=> start!283230 (and (inv!46799 input!3770) e!1836325)))

(declare-fun condSetEmpty!25873 () Bool)

(assert (=> start!283230 (= condSetEmpty!25873 (= z!644 ((as const (Array Context!5510 Bool)) false)))))

(assert (=> start!283230 setRes!25873))

(declare-fun b!2909200 () Bool)

(declare-fun tp!934831 () Bool)

(declare-fun inv!46800 (Conc!10510) Bool)

(assert (=> b!2909200 (= e!1836325 (and (inv!46800 (c!474163 input!3770)) tp!934831))))

(assert (= (and start!283230 res!1201149) b!2909197))

(assert (= (and b!2909197 res!1201148) b!2909199))

(assert (= start!283230 b!2909200))

(assert (= (and start!283230 condSetEmpty!25873) setIsEmpty!25873))

(assert (= (and start!283230 (not condSetEmpty!25873)) setNonEmpty!25873))

(assert (= setNonEmpty!25873 b!2909198))

(declare-fun m!3310517 () Bool)

(assert (=> start!283230 m!3310517))

(declare-fun m!3310519 () Bool)

(assert (=> b!2909199 m!3310519))

(declare-fun m!3310521 () Bool)

(assert (=> b!2909199 m!3310521))

(declare-fun m!3310523 () Bool)

(assert (=> b!2909199 m!3310523))

(declare-fun m!3310525 () Bool)

(assert (=> b!2909199 m!3310525))

(declare-fun m!3310527 () Bool)

(assert (=> b!2909199 m!3310527))

(declare-fun m!3310529 () Bool)

(assert (=> b!2909199 m!3310529))

(declare-fun m!3310531 () Bool)

(assert (=> b!2909199 m!3310531))

(declare-fun m!3310533 () Bool)

(assert (=> b!2909199 m!3310533))

(declare-fun m!3310535 () Bool)

(assert (=> b!2909199 m!3310535))

(declare-fun m!3310537 () Bool)

(assert (=> b!2909199 m!3310537))

(declare-fun m!3310539 () Bool)

(assert (=> b!2909199 m!3310539))

(assert (=> b!2909199 m!3310521))

(declare-fun m!3310541 () Bool)

(assert (=> b!2909199 m!3310541))

(declare-fun m!3310543 () Bool)

(assert (=> b!2909199 m!3310543))

(declare-fun m!3310545 () Bool)

(assert (=> b!2909199 m!3310545))

(assert (=> b!2909199 m!3310537))

(declare-fun m!3310547 () Bool)

(assert (=> b!2909199 m!3310547))

(declare-fun m!3310549 () Bool)

(assert (=> b!2909200 m!3310549))

(declare-fun m!3310551 () Bool)

(assert (=> b!2909197 m!3310551))

(declare-fun m!3310553 () Bool)

(assert (=> setNonEmpty!25873 m!3310553))

(check-sat (not start!283230) (not b!2909199) (not setNonEmpty!25873) (not b!2909200) (not b!2909198) (not b!2909197))
(check-sat)
