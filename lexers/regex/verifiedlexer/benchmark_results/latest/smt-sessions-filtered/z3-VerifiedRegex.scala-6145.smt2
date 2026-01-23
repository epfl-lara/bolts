; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!297390 () Bool)

(assert start!297390)

(declare-fun b!3175956 () Bool)

(declare-fun e!1978194 () Bool)

(declare-fun tp!1004446 () Bool)

(assert (=> b!3175956 (= e!1978194 tp!1004446)))

(declare-fun totalInputSize!287 () Int)

(declare-fun e!1978196 () Bool)

(declare-fun b!3175957 () Bool)

(declare-fun from!1034 () Int)

(declare-fun lt!1067894 () Bool)

(declare-fun lt!1067893 () Int)

(assert (=> b!3175957 (= e!1978196 (and (>= (+ 1 from!1034) 0) (<= (+ 1 from!1034) totalInputSize!287) (>= lt!1067893 (- 1)) (< lt!1067893 (+ 1 from!1034)) lt!1067894 (not (= lt!1067893 from!1034))))))

(declare-fun lastNullablePos!114 () Int)

(assert (=> b!3175957 (= lt!1067893 (ite lt!1067894 from!1034 lastNullablePos!114))))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((C!19868 0))(
  ( (C!19869 (val!11970 Int)) )
))
(declare-datatypes ((Regex!9841 0))(
  ( (ElementMatch!9841 (c!533651 C!19868)) (Concat!15162 (regOne!20194 Regex!9841) (regTwo!20194 Regex!9841)) (EmptyExpr!9841) (Star!9841 (reg!10170 Regex!9841)) (EmptyLang!9841) (Union!9841 (regOne!20195 Regex!9841) (regTwo!20195 Regex!9841)) )
))
(declare-datatypes ((List!35708 0))(
  ( (Nil!35584) (Cons!35584 (h!41004 Regex!9841) (t!234799 List!35708)) )
))
(declare-datatypes ((Context!5558 0))(
  ( (Context!5559 (exprs!3279 List!35708)) )
))
(declare-fun z!3818 () (InoxSet Context!5558))

(declare-datatypes ((List!35709 0))(
  ( (Nil!35585) (Cons!35585 (h!41005 C!19868) (t!234800 List!35709)) )
))
(declare-datatypes ((IArray!21077 0))(
  ( (IArray!21078 (innerList!10596 List!35709)) )
))
(declare-datatypes ((Conc!10536 0))(
  ( (Node!10536 (left!27677 Conc!10536) (right!28007 Conc!10536) (csize!21302 Int) (cheight!10747 Int)) (Leaf!16682 (xs!13654 IArray!21077) (csize!21303 Int)) (Empty!10536) )
))
(declare-datatypes ((BalanceConc!20710 0))(
  ( (BalanceConc!20711 (c!533652 Conc!10536)) )
))
(declare-fun totalInput!842 () BalanceConc!20710)

(declare-fun nullableZipper!750 ((InoxSet Context!5558)) Bool)

(declare-fun derivationStepZipper!535 ((InoxSet Context!5558) C!19868) (InoxSet Context!5558))

(declare-fun apply!8010 (BalanceConc!20710 Int) C!19868)

(assert (=> b!3175957 (= lt!1067894 (nullableZipper!750 (derivationStepZipper!535 z!3818 (apply!8010 totalInput!842 from!1034))))))

(declare-fun b!3175958 () Bool)

(declare-fun e!1978195 () Bool)

(assert (=> b!3175958 (= e!1978195 (= lastNullablePos!114 (- from!1034 1)))))

(declare-fun b!3175959 () Bool)

(declare-fun res!1290426 () Bool)

(assert (=> b!3175959 (=> (not res!1290426) (not e!1978196))))

(assert (=> b!3175959 (= res!1290426 e!1978195)))

(declare-fun res!1290423 () Bool)

(assert (=> b!3175959 (=> res!1290423 e!1978195)))

(assert (=> b!3175959 (= res!1290423 (not (nullableZipper!750 z!3818)))))

(declare-fun b!3175960 () Bool)

(declare-fun res!1290425 () Bool)

(assert (=> b!3175960 (=> (not res!1290425) (not e!1978196))))

(declare-fun lostCauseZipper!629 ((InoxSet Context!5558)) Bool)

(assert (=> b!3175960 (= res!1290425 (not (lostCauseZipper!629 z!3818)))))

(declare-fun b!3175961 () Bool)

(declare-fun res!1290421 () Bool)

(assert (=> b!3175961 (=> (not res!1290421) (not e!1978196))))

