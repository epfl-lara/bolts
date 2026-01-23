; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!212466 () Bool)

(assert start!212466)

(declare-fun res!940983 () Bool)

(declare-fun e!1399501 () Bool)

(assert (=> start!212466 (=> (not res!940983) (not e!1399501))))

(declare-fun from!1114 () Int)

(assert (=> start!212466 (= res!940983 (>= from!1114 0))))

(assert (=> start!212466 e!1399501))

(assert (=> start!212466 true))

(declare-datatypes ((C!12296 0))(
  ( (C!12297 (val!7134 Int)) )
))
(declare-datatypes ((List!25423 0))(
  ( (Nil!25339) (Cons!25339 (h!30740 C!12296) (t!198021 List!25423)) )
))
(declare-datatypes ((IArray!16427 0))(
  ( (IArray!16428 (innerList!8271 List!25423)) )
))
(declare-datatypes ((Conc!8211 0))(
  ( (Node!8211 (left!19443 Conc!8211) (right!19773 Conc!8211) (csize!16652 Int) (cheight!8422 Int)) (Leaf!12016 (xs!11153 IArray!16427) (csize!16653 Int)) (Empty!8211) )
))
(declare-datatypes ((BalanceConc!16184 0))(
  ( (BalanceConc!16185 (c!348408 Conc!8211)) )
))
(declare-fun totalInput!923 () BalanceConc!16184)

(declare-fun e!1399498 () Bool)

(declare-fun inv!33738 (BalanceConc!16184) Bool)

(assert (=> start!212466 (and (inv!33738 totalInput!923) e!1399498)))

(declare-fun condSetEmpty!18450 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((Regex!6075 0))(
  ( (ElementMatch!6075 (c!348409 C!12296)) (Concat!10377 (regOne!12662 Regex!6075) (regTwo!12662 Regex!6075)) (EmptyExpr!6075) (Star!6075 (reg!6404 Regex!6075)) (EmptyLang!6075) (Union!6075 (regOne!12663 Regex!6075) (regTwo!12663 Regex!6075)) )
))
(declare-datatypes ((List!25424 0))(
  ( (Nil!25340) (Cons!25340 (h!30741 Regex!6075) (t!198022 List!25424)) )
))
(declare-datatypes ((Context!3290 0))(
  ( (Context!3291 (exprs!2145 List!25424)) )
))
(declare-fun z!3955 () (InoxSet Context!3290))

(assert (=> start!212466 (= condSetEmpty!18450 (= z!3955 ((as const (Array Context!3290 Bool)) false)))))

(declare-fun setRes!18450 () Bool)

(assert (=> start!212466 setRes!18450))

(declare-fun setIsEmpty!18450 () Bool)

(assert (=> setIsEmpty!18450 setRes!18450))

(declare-fun lt!818149 () Int)

(declare-fun lt!818150 () Int)

(declare-fun e!1399497 () Bool)

(declare-fun b!2190072 () Bool)

(declare-fun lt!818148 () Bool)

(assert (=> b!2190072 (= e!1399497 (and (>= (+ 1 from!1114) 0) (<= (+ 1 from!1114) lt!818149) (>= lt!818150 (- 1)) (< lt!818150 (+ 1 from!1114)) lt!818148 (not (= lt!818150 from!1114))))))

(declare-fun lastNullablePos!193 () Int)

(assert (=> b!2190072 (= lt!818150 (ite lt!818148 from!1114 lastNullablePos!193))))

(declare-fun nullableZipper!355 ((InoxSet Context!3290)) Bool)

(declare-fun derivationStepZipper!152 ((InoxSet Context!3290) C!12296) (InoxSet Context!3290))

(declare-fun apply!6108 (BalanceConc!16184 Int) C!12296)

(assert (=> b!2190072 (= lt!818148 (nullableZipper!355 (derivationStepZipper!152 z!3955 (apply!6108 totalInput!923 from!1114))))))

(declare-fun b!2190073 () Bool)

(declare-fun e!1399499 () Bool)

(assert (=> b!2190073 (= e!1399499 (= lastNullablePos!193 (- from!1114 1)))))

(declare-fun b!2190074 () Bool)

(declare-fun res!940981 () Bool)

(assert (=> b!2190074 (=> (not res!940981) (not e!1399497))))

(assert (=> b!2190074 (= res!940981 (not (= from!1114 lt!818149)))))

