; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!297386 () Bool)

(assert start!297386)

(declare-fun setIsEmpty!25973 () Bool)

(declare-fun setRes!25973 () Bool)

(assert (=> setIsEmpty!25973 setRes!25973))

(declare-fun b!3175900 () Bool)

(declare-fun e!1978169 () Int)

(declare-fun from!1034 () Int)

(assert (=> b!3175900 (= e!1978169 from!1034)))

(declare-fun b!3175901 () Bool)

(declare-fun totalInputSize!287 () Int)

(declare-fun e!1978170 () Bool)

(declare-fun lt!1067882 () Int)

(assert (=> b!3175901 (= e!1978170 (and (>= (+ 1 from!1034) 0) (<= (+ 1 from!1034) totalInputSize!287) (or (< lt!1067882 (- 1)) (>= lt!1067882 (+ 1 from!1034)))))))

(assert (=> b!3175901 (= lt!1067882 e!1978169)))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((C!19864 0))(
  ( (C!19865 (val!11968 Int)) )
))
(declare-datatypes ((Regex!9839 0))(
  ( (ElementMatch!9839 (c!533647 C!19864)) (Concat!15160 (regOne!20190 Regex!9839) (regTwo!20190 Regex!9839)) (EmptyExpr!9839) (Star!9839 (reg!10168 Regex!9839)) (EmptyLang!9839) (Union!9839 (regOne!20191 Regex!9839) (regTwo!20191 Regex!9839)) )
))
(declare-datatypes ((List!35704 0))(
  ( (Nil!35580) (Cons!35580 (h!41000 Regex!9839) (t!234795 List!35704)) )
))
(declare-datatypes ((Context!5554 0))(
  ( (Context!5555 (exprs!3277 List!35704)) )
))
(declare-fun z!3818 () (InoxSet Context!5554))

(declare-datatypes ((List!35705 0))(
  ( (Nil!35581) (Cons!35581 (h!41001 C!19864) (t!234796 List!35705)) )
))
(declare-datatypes ((IArray!21073 0))(
  ( (IArray!21074 (innerList!10594 List!35705)) )
))
(declare-datatypes ((Conc!10534 0))(
  ( (Node!10534 (left!27674 Conc!10534) (right!28004 Conc!10534) (csize!21298 Int) (cheight!10745 Int)) (Leaf!16679 (xs!13652 IArray!21073) (csize!21299 Int)) (Empty!10534) )
))
(declare-datatypes ((BalanceConc!20706 0))(
  ( (BalanceConc!20707 (c!533648 Conc!10534)) )
))
(declare-fun totalInput!842 () BalanceConc!20706)

(declare-fun c!533646 () Bool)

(declare-fun nullableZipper!748 ((InoxSet Context!5554)) Bool)

(declare-fun derivationStepZipper!533 ((InoxSet Context!5554) C!19864) (InoxSet Context!5554))

(declare-fun apply!8008 (BalanceConc!20706 Int) C!19864)

(assert (=> b!3175901 (= c!533646 (nullableZipper!748 (derivationStepZipper!533 z!3818 (apply!8008 totalInput!842 from!1034))))))

(declare-fun b!3175902 () Bool)

(declare-fun res!1290382 () Bool)

(assert (=> b!3175902 (=> (not res!1290382) (not e!1978170))))

(declare-fun lastNullablePos!114 () Int)

(assert (=> b!3175902 (= res!1290382 (and (>= lastNullablePos!114 (- 1)) (< lastNullablePos!114 from!1034)))))

(declare-fun b!3175903 () Bool)

(declare-fun res!1290383 () Bool)

(assert (=> b!3175903 (=> (not res!1290383) (not e!1978170))))

(declare-fun size!26887 (BalanceConc!20706) Int)

(assert (=> b!3175903 (= res!1290383 (= totalInputSize!287 (size!26887 totalInput!842)))))

(declare-fun b!3175904 () Bool)

(declare-fun res!1290385 () Bool)

(assert (=> b!3175904 (=> (not res!1290385) (not e!1978170))))

(assert (=> b!3175904 (= res!1290385 (not (= from!1034 totalInputSize!287)))))

(declare-fun b!3175905 () Bool)

(assert (=> b!3175905 (= e!1978169 lastNullablePos!114)))

(declare-fun b!3175906 () Bool)

(declare-fun e!1978171 () Bool)

(declare-fun tp!1004427 () Bool)

(assert (=> b!3175906 (= e!1978171 tp!1004427)))

(declare-fun setElem!25973 () Context!5554)

(declare-fun setNonEmpty!25973 () Bool)

