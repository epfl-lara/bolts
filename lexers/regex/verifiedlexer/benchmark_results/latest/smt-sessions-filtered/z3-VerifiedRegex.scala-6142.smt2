; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!297378 () Bool)

(assert start!297378)

(declare-fun b!3175782 () Bool)

(declare-fun res!1290295 () Bool)

(declare-fun e!1978116 () Bool)

(assert (=> b!3175782 (=> (not res!1290295) (not e!1978116))))

(declare-fun from!1034 () Int)

(declare-fun totalInputSize!287 () Int)

(assert (=> b!3175782 (= res!1290295 (not (= from!1034 totalInputSize!287)))))

(declare-fun b!3175783 () Bool)

(assert (=> b!3175783 (= e!1978116 (or (< (+ 1 from!1034) 0) (> (+ 1 from!1034) totalInputSize!287)))))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((C!19856 0))(
  ( (C!19857 (val!11964 Int)) )
))
(declare-datatypes ((Regex!9835 0))(
  ( (ElementMatch!9835 (c!533633 C!19856)) (Concat!15156 (regOne!20182 Regex!9835) (regTwo!20182 Regex!9835)) (EmptyExpr!9835) (Star!9835 (reg!10164 Regex!9835)) (EmptyLang!9835) (Union!9835 (regOne!20183 Regex!9835) (regTwo!20183 Regex!9835)) )
))
(declare-datatypes ((List!35696 0))(
  ( (Nil!35572) (Cons!35572 (h!40992 Regex!9835) (t!234787 List!35696)) )
))
(declare-datatypes ((Context!5546 0))(
  ( (Context!5547 (exprs!3273 List!35696)) )
))
(declare-fun z!3818 () (InoxSet Context!5546))

(declare-datatypes ((List!35697 0))(
  ( (Nil!35573) (Cons!35573 (h!40993 C!19856) (t!234788 List!35697)) )
))
(declare-datatypes ((IArray!21065 0))(
  ( (IArray!21066 (innerList!10590 List!35697)) )
))
(declare-datatypes ((Conc!10530 0))(
  ( (Node!10530 (left!27668 Conc!10530) (right!27998 Conc!10530) (csize!21290 Int) (cheight!10741 Int)) (Leaf!16673 (xs!13648 IArray!21065) (csize!21291 Int)) (Empty!10530) )
))
(declare-datatypes ((BalanceConc!20698 0))(
  ( (BalanceConc!20699 (c!533634 Conc!10530)) )
))
(declare-fun totalInput!842 () BalanceConc!20698)

(declare-fun lt!1067870 () Bool)

(declare-fun nullableZipper!744 ((InoxSet Context!5546)) Bool)

(declare-fun derivationStepZipper!529 ((InoxSet Context!5546) C!19856) (InoxSet Context!5546))

(declare-fun apply!8004 (BalanceConc!20698 Int) C!19856)

(assert (=> b!3175783 (= lt!1067870 (nullableZipper!744 (derivationStepZipper!529 z!3818 (apply!8004 totalInput!842 from!1034))))))

(declare-fun setElem!25961 () Context!5546)

(declare-fun setRes!25961 () Bool)

(declare-fun e!1978117 () Bool)

(declare-fun setNonEmpty!25961 () Bool)

(declare-fun tp!1004390 () Bool)

(declare-fun inv!48339 (Context!5546) Bool)

(assert (=> setNonEmpty!25961 (= setRes!25961 (and tp!1004390 (inv!48339 setElem!25961) e!1978117))))

(declare-fun setRest!25961 () (InoxSet Context!5546))

(assert (=> setNonEmpty!25961 (= z!3818 ((_ map or) (store ((as const (Array Context!5546 Bool)) false) setElem!25961 true) setRest!25961))))

(declare-fun b!3175784 () Bool)

(declare-fun e!1978118 () Bool)

(declare-fun tp!1004391 () Bool)

(declare-fun inv!48340 (Conc!10530) Bool)

(assert (=> b!3175784 (= e!1978118 (and (inv!48340 (c!533634 totalInput!842)) tp!1004391))))

(declare-fun b!3175785 () Bool)

(declare-fun e!1978115 () Bool)

(declare-fun lastNullablePos!114 () Int)

(assert (=> b!3175785 (= e!1978115 (= lastNullablePos!114 (- from!1034 1)))))

(declare-fun b!3175786 () Bool)

