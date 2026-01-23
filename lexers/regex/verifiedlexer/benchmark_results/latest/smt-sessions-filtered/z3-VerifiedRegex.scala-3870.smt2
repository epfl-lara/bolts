; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!213610 () Bool)

(assert start!213610)

(declare-fun b!2200091 () Bool)

(declare-fun e!1405945 () Bool)

(declare-fun lastNullablePos!161 () Int)

(declare-fun from!1082 () Int)

(assert (=> b!2200091 (= e!1405945 (= lastNullablePos!161 (- from!1082 1)))))

(declare-fun b!2200092 () Bool)

(declare-fun e!1405941 () Bool)

(declare-fun tp!684678 () Bool)

(assert (=> b!2200092 (= e!1405941 tp!684678)))

(declare-fun b!2200093 () Bool)

(declare-fun res!945677 () Bool)

(declare-fun e!1405943 () Bool)

(assert (=> b!2200093 (=> (not res!945677) (not e!1405943))))

(declare-fun lt!822972 () Int)

(declare-fun knownSize!10 () Int)

(assert (=> b!2200093 (= res!945677 (and (not (= knownSize!10 0)) (> knownSize!10 0) (not (= from!1082 lt!822972))))))

(declare-fun setIsEmpty!18924 () Bool)

(declare-fun setRes!18924 () Bool)

(assert (=> setIsEmpty!18924 setRes!18924))

(declare-fun b!2200094 () Bool)

(declare-fun e!1405942 () Bool)

(assert (=> b!2200094 (= e!1405942 e!1405943)))

(declare-fun res!945670 () Bool)

(assert (=> b!2200094 (=> (not res!945670) (not e!1405943))))

(assert (=> b!2200094 (= res!945670 (and (<= from!1082 lt!822972) (>= knownSize!10 0) (<= knownSize!10 (- lt!822972 from!1082))))))

(declare-datatypes ((C!12560 0))(
  ( (C!12561 (val!7266 Int)) )
))
(declare-datatypes ((List!25708 0))(
  ( (Nil!25624) (Cons!25624 (h!31025 C!12560) (t!198326 List!25708)) )
))
(declare-datatypes ((IArray!16691 0))(
  ( (IArray!16692 (innerList!8403 List!25708)) )
))
(declare-datatypes ((Conc!8343 0))(
  ( (Node!8343 (left!19681 Conc!8343) (right!20011 Conc!8343) (csize!16916 Int) (cheight!8554 Int)) (Leaf!12214 (xs!11285 IArray!16691) (csize!16917 Int)) (Empty!8343) )
))
(declare-datatypes ((BalanceConc!16448 0))(
  ( (BalanceConc!16449 (c!350872 Conc!8343)) )
))
(declare-fun totalInput!891 () BalanceConc!16448)

(declare-fun size!19972 (BalanceConc!16448) Int)

(assert (=> b!2200094 (= lt!822972 (size!19972 totalInput!891))))

(declare-fun b!2200095 () Bool)

(declare-fun res!945676 () Bool)

(assert (=> b!2200095 (=> (not res!945676) (not e!1405943))))

(assert (=> b!2200095 (= res!945676 (and (>= lastNullablePos!161 (- 1)) (< lastNullablePos!161 from!1082)))))

(declare-fun res!945672 () Bool)

(assert (=> start!213610 (=> (not res!945672) (not e!1405942))))

(assert (=> start!213610 (= res!945672 (>= from!1082 0))))

(assert (=> start!213610 e!1405942))

(assert (=> start!213610 true))

(declare-fun e!1405944 () Bool)

(declare-fun inv!34390 (BalanceConc!16448) Bool)

(assert (=> start!213610 (and (inv!34390 totalInput!891) e!1405944)))

(declare-fun condSetEmpty!18924 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((Regex!6207 0))(
  ( (ElementMatch!6207 (c!350873 C!12560)) (Concat!10509 (regOne!12926 Regex!6207) (regTwo!12926 Regex!6207)) (EmptyExpr!6207) (Star!6207 (reg!6536 Regex!6207)) (EmptyLang!6207) (Union!6207 (regOne!12927 Regex!6207) (regTwo!12927 Regex!6207)) )
))
(declare-datatypes ((List!25709 0))(
  ( (Nil!25625) (Cons!25625 (h!31026 Regex!6207) (t!198327 List!25709)) )
))
(declare-datatypes ((Context!3554 0))(
  ( (Context!3555 (exprs!2277 List!25709)) )
))
(declare-fun z!3888 () (InoxSet Context!3554))

(assert (=> start!213610 (= condSetEmpty!18924 (= z!3888 ((as const (Array Context!3554 Bool)) false)))))

(assert (=> start!213610 setRes!18924))

(declare-fun b!2200096 () Bool)

(assert (=> b!2200096 (= e!1405943 (or (> 0 from!1082) (>= from!1082 lt!822972)))))

(declare-fun tp!684677 () Bool)