(declare-fun tp!1004428 () Bool)

(declare-fun inv!48357 (Context!5554) Bool)

(assert (=> setNonEmpty!25973 (= setRes!25973 (and tp!1004428 (inv!48357 setElem!25973) e!1978171))))

(declare-fun setRest!25973 () (InoxSet Context!5554))

(assert (=> setNonEmpty!25973 (= z!3818 ((_ map or) (store ((as const (Array Context!5554 Bool)) false) setElem!25973 true) setRest!25973))))

(declare-fun res!1290384 () Bool)

(assert (=> start!297386 (=> (not res!1290384) (not e!1978170))))

(assert (=> start!297386 (= res!1290384 (and (>= from!1034 0) (<= from!1034 totalInputSize!287)))))

(assert (=> start!297386 e!1978170))

(assert (=> start!297386 true))

(declare-fun condSetEmpty!25973 () Bool)

(assert (=> start!297386 (= condSetEmpty!25973 (= z!3818 ((as const (Array Context!5554 Bool)) false)))))

(assert (=> start!297386 setRes!25973))

(declare-fun e!1978168 () Bool)

(declare-fun inv!48358 (BalanceConc!20706) Bool)

(assert (=> start!297386 (and (inv!48358 totalInput!842) e!1978168)))

(declare-fun b!3175907 () Bool)

(declare-fun res!1290379 () Bool)

(assert (=> b!3175907 (=> (not res!1290379) (not e!1978170))))

(declare-fun lostCauseZipper!627 ((InoxSet Context!5554)) Bool)

(assert (=> b!3175907 (= res!1290379 (not (lostCauseZipper!627 z!3818)))))

(declare-fun b!3175908 () Bool)

(declare-fun tp!1004426 () Bool)

(declare-fun inv!48359 (Conc!10534) Bool)

(assert (=> b!3175908 (= e!1978168 (and (inv!48359 (c!533648 totalInput!842)) tp!1004426))))

(declare-fun b!3175909 () Bool)

(declare-fun e!1978172 () Bool)

(assert (=> b!3175909 (= e!1978172 (= lastNullablePos!114 (- from!1034 1)))))

(declare-fun b!3175910 () Bool)

(declare-fun res!1290381 () Bool)

(assert (=> b!3175910 (=> (not res!1290381) (not e!1978170))))

(assert (=> b!3175910 (= res!1290381 e!1978172)))

(declare-fun res!1290380 () Bool)

(assert (=> b!3175910 (=> res!1290380 e!1978172)))

(assert (=> b!3175910 (= res!1290380 (not (nullableZipper!748 z!3818)))))

(assert (= (and start!297386 res!1290384) b!3175903))

(assert (= (and b!3175903 res!1290383) b!3175902))

(assert (= (and b!3175902 res!1290382) b!3175910))

(assert (= (and b!3175910 (not res!1290380)) b!3175909))

(assert (= (and b!3175910 res!1290381) b!3175904))

(assert (= (and b!3175904 res!1290385) b!3175907))

(assert (= (and b!3175907 res!1290379) b!3175901))

(assert (= (and b!3175901 c!533646) b!3175900))

(assert (= (and b!3175901 (not c!533646)) b!3175905))

(assert (= (and start!297386 condSetEmpty!25973) setIsEmpty!25973))

(assert (= (and start!297386 (not condSetEmpty!25973)) setNonEmpty!25973))

(assert (= setNonEmpty!25973 b!3175906))

(assert (= start!297386 b!3175908))

(declare-fun m!3432457 () Bool)

(assert (=> b!3175901 m!3432457))

(assert (=> b!3175901 m!3432457))

(declare-fun m!3432459 () Bool)

(assert (=> b!3175901 m!3432459))

(assert (=> b!3175901 m!3432459))

(declare-fun m!3432461 () Bool)

(assert (=> b!3175901 m!3432461))

(declare-fun m!3432463 () Bool)

(assert (=> b!3175903 m!3432463))

(declare-fun m!3432465 () Bool)

(assert (=> b!3175910 m!3432465))

(declare-fun m!3432467 () Bool)

(assert (=> start!297386 m!3432467))

(declare-fun m!3432469 () Bool)

(assert (=> b!3175908 m!3432469))

(declare-fun m!3432471 () Bool)

(assert (=> setNonEmpty!25973 m!3432471))

(declare-fun m!3432473 () Bool)

(assert (=> b!3175907 m!3432473))

(check-sat (not start!297386) (not b!3175907) (not b!3175910) (not setNonEmpty!25973) (not b!3175903) (not b!3175908) (not b!3175901) (not b!3175906))
(check-sat)
