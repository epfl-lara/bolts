; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!297402 () Bool)

(assert start!297402)

(declare-fun b!3176106 () Bool)

(declare-fun res!1290536 () Bool)

(declare-fun e!1978273 () Bool)

(assert (=> b!3176106 (=> (not res!1290536) (not e!1978273))))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((C!19880 0))(
  ( (C!19881 (val!11976 Int)) )
))
(declare-datatypes ((Regex!9847 0))(
  ( (ElementMatch!9847 (c!533663 C!19880)) (Concat!15168 (regOne!20206 Regex!9847) (regTwo!20206 Regex!9847)) (EmptyExpr!9847) (Star!9847 (reg!10176 Regex!9847)) (EmptyLang!9847) (Union!9847 (regOne!20207 Regex!9847) (regTwo!20207 Regex!9847)) )
))
(declare-datatypes ((List!35720 0))(
  ( (Nil!35596) (Cons!35596 (h!41016 Regex!9847) (t!234811 List!35720)) )
))
(declare-datatypes ((Context!5570 0))(
  ( (Context!5571 (exprs!3285 List!35720)) )
))
(declare-fun z!3818 () (InoxSet Context!5570))

(declare-fun lostCauseZipper!633 ((InoxSet Context!5570)) Bool)

(assert (=> b!3176106 (= res!1290536 (not (lostCauseZipper!633 z!3818)))))

(declare-fun b!3176107 () Bool)

(declare-fun e!1978274 () Bool)

(declare-fun tp!1004498 () Bool)

(assert (=> b!3176107 (= e!1978274 tp!1004498)))

(declare-fun res!1290540 () Bool)

(assert (=> start!297402 (=> (not res!1290540) (not e!1978273))))

(declare-fun from!1034 () Int)

(declare-fun totalInputSize!287 () Int)

(assert (=> start!297402 (= res!1290540 (and (>= from!1034 0) (<= from!1034 totalInputSize!287)))))

(assert (=> start!297402 e!1978273))

(assert (=> start!297402 true))

(declare-fun condSetEmpty!25997 () Bool)

(assert (=> start!297402 (= condSetEmpty!25997 (= z!3818 ((as const (Array Context!5570 Bool)) false)))))

(declare-fun setRes!25997 () Bool)

(assert (=> start!297402 setRes!25997))

(declare-datatypes ((List!35721 0))(
  ( (Nil!35597) (Cons!35597 (h!41017 C!19880) (t!234812 List!35721)) )
))
(declare-datatypes ((IArray!21089 0))(
  ( (IArray!21090 (innerList!10602 List!35721)) )
))
(declare-datatypes ((Conc!10542 0))(
  ( (Node!10542 (left!27686 Conc!10542) (right!28016 Conc!10542) (csize!21314 Int) (cheight!10753 Int)) (Leaf!16691 (xs!13660 IArray!21089) (csize!21315 Int)) (Empty!10542) )
))
(declare-datatypes ((BalanceConc!20722 0))(
  ( (BalanceConc!20723 (c!533664 Conc!10542)) )
))
(declare-fun totalInput!842 () BalanceConc!20722)

(declare-fun e!1978271 () Bool)

(declare-fun inv!48393 (BalanceConc!20722) Bool)

(assert (=> start!297402 (and (inv!48393 totalInput!842) e!1978271)))

(declare-fun b!3176108 () Bool)

(declare-fun e!1978272 () Bool)

(declare-fun lastNullablePos!114 () Int)

(assert (=> b!3176108 (= e!1978272 (= lastNullablePos!114 (- from!1034 1)))))

(declare-fun b!3176109 () Bool)

(assert (=> b!3176109 (= e!1978273 (>= (- totalInputSize!287 (+ 1 from!1034)) (- totalInputSize!287 from!1034)))))

(declare-fun lt!1067900 () Bool)

(declare-fun nullableZipper!756 ((InoxSet Context!5570)) Bool)

(declare-fun derivationStepZipper!537 ((InoxSet Context!5570) C!19880) (InoxSet Context!5570))

(declare-fun apply!8012 (BalanceConc!20722 Int) C!19880)

(assert (=> b!3176109 (= lt!1067900 (nullableZipper!756 (derivationStepZipper!537 z!3818 (apply!8012 totalInput!842 from!1034))))))

