; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!283226 () Bool)

(assert start!283226)

(declare-fun e!1836302 () Bool)

(declare-fun tp!934811 () Bool)

(declare-fun setRes!25867 () Bool)

(declare-datatypes ((C!18048 0))(
  ( (C!18049 (val!11058 Int)) )
))
(declare-datatypes ((Regex!8933 0))(
  ( (ElementMatch!8933 (c!474159 C!18048)) (Concat!14254 (regOne!18378 Regex!8933) (regTwo!18378 Regex!8933)) (EmptyExpr!8933) (Star!8933 (reg!9262 Regex!8933)) (EmptyLang!8933) (Union!8933 (regOne!18379 Regex!8933) (regTwo!18379 Regex!8933)) )
))
(declare-datatypes ((List!34775 0))(
  ( (Nil!34651) (Cons!34651 (h!40071 Regex!8933) (t!233818 List!34775)) )
))
(declare-datatypes ((Context!5506 0))(
  ( (Context!5507 (exprs!3253 List!34775)) )
))
(declare-fun setElem!25867 () Context!5506)

(declare-fun setNonEmpty!25867 () Bool)

(declare-fun inv!46789 (Context!5506) Bool)

(assert (=> setNonEmpty!25867 (= setRes!25867 (and tp!934811 (inv!46789 setElem!25867) e!1836302))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun z!644 () (InoxSet Context!5506))

(declare-fun setRest!25867 () (InoxSet Context!5506))

(assert (=> setNonEmpty!25867 (= z!644 ((_ map or) (store ((as const (Array Context!5506 Bool)) false) setElem!25867 true) setRest!25867))))

(declare-fun res!1201137 () Bool)

(declare-fun e!1836301 () Bool)

(assert (=> start!283226 (=> (not res!1201137) (not e!1836301))))

(declare-fun i!1878 () Int)

(assert (=> start!283226 (= res!1201137 (>= i!1878 0))))

(assert (=> start!283226 e!1836301))

(assert (=> start!283226 true))

(declare-datatypes ((List!34776 0))(
  ( (Nil!34652) (Cons!34652 (h!40072 C!18048) (t!233819 List!34776)) )
))
(declare-datatypes ((IArray!21021 0))(
  ( (IArray!21022 (innerList!10568 List!34776)) )
))
(declare-datatypes ((Conc!10508 0))(
  ( (Node!10508 (left!26025 Conc!10508) (right!26355 Conc!10508) (csize!21246 Int) (cheight!10719 Int)) (Leaf!16198 (xs!13626 IArray!21021) (csize!21247 Int)) (Empty!10508) )
))
(declare-datatypes ((BalanceConc!20654 0))(
  ( (BalanceConc!20655 (c!474160 Conc!10508)) )
))
(declare-fun input!3770 () BalanceConc!20654)

(declare-fun e!1836300 () Bool)

(declare-fun inv!46790 (BalanceConc!20654) Bool)

(assert (=> start!283226 (and (inv!46790 input!3770) e!1836300)))

(declare-fun condSetEmpty!25867 () Bool)

(assert (=> start!283226 (= condSetEmpty!25867 (= z!644 ((as const (Array Context!5506 Bool)) false)))))

(assert (=> start!283226 setRes!25867))

(declare-fun b!2909173 () Bool)

(declare-fun e!1836303 () Bool)

(assert (=> b!2909173 (= e!1836301 e!1836303)))

(declare-fun res!1201136 () Bool)

(assert (=> b!2909173 (=> (not res!1201136) (not e!1836303))))

(declare-fun lt!1023155 () Int)

(assert (=> b!2909173 (= res!1201136 (and (<= i!1878 lt!1023155) (not (= i!1878 lt!1023155))))))

(declare-fun size!26400 (BalanceConc!20654) Int)

(assert (=> b!2909173 (= lt!1023155 (size!26400 input!3770))))

(declare-fun b!2909174 () Bool)

(assert (=> b!2909174 (= e!1836303 (not (and (<= 0 i!1878) (< i!1878 lt!1023155))))))

(declare-fun lt!1023161 () List!34776)

(declare-fun lt!1023159 () List!34776)

(declare-fun tail!4674 (List!34776) List!34776)

(declare-fun drop!1818 (List!34776 Int) List!34776)

(assert (=> b!2909174 (= (tail!4674 lt!1023161) (drop!1818 lt!1023159 (+ 1 i!1878)))))

(declare-datatypes ((Unit!48197 0))(
  ( (Unit!48198) )
))
(declare-fun lt!1023156 () Unit!48197)

(declare-fun lemmaDropTail!883 (List!34776 Int) Unit!48197)

(assert (=> b!2909174 (= lt!1023156 (lemmaDropTail!883 lt!1023159 i!1878))))

(declare-fun head!6449 (List!34776) C!18048)

(declare-fun apply!7888 (List!34776 Int) C!18048)

(assert (=> b!2909174 (= (head!6449 lt!1023161) (apply!7888 lt!1023159 i!1878))))

(assert (=> b!2909174 (= lt!1023161 (drop!1818 lt!1023159 i!1878))))

(declare-fun lt!1023157 () Unit!48197)

(declare-fun lemmaDropApply!997 (List!34776 Int) Unit!48197)

(assert (=> b!2909174 (= lt!1023157 (lemmaDropApply!997 lt!1023159 i!1878))))

(declare-fun list!12600 (BalanceConc!20654) List!34776)

(assert (=> b!2909174 (= lt!1023159 (list!12600 input!3770))))

(declare-fun lt!1023160 () (InoxSet Context!5506))

(declare-fun prefixMatchZipper!369 ((InoxSet Context!5506) List!34776) Bool)

(declare-fun dropList!1034 (BalanceConc!20654 Int) List!34776)

(declare-fun prefixMatchZipperSequence!773 ((InoxSet Context!5506) BalanceConc!20654 Int) Bool)

(assert (=> b!2909174 (= (prefixMatchZipper!369 lt!1023160 (dropList!1034 input!3770 (+ 1 i!1878))) (prefixMatchZipperSequence!773 lt!1023160 input!3770 (+ 1 i!1878)))))

(declare-fun lt!1023158 () Unit!48197)

(declare-fun lemmaprefixMatchZipperSequenceEquivalent!249 ((InoxSet Context!5506) BalanceConc!20654 Int) Unit!48197)

(assert (=> b!2909174 (= lt!1023158 (lemmaprefixMatchZipperSequenceEquivalent!249 lt!1023160 input!3770 (+ 1 i!1878)))))

(declare-fun derivationStepZipper!513 ((InoxSet Context!5506) C!18048) (InoxSet Context!5506))

(declare-fun apply!7889 (BalanceConc!20654 Int) C!18048)

(assert (=> b!2909174 (= lt!1023160 (derivationStepZipper!513 z!644 (apply!7889 input!3770 i!1878)))))

(declare-fun b!2909175 () Bool)

(declare-fun tp!934813 () Bool)

(assert (=> b!2909175 (= e!1836302 tp!934813)))

(declare-fun setIsEmpty!25867 () Bool)

(assert (=> setIsEmpty!25867 setRes!25867))

(declare-fun b!2909176 () Bool)

(declare-fun tp!934812 () Bool)

(declare-fun inv!46791 (Conc!10508) Bool)

(assert (=> b!2909176 (= e!1836300 (and (inv!46791 (c!474160 input!3770)) tp!934812))))

(assert (= (and start!283226 res!1201137) b!2909173))

(assert (= (and b!2909173 res!1201136) b!2909174))

(assert (= start!283226 b!2909176))

(assert (= (and start!283226 condSetEmpty!25867) setIsEmpty!25867))

(assert (= (and start!283226 (not condSetEmpty!25867)) setNonEmpty!25867))

(assert (= setNonEmpty!25867 b!2909175))

(declare-fun m!3310443 () Bool)

(assert (=> b!2909173 m!3310443))

(declare-fun m!3310445 () Bool)

(assert (=> b!2909174 m!3310445))

(declare-fun m!3310447 () Bool)

(assert (=> b!2909174 m!3310447))

(declare-fun m!3310449 () Bool)

(assert (=> b!2909174 m!3310449))

(declare-fun m!3310451 () Bool)

(assert (=> b!2909174 m!3310451))

(declare-fun m!3310453 () Bool)

(assert (=> b!2909174 m!3310453))

(declare-fun m!3310455 () Bool)

(assert (=> b!2909174 m!3310455))

(declare-fun m!3310457 () Bool)

(assert (=> b!2909174 m!3310457))

(assert (=> b!2909174 m!3310455))

(declare-fun m!3310459 () Bool)

(assert (=> b!2909174 m!3310459))

(declare-fun m!3310461 () Bool)

(assert (=> b!2909174 m!3310461))

(declare-fun m!3310463 () Bool)

(assert (=> b!2909174 m!3310463))

(assert (=> b!2909174 m!3310451))

(declare-fun m!3310465 () Bool)

(assert (=> b!2909174 m!3310465))

(declare-fun m!3310467 () Bool)

(assert (=> b!2909174 m!3310467))

(declare-fun m!3310469 () Bool)

(assert (=> b!2909174 m!3310469))

(declare-fun m!3310471 () Bool)

(assert (=> b!2909174 m!3310471))

(declare-fun m!3310473 () Bool)

(assert (=> start!283226 m!3310473))

(declare-fun m!3310475 () Bool)

(assert (=> b!2909176 m!3310475))

(declare-fun m!3310477 () Bool)

(assert (=> setNonEmpty!25867 m!3310477))

(check-sat (not setNonEmpty!25867) (not b!2909173) (not start!283226) (not b!2909176) (not b!2909175) (not b!2909174))
(check-sat)