(declare-fun b!2190075 () Bool)

(declare-fun e!1399500 () Bool)

(declare-fun tp!682768 () Bool)

(assert (=> b!2190075 (= e!1399500 tp!682768)))

(declare-fun b!2190076 () Bool)

(declare-fun tp!682766 () Bool)

(declare-fun inv!33739 (Conc!8211) Bool)

(assert (=> b!2190076 (= e!1399498 (and (inv!33739 (c!348408 totalInput!923)) tp!682766))))

(declare-fun b!2190077 () Bool)

(declare-fun res!940979 () Bool)

(assert (=> b!2190077 (=> (not res!940979) (not e!1399497))))

(assert (=> b!2190077 (= res!940979 e!1399499)))

(declare-fun res!940978 () Bool)

(assert (=> b!2190077 (=> res!940978 e!1399499)))

(assert (=> b!2190077 (= res!940978 (not (nullableZipper!355 z!3955)))))

(declare-fun b!2190078 () Bool)

(assert (=> b!2190078 (= e!1399501 e!1399497)))

(declare-fun res!940980 () Bool)

(assert (=> b!2190078 (=> (not res!940980) (not e!1399497))))

(assert (=> b!2190078 (= res!940980 (and (<= from!1114 lt!818149) (>= lastNullablePos!193 (- 1)) (< lastNullablePos!193 from!1114)))))

(declare-fun size!19791 (BalanceConc!16184) Int)

(assert (=> b!2190078 (= lt!818149 (size!19791 totalInput!923))))

(declare-fun setElem!18450 () Context!3290)

(declare-fun tp!682767 () Bool)

(declare-fun setNonEmpty!18450 () Bool)

(declare-fun inv!33740 (Context!3290) Bool)

(assert (=> setNonEmpty!18450 (= setRes!18450 (and tp!682767 (inv!33740 setElem!18450) e!1399500))))

(declare-fun setRest!18450 () (InoxSet Context!3290))

(assert (=> setNonEmpty!18450 (= z!3955 ((_ map or) (store ((as const (Array Context!3290 Bool)) false) setElem!18450 true) setRest!18450))))

(declare-fun b!2190079 () Bool)

(declare-fun res!940982 () Bool)

(assert (=> b!2190079 (=> (not res!940982) (not e!1399497))))

(declare-fun lostCauseZipper!193 ((InoxSet Context!3290)) Bool)

(assert (=> b!2190079 (= res!940982 (not (lostCauseZipper!193 z!3955)))))

(assert (= (and start!212466 res!940983) b!2190078))

(assert (= (and b!2190078 res!940980) b!2190077))

(assert (= (and b!2190077 (not res!940978)) b!2190073))

(assert (= (and b!2190077 res!940979) b!2190074))

(assert (= (and b!2190074 res!940981) b!2190079))

(assert (= (and b!2190079 res!940982) b!2190072))

(assert (= start!212466 b!2190076))

(assert (= (and start!212466 condSetEmpty!18450) setIsEmpty!18450))

(assert (= (and start!212466 (not condSetEmpty!18450)) setNonEmpty!18450))

(assert (= setNonEmpty!18450 b!2190075))

(declare-fun m!2632997 () Bool)

(assert (=> b!2190072 m!2632997))

(assert (=> b!2190072 m!2632997))

(declare-fun m!2632999 () Bool)

(assert (=> b!2190072 m!2632999))

(assert (=> b!2190072 m!2632999))

(declare-fun m!2633001 () Bool)

(assert (=> b!2190072 m!2633001))

(declare-fun m!2633003 () Bool)

(assert (=> b!2190079 m!2633003))

(declare-fun m!2633005 () Bool)

(assert (=> b!2190076 m!2633005))

(declare-fun m!2633007 () Bool)

(assert (=> setNonEmpty!18450 m!2633007))

(declare-fun m!2633009 () Bool)

(assert (=> b!2190077 m!2633009))

(declare-fun m!2633011 () Bool)

(assert (=> start!212466 m!2633011))

(declare-fun m!2633013 () Bool)

(assert (=> b!2190078 m!2633013))

(check-sat (not b!2190076) (not b!2190079) (not b!2190072) (not b!2190075) (not b!2190078) (not start!212466) (not b!2190077) (not setNonEmpty!18450))
(check-sat)
