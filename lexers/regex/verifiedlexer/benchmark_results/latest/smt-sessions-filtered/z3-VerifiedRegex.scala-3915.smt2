; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!214730 () Bool)

(assert start!214730)

(declare-fun b!2207508 () Bool)

(declare-fun e!1410194 () Bool)

(declare-datatypes ((C!12740 0))(
  ( (C!12741 (val!7356 Int)) )
))
(declare-datatypes ((List!25903 0))(
  ( (Nil!25819) (Cons!25819 (h!31220 C!12740) (t!198553 List!25903)) )
))
(declare-datatypes ((IArray!16871 0))(
  ( (IArray!16872 (innerList!8493 List!25903)) )
))
(declare-datatypes ((Conc!8433 0))(
  ( (Node!8433 (left!19844 Conc!8433) (right!20174 Conc!8433) (csize!17096 Int) (cheight!8644 Int)) (Leaf!12349 (xs!11375 IArray!16871) (csize!17097 Int)) (Empty!8433) )
))
(declare-datatypes ((BalanceConc!16628 0))(
  ( (BalanceConc!16629 (c!352628 Conc!8433)) )
))
(declare-fun totalInput!846 () BalanceConc!16628)

(declare-fun tp!686318 () Bool)

(declare-fun inv!34864 (Conc!8433) Bool)

(assert (=> b!2207508 (= e!1410194 (and (inv!34864 (c!352628 totalInput!846)) tp!686318))))

(declare-fun b!2207509 () Bool)

(declare-fun e!1410192 () Bool)

(declare-fun tp!686315 () Bool)

(assert (=> b!2207509 (= e!1410192 tp!686315)))

(declare-fun lt!825596 () Int)

(declare-fun lt!825595 () Int)

(declare-fun lt!825597 () Bool)

(declare-fun b!2207510 () Bool)

(declare-fun e!1410193 () Bool)

(declare-fun lt!825598 () Int)

(assert (=> b!2207510 (= e!1410193 (and (>= lt!825598 0) (<= lt!825598 lt!825596) (>= lt!825595 (- 1)) (< lt!825595 lt!825598) lt!825597 (not (= lt!825595 (- lt!825598 1)))))))

(assert (=> b!2207510 (= lt!825595 (ite lt!825597 (- lt!825598 1) (- 1)))))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((Regex!6297 0))(
  ( (ElementMatch!6297 (c!352629 C!12740)) (Concat!10599 (regOne!13106 Regex!6297) (regTwo!13106 Regex!6297)) (EmptyExpr!6297) (Star!6297 (reg!6626 Regex!6297)) (EmptyLang!6297) (Union!6297 (regOne!13107 Regex!6297) (regTwo!13107 Regex!6297)) )
))
(declare-datatypes ((List!25904 0))(
  ( (Nil!25820) (Cons!25820 (h!31221 Regex!6297) (t!198554 List!25904)) )
))
(declare-datatypes ((Context!3734 0))(
  ( (Context!3735 (exprs!2367 List!25904)) )
))
(declare-fun z!3830 () (InoxSet Context!3734))

(declare-fun nullableZipper!577 ((InoxSet Context!3734)) Bool)

(assert (=> b!2207510 (= lt!825597 (nullableZipper!577 z!3830))))

(declare-fun input!5506 () BalanceConc!16628)

(declare-fun size!20111 (BalanceConc!16628) Int)

(assert (=> b!2207510 (= lt!825598 (- lt!825596 (size!20111 input!5506)))))

(assert (=> b!2207510 (= lt!825596 (size!20111 totalInput!846))))

(declare-fun tp!686317 () Bool)

(declare-fun setNonEmpty!19280 () Bool)

(declare-fun setElem!19280 () Context!3734)

(declare-fun setRes!19280 () Bool)

(declare-fun inv!34865 (Context!3734) Bool)

(assert (=> setNonEmpty!19280 (= setRes!19280 (and tp!686317 (inv!34865 setElem!19280) e!1410192))))

(declare-fun setRest!19280 () (InoxSet Context!3734))

(assert (=> setNonEmpty!19280 (= z!3830 ((_ map or) (store ((as const (Array Context!3734 Bool)) false) setElem!19280 true) setRest!19280))))

(declare-fun setIsEmpty!19280 () Bool)

(assert (=> setIsEmpty!19280 setRes!19280))

(declare-fun res!948925 () Bool)

(assert (=> start!214730 (=> (not res!948925) (not e!1410193))))

(declare-fun isSuffix!734 (List!25903 List!25903) Bool)

(declare-fun list!9984 (BalanceConc!16628) List!25903)

(assert (=> start!214730 (= res!948925 (isSuffix!734 (list!9984 input!5506) (list!9984 totalInput!846)))))

(assert (=> start!214730 e!1410193))

(declare-fun e!1410195 () Bool)

(declare-fun inv!34866 (BalanceConc!16628) Bool)

(assert (=> start!214730 (and (inv!34866 input!5506) e!1410195)))

(assert (=> start!214730 (and (inv!34866 totalInput!846) e!1410194)))

(declare-fun condSetEmpty!19280 () Bool)

(assert (=> start!214730 (= condSetEmpty!19280 (= z!3830 ((as const (Array Context!3734 Bool)) false)))))

(assert (=> start!214730 setRes!19280))

(declare-fun b!2207511 () Bool)

(declare-fun tp!686316 () Bool)

(assert (=> b!2207511 (= e!1410195 (and (inv!34864 (c!352628 input!5506)) tp!686316))))

(assert (= (and start!214730 res!948925) b!2207510))

(assert (= start!214730 b!2207511))

(assert (= start!214730 b!2207508))

(assert (= (and start!214730 condSetEmpty!19280) setIsEmpty!19280))

(assert (= (and start!214730 (not condSetEmpty!19280)) setNonEmpty!19280))

(assert (= setNonEmpty!19280 b!2207509))

(declare-fun m!2649181 () Bool)

(assert (=> b!2207508 m!2649181))

(declare-fun m!2649183 () Bool)

(assert (=> setNonEmpty!19280 m!2649183))

(declare-fun m!2649185 () Bool)

(assert (=> b!2207511 m!2649185))

(declare-fun m!2649187 () Bool)

(assert (=> start!214730 m!2649187))

(declare-fun m!2649189 () Bool)

(assert (=> start!214730 m!2649189))

(declare-fun m!2649191 () Bool)

(assert (=> start!214730 m!2649191))

(declare-fun m!2649193 () Bool)

(assert (=> start!214730 m!2649193))

(assert (=> start!214730 m!2649187))

(assert (=> start!214730 m!2649189))

(declare-fun m!2649195 () Bool)

(assert (=> start!214730 m!2649195))

(declare-fun m!2649197 () Bool)

(assert (=> b!2207510 m!2649197))

(declare-fun m!2649199 () Bool)

(assert (=> b!2207510 m!2649199))

(declare-fun m!2649201 () Bool)

(assert (=> b!2207510 m!2649201))

(check-sat (not b!2207511) (not b!2207510) (not setNonEmpty!19280) (not start!214730) (not b!2207508) (not b!2207509))
(check-sat)
