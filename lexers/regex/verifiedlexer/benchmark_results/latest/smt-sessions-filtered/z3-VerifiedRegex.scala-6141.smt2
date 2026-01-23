; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!297374 () Bool)

(assert start!297374)

(declare-fun b!3175729 () Bool)

(declare-fun e!1978093 () Bool)

(declare-fun tp!1004373 () Bool)

(assert (=> b!3175729 (= e!1978093 tp!1004373)))

(declare-fun res!1290259 () Bool)

(declare-fun e!1978094 () Bool)

(assert (=> start!297374 (=> (not res!1290259) (not e!1978094))))

(declare-fun from!1034 () Int)

(declare-fun totalInputSize!287 () Int)

(assert (=> start!297374 (= res!1290259 (and (>= from!1034 0) (<= from!1034 totalInputSize!287)))))

(assert (=> start!297374 e!1978094))

(assert (=> start!297374 true))

(declare-fun condSetEmpty!25955 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((C!19852 0))(
  ( (C!19853 (val!11962 Int)) )
))
(declare-datatypes ((Regex!9833 0))(
  ( (ElementMatch!9833 (c!533629 C!19852)) (Concat!15154 (regOne!20178 Regex!9833) (regTwo!20178 Regex!9833)) (EmptyExpr!9833) (Star!9833 (reg!10162 Regex!9833)) (EmptyLang!9833) (Union!9833 (regOne!20179 Regex!9833) (regTwo!20179 Regex!9833)) )
))
(declare-datatypes ((List!35692 0))(
  ( (Nil!35568) (Cons!35568 (h!40988 Regex!9833) (t!234783 List!35692)) )
))
(declare-datatypes ((Context!5542 0))(
  ( (Context!5543 (exprs!3271 List!35692)) )
))
(declare-fun z!3818 () (InoxSet Context!5542))

(assert (=> start!297374 (= condSetEmpty!25955 (= z!3818 ((as const (Array Context!5542 Bool)) false)))))

(declare-fun setRes!25955 () Bool)

(assert (=> start!297374 setRes!25955))

(declare-datatypes ((List!35693 0))(
  ( (Nil!35569) (Cons!35569 (h!40989 C!19852) (t!234784 List!35693)) )
))
(declare-datatypes ((IArray!21061 0))(
  ( (IArray!21062 (innerList!10588 List!35693)) )
))
(declare-datatypes ((Conc!10528 0))(
  ( (Node!10528 (left!27665 Conc!10528) (right!27995 Conc!10528) (csize!21286 Int) (cheight!10739 Int)) (Leaf!16670 (xs!13646 IArray!21061) (csize!21287 Int)) (Empty!10528) )
))
(declare-datatypes ((BalanceConc!20694 0))(
  ( (BalanceConc!20695 (c!533630 Conc!10528)) )
))
(declare-fun totalInput!842 () BalanceConc!20694)

(declare-fun e!1978091 () Bool)

(declare-fun inv!48330 (BalanceConc!20694) Bool)

(assert (=> start!297374 (and (inv!48330 totalInput!842) e!1978091)))

(declare-fun b!3175730 () Bool)

(declare-fun res!1290254 () Bool)

(declare-fun e!1978092 () Bool)

(assert (=> b!3175730 (=> (not res!1290254) (not e!1978092))))

(assert (=> b!3175730 (= res!1290254 (not (= from!1034 totalInputSize!287)))))

(declare-fun b!3175731 () Bool)

(declare-fun res!1290257 () Bool)

(assert (=> b!3175731 (=> (not res!1290257) (not e!1978092))))

(declare-fun e!1978090 () Bool)

(assert (=> b!3175731 (= res!1290257 e!1978090)))

(declare-fun res!1290255 () Bool)

(assert (=> b!3175731 (=> res!1290255 e!1978090)))

(declare-fun nullableZipper!742 ((InoxSet Context!5542)) Bool)