(declare-fun res!1290301 () Bool)

(assert (=> b!3175786 (=> (not res!1290301) (not e!1978116))))

(declare-fun lostCauseZipper!623 ((InoxSet Context!5546)) Bool)

(assert (=> b!3175786 (= res!1290301 (not (lostCauseZipper!623 z!3818)))))

(declare-fun res!1290299 () Bool)

(assert (=> start!297378 (=> (not res!1290299) (not e!1978116))))

(assert (=> start!297378 (= res!1290299 (and (>= from!1034 0) (<= from!1034 totalInputSize!287)))))

(assert (=> start!297378 e!1978116))

(assert (=> start!297378 true))

(declare-fun condSetEmpty!25961 () Bool)

(assert (=> start!297378 (= condSetEmpty!25961 (= z!3818 ((as const (Array Context!5546 Bool)) false)))))

(assert (=> start!297378 setRes!25961))

(declare-fun inv!48341 (BalanceConc!20698) Bool)

(assert (=> start!297378 (and (inv!48341 totalInput!842) e!1978118)))

(declare-fun b!3175787 () Bool)

(declare-fun res!1290298 () Bool)

(assert (=> b!3175787 (=> (not res!1290298) (not e!1978116))))

(declare-fun size!26883 (BalanceConc!20698) Int)

(assert (=> b!3175787 (= res!1290298 (= totalInputSize!287 (size!26883 totalInput!842)))))

(declare-fun b!3175788 () Bool)

(declare-fun res!1290297 () Bool)

(assert (=> b!3175788 (=> (not res!1290297) (not e!1978116))))

(assert (=> b!3175788 (= res!1290297 (and (>= lastNullablePos!114 (- 1)) (< lastNullablePos!114 from!1034)))))

(declare-fun setIsEmpty!25961 () Bool)

(assert (=> setIsEmpty!25961 setRes!25961))

(declare-fun b!3175789 () Bool)

(declare-fun tp!1004392 () Bool)

(assert (=> b!3175789 (= e!1978117 tp!1004392)))

(declare-fun b!3175790 () Bool)

(declare-fun res!1290300 () Bool)

(assert (=> b!3175790 (=> (not res!1290300) (not e!1978116))))

(assert (=> b!3175790 (= res!1290300 e!1978115)))

(declare-fun res!1290296 () Bool)

(assert (=> b!3175790 (=> res!1290296 e!1978115)))

(assert (=> b!3175790 (= res!1290296 (not (nullableZipper!744 z!3818)))))

(assert (= (and start!297378 res!1290299) b!3175787))

(assert (= (and b!3175787 res!1290298) b!3175788))

(assert (= (and b!3175788 res!1290297) b!3175790))

(assert (= (and b!3175790 (not res!1290296)) b!3175785))

(assert (= (and b!3175790 res!1290300) b!3175782))

(assert (= (and b!3175782 res!1290295) b!3175786))

(assert (= (and b!3175786 res!1290301) b!3175783))

(assert (= (and start!297378 condSetEmpty!25961) setIsEmpty!25961))

(assert (= (and start!297378 (not condSetEmpty!25961)) setNonEmpty!25961))

(assert (= setNonEmpty!25961 b!3175789))

(assert (= start!297378 b!3175784))

(declare-fun m!3432385 () Bool)

(assert (=> b!3175783 m!3432385))

(assert (=> b!3175783 m!3432385))

(declare-fun m!3432387 () Bool)

(assert (=> b!3175783 m!3432387))

(assert (=> b!3175783 m!3432387))

(declare-fun m!3432389 () Bool)

(assert (=> b!3175783 m!3432389))

(declare-fun m!3432391 () Bool)

(assert (=> start!297378 m!3432391))

(declare-fun m!3432393 () Bool)

(assert (=> setNonEmpty!25961 m!3432393))

(declare-fun m!3432395 () Bool)

(assert (=> b!3175787 m!3432395))

(declare-fun m!3432397 () Bool)

(assert (=> b!3175784 m!3432397))

(declare-fun m!3432399 () Bool)

(assert (=> b!3175786 m!3432399))

(declare-fun m!3432401 () Bool)

(assert (=> b!3175790 m!3432401))

(check-sat (not start!297378) (not b!3175790) (not setNonEmpty!25961) (not b!3175786) (not b!3175789) (not b!3175783) (not b!3175784) (not b!3175787))
(check-sat)