(declare-fun setElem!18924 () Context!3554)

(declare-fun setNonEmpty!18924 () Bool)

(declare-fun inv!34391 (Context!3554) Bool)

(assert (=> setNonEmpty!18924 (= setRes!18924 (and tp!684677 (inv!34391 setElem!18924) e!1405941))))

(declare-fun setRest!18924 () (InoxSet Context!3554))

(assert (=> setNonEmpty!18924 (= z!3888 ((_ map or) (store ((as const (Array Context!3554 Bool)) false) setElem!18924 true) setRest!18924))))

(declare-fun b!2200097 () Bool)

(declare-fun tp!684676 () Bool)

(declare-fun inv!34392 (Conc!8343) Bool)

(assert (=> b!2200097 (= e!1405944 (and (inv!34392 (c!350872 totalInput!891)) tp!684676))))

(declare-fun b!2200098 () Bool)

(declare-fun res!945674 () Bool)

(assert (=> b!2200098 (=> (not res!945674) (not e!1405943))))

(declare-fun lostCauseZipper!317 ((InoxSet Context!3554)) Bool)

(assert (=> b!2200098 (= res!945674 (not (lostCauseZipper!317 z!3888)))))

(declare-fun b!2200099 () Bool)

(declare-fun res!945671 () Bool)

(assert (=> b!2200099 (=> (not res!945671) (not e!1405943))))

(declare-fun matchZipper!293 ((InoxSet Context!3554) List!25708) Bool)

(declare-fun take!385 (List!25708 Int) List!25708)

(declare-fun drop!1395 (List!25708 Int) List!25708)

(declare-fun list!9865 (BalanceConc!16448) List!25708)

(assert (=> b!2200099 (= res!945671 (matchZipper!293 z!3888 (take!385 (drop!1395 (list!9865 totalInput!891) from!1082) knownSize!10)))))

(declare-fun b!2200100 () Bool)

(declare-fun res!945673 () Bool)

(assert (=> b!2200100 (=> (not res!945673) (not e!1405943))))

(declare-fun isEmpty!14617 (BalanceConc!16448) Bool)

(assert (=> b!2200100 (= res!945673 (not (isEmpty!14617 totalInput!891)))))

(declare-fun b!2200101 () Bool)

(declare-fun res!945675 () Bool)

(assert (=> b!2200101 (=> (not res!945675) (not e!1405943))))

(assert (=> b!2200101 (= res!945675 e!1405945)))

(declare-fun res!945669 () Bool)

(assert (=> b!2200101 (=> res!945669 e!1405945)))

(declare-fun nullableZipper!487 ((InoxSet Context!3554)) Bool)

(assert (=> b!2200101 (= res!945669 (not (nullableZipper!487 z!3888)))))

(assert (= (and start!213610 res!945672) b!2200094))

(assert (= (and b!2200094 res!945670) b!2200099))

(assert (= (and b!2200099 res!945671) b!2200095))

(assert (= (and b!2200095 res!945676) b!2200101))

(assert (= (and b!2200101 (not res!945669)) b!2200091))

(assert (= (and b!2200101 res!945675) b!2200100))

(assert (= (and b!2200100 res!945673) b!2200093))

(assert (= (and b!2200093 res!945677) b!2200098))

(assert (= (and b!2200098 res!945674) b!2200096))

(assert (= start!213610 b!2200097))

(assert (= (and start!213610 condSetEmpty!18924) setIsEmpty!18924))

(assert (= (and start!213610 (not condSetEmpty!18924)) setNonEmpty!18924))

(assert (= setNonEmpty!18924 b!2200092))

(declare-fun m!2642813 () Bool)

(assert (=> b!2200100 m!2642813))

(declare-fun m!2642815 () Bool)

(assert (=> start!213610 m!2642815))

(declare-fun m!2642817 () Bool)

(assert (=> b!2200098 m!2642817))

(declare-fun m!2642819 () Bool)

(assert (=> setNonEmpty!18924 m!2642819))

(declare-fun m!2642821 () Bool)

(assert (=> b!2200097 m!2642821))

(declare-fun m!2642823 () Bool)

(assert (=> b!2200094 m!2642823))

(declare-fun m!2642825 () Bool)

(assert (=> b!2200101 m!2642825))

(declare-fun m!2642827 () Bool)

(assert (=> b!2200099 m!2642827))

(assert (=> b!2200099 m!2642827))

(declare-fun m!2642829 () Bool)

(assert (=> b!2200099 m!2642829))

(assert (=> b!2200099 m!2642829))

(declare-fun m!2642831 () Bool)

(assert (=> b!2200099 m!2642831))

(assert (=> b!2200099 m!2642831))

(declare-fun m!2642833 () Bool)

(assert (=> b!2200099 m!2642833))

(check-sat (not start!213610) (not setNonEmpty!18924) (not b!2200097) (not b!2200100) (not b!2200099) (not b!2200094) (not b!2200098) (not b!2200101) (not b!2200092))
(check-sat)