(declare-fun setIsEmpty!25997 () Bool)

(assert (=> setIsEmpty!25997 setRes!25997))

(declare-fun b!3176110 () Bool)

(declare-fun res!1290535 () Bool)

(assert (=> b!3176110 (=> (not res!1290535) (not e!1978273))))

(assert (=> b!3176110 (= res!1290535 e!1978272)))

(declare-fun res!1290539 () Bool)

(assert (=> b!3176110 (=> res!1290539 e!1978272)))

(assert (=> b!3176110 (= res!1290539 (not (nullableZipper!756 z!3818)))))

(declare-fun tp!1004500 () Bool)

(declare-fun setNonEmpty!25997 () Bool)

(declare-fun setElem!25997 () Context!5570)

(declare-fun inv!48394 (Context!5570) Bool)

(assert (=> setNonEmpty!25997 (= setRes!25997 (and tp!1004500 (inv!48394 setElem!25997) e!1978274))))

(declare-fun setRest!25997 () (InoxSet Context!5570))

(assert (=> setNonEmpty!25997 (= z!3818 ((_ map or) (store ((as const (Array Context!5570 Bool)) false) setElem!25997 true) setRest!25997))))

(declare-fun b!3176111 () Bool)

(declare-fun res!1290538 () Bool)

(assert (=> b!3176111 (=> (not res!1290538) (not e!1978273))))

(declare-fun size!26895 (BalanceConc!20722) Int)

(assert (=> b!3176111 (= res!1290538 (= totalInputSize!287 (size!26895 totalInput!842)))))

(declare-fun b!3176112 () Bool)

(declare-fun tp!1004499 () Bool)

(declare-fun inv!48395 (Conc!10542) Bool)

(assert (=> b!3176112 (= e!1978271 (and (inv!48395 (c!533664 totalInput!842)) tp!1004499))))

(declare-fun b!3176113 () Bool)

(declare-fun res!1290541 () Bool)

(assert (=> b!3176113 (=> (not res!1290541) (not e!1978273))))

(assert (=> b!3176113 (= res!1290541 (and (>= lastNullablePos!114 (- 1)) (< lastNullablePos!114 from!1034)))))

(declare-fun b!3176114 () Bool)

(declare-fun res!1290537 () Bool)

(assert (=> b!3176114 (=> (not res!1290537) (not e!1978273))))

(assert (=> b!3176114 (= res!1290537 (not (= from!1034 totalInputSize!287)))))

(assert (= (and start!297402 res!1290540) b!3176111))

(assert (= (and b!3176111 res!1290538) b!3176113))

(assert (= (and b!3176113 res!1290541) b!3176110))

(assert (= (and b!3176110 (not res!1290539)) b!3176108))

(assert (= (and b!3176110 res!1290535) b!3176114))

(assert (= (and b!3176114 res!1290537) b!3176106))

(assert (= (and b!3176106 res!1290536) b!3176109))

(assert (= (and start!297402 condSetEmpty!25997) setIsEmpty!25997))

(assert (= (and start!297402 (not condSetEmpty!25997)) setNonEmpty!25997))

(assert (= setNonEmpty!25997 b!3176107))

(assert (= start!297402 b!3176112))

(declare-fun m!3432573 () Bool)

(assert (=> start!297402 m!3432573))

(declare-fun m!3432575 () Bool)

(assert (=> b!3176110 m!3432575))

(declare-fun m!3432577 () Bool)

(assert (=> b!3176106 m!3432577))

(declare-fun m!3432579 () Bool)

(assert (=> setNonEmpty!25997 m!3432579))

(declare-fun m!3432581 () Bool)

(assert (=> b!3176112 m!3432581))

(declare-fun m!3432583 () Bool)

(assert (=> b!3176111 m!3432583))

(declare-fun m!3432585 () Bool)

(assert (=> b!3176109 m!3432585))

(assert (=> b!3176109 m!3432585))

(declare-fun m!3432587 () Bool)

(assert (=> b!3176109 m!3432587))

(assert (=> b!3176109 m!3432587))

(declare-fun m!3432589 () Bool)

(assert (=> b!3176109 m!3432589))

(check-sat (not b!3176111) (not b!3176106) (not b!3176112) (not start!297402) (not b!3176110) (not b!3176109) (not setNonEmpty!25997) (not b!3176107))
(check-sat)