(assert (=> b!3175961 (= res!1290421 (and (>= lastNullablePos!114 (- 1)) (< lastNullablePos!114 from!1034)))))

(declare-fun setIsEmpty!25979 () Bool)

(declare-fun setRes!25979 () Bool)

(assert (=> setIsEmpty!25979 setRes!25979))

(declare-fun tp!1004444 () Bool)

(declare-fun setNonEmpty!25979 () Bool)

(declare-fun setElem!25979 () Context!5558)

(declare-fun inv!48366 (Context!5558) Bool)

(assert (=> setNonEmpty!25979 (= setRes!25979 (and tp!1004444 (inv!48366 setElem!25979) e!1978194))))

(declare-fun setRest!25979 () (InoxSet Context!5558))

(assert (=> setNonEmpty!25979 (= z!3818 ((_ map or) (store ((as const (Array Context!5558 Bool)) false) setElem!25979 true) setRest!25979))))

(declare-fun b!3175962 () Bool)

(declare-fun e!1978193 () Bool)

(declare-fun tp!1004445 () Bool)

(declare-fun inv!48367 (Conc!10536) Bool)

(assert (=> b!3175962 (= e!1978193 (and (inv!48367 (c!533652 totalInput!842)) tp!1004445))))

(declare-fun b!3175963 () Bool)

(declare-fun res!1290422 () Bool)

(assert (=> b!3175963 (=> (not res!1290422) (not e!1978196))))

(assert (=> b!3175963 (= res!1290422 (not (= from!1034 totalInputSize!287)))))

(declare-fun res!1290424 () Bool)

(assert (=> start!297390 (=> (not res!1290424) (not e!1978196))))

(assert (=> start!297390 (= res!1290424 (and (>= from!1034 0) (<= from!1034 totalInputSize!287)))))

(assert (=> start!297390 e!1978196))

(assert (=> start!297390 true))

(declare-fun condSetEmpty!25979 () Bool)

(assert (=> start!297390 (= condSetEmpty!25979 (= z!3818 ((as const (Array Context!5558 Bool)) false)))))

(assert (=> start!297390 setRes!25979))

(declare-fun inv!48368 (BalanceConc!20710) Bool)

(assert (=> start!297390 (and (inv!48368 totalInput!842) e!1978193)))

(declare-fun b!3175964 () Bool)

(declare-fun res!1290427 () Bool)

(assert (=> b!3175964 (=> (not res!1290427) (not e!1978196))))

(declare-fun size!26889 (BalanceConc!20710) Int)

(assert (=> b!3175964 (= res!1290427 (= totalInputSize!287 (size!26889 totalInput!842)))))

(assert (= (and start!297390 res!1290424) b!3175964))

(assert (= (and b!3175964 res!1290427) b!3175961))

(assert (= (and b!3175961 res!1290421) b!3175959))

(assert (= (and b!3175959 (not res!1290423)) b!3175958))

(assert (= (and b!3175959 res!1290426) b!3175963))

(assert (= (and b!3175963 res!1290422) b!3175960))

(assert (= (and b!3175960 res!1290425) b!3175957))

(assert (= (and start!297390 condSetEmpty!25979) setIsEmpty!25979))

(assert (= (and start!297390 (not condSetEmpty!25979)) setNonEmpty!25979))

(assert (= setNonEmpty!25979 b!3175956))

(assert (= start!297390 b!3175962))

(declare-fun m!3432493 () Bool)

(assert (=> b!3175959 m!3432493))

(declare-fun m!3432495 () Bool)

(assert (=> start!297390 m!3432495))

(declare-fun m!3432497 () Bool)

(assert (=> setNonEmpty!25979 m!3432497))

(declare-fun m!3432499 () Bool)

(assert (=> b!3175957 m!3432499))

(assert (=> b!3175957 m!3432499))

(declare-fun m!3432501 () Bool)

(assert (=> b!3175957 m!3432501))

(assert (=> b!3175957 m!3432501))

(declare-fun m!3432503 () Bool)

(assert (=> b!3175957 m!3432503))

(declare-fun m!3432505 () Bool)

(assert (=> b!3175962 m!3432505))

(declare-fun m!3432507 () Bool)

(assert (=> b!3175964 m!3432507))

(declare-fun m!3432509 () Bool)

(assert (=> b!3175960 m!3432509))

(check-sat (not start!297390) (not b!3175964) (not setNonEmpty!25979) (not b!3175962) (not b!3175960) (not b!3175956) (not b!3175957) (not b!3175959))
(check-sat)