(assert (=> b!3175731 (= res!1290255 (not (nullableZipper!742 z!3818)))))

(declare-fun setIsEmpty!25955 () Bool)

(assert (=> setIsEmpty!25955 setRes!25955))

(declare-fun b!3175732 () Bool)

(declare-fun lastNullablePos!114 () Int)

(assert (=> b!3175732 (= e!1978090 (= lastNullablePos!114 (- from!1034 1)))))

(declare-fun b!3175733 () Bool)

(assert (=> b!3175733 (= e!1978094 e!1978092)))

(declare-fun res!1290256 () Bool)

(assert (=> b!3175733 (=> (not res!1290256) (not e!1978092))))

(declare-fun lt!1067864 () Int)

(assert (=> b!3175733 (= res!1290256 (and (= totalInputSize!287 lt!1067864) (>= lastNullablePos!114 (- 1)) (< lastNullablePos!114 from!1034)))))

(declare-fun size!26881 (BalanceConc!20694) Int)

(assert (=> b!3175733 (= lt!1067864 (size!26881 totalInput!842))))

(declare-fun setNonEmpty!25955 () Bool)

(declare-fun tp!1004372 () Bool)

(declare-fun setElem!25955 () Context!5542)

(declare-fun inv!48331 (Context!5542) Bool)

(assert (=> setNonEmpty!25955 (= setRes!25955 (and tp!1004372 (inv!48331 setElem!25955) e!1978093))))

(declare-fun setRest!25955 () (InoxSet Context!5542))

(assert (=> setNonEmpty!25955 (= z!3818 ((_ map or) (store ((as const (Array Context!5542 Bool)) false) setElem!25955 true) setRest!25955))))

(declare-fun b!3175734 () Bool)

(declare-fun tp!1004374 () Bool)

(declare-fun inv!48332 (Conc!10528) Bool)

(assert (=> b!3175734 (= e!1978091 (and (inv!48332 (c!533630 totalInput!842)) tp!1004374))))

(declare-fun b!3175735 () Bool)

(assert (=> b!3175735 (= e!1978092 (or (> 0 from!1034) (>= from!1034 lt!1067864)))))

(declare-fun b!3175736 () Bool)

(declare-fun res!1290258 () Bool)

(assert (=> b!3175736 (=> (not res!1290258) (not e!1978092))))

(declare-fun lostCauseZipper!621 ((InoxSet Context!5542)) Bool)

(assert (=> b!3175736 (= res!1290258 (not (lostCauseZipper!621 z!3818)))))

(assert (= (and start!297374 res!1290259) b!3175733))

(assert (= (and b!3175733 res!1290256) b!3175731))

(assert (= (and b!3175731 (not res!1290255)) b!3175732))

(assert (= (and b!3175731 res!1290257) b!3175730))

(assert (= (and b!3175730 res!1290254) b!3175736))

(assert (= (and b!3175736 res!1290258) b!3175735))

(assert (= (and start!297374 condSetEmpty!25955) setIsEmpty!25955))

(assert (= (and start!297374 (not condSetEmpty!25955)) setNonEmpty!25955))

(assert (= setNonEmpty!25955 b!3175729))

(assert (= start!297374 b!3175734))

(declare-fun m!3432355 () Bool)

(assert (=> b!3175734 m!3432355))

(declare-fun m!3432357 () Bool)

(assert (=> b!3175736 m!3432357))

(declare-fun m!3432359 () Bool)

(assert (=> b!3175733 m!3432359))

(declare-fun m!3432361 () Bool)

(assert (=> start!297374 m!3432361))

(declare-fun m!3432363 () Bool)

(assert (=> setNonEmpty!25955 m!3432363))

(declare-fun m!3432365 () Bool)

(assert (=> b!3175731 m!3432365))

(check-sat (not start!297374) (not b!3175731) (not b!3175736) (not b!3175733) (not setNonEmpty!25955) (not b!3175734) (not b!3175729))
(check-sat)
