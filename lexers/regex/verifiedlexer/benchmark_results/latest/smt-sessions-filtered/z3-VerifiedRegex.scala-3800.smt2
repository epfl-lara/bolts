; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!212450 () Bool)

(assert start!212450)

(declare-fun b!2189868 () Bool)

(declare-fun e!1399373 () Bool)

(declare-fun e!1399371 () Bool)

(assert (=> b!2189868 (= e!1399373 e!1399371)))

(declare-fun res!940838 () Bool)

(assert (=> b!2189868 (=> (not res!940838) (not e!1399371))))

(declare-fun lastNullablePos!193 () Int)

(declare-fun from!1114 () Int)

(declare-fun lt!818096 () Int)

(assert (=> b!2189868 (= res!940838 (and (<= from!1114 lt!818096) (>= lastNullablePos!193 (- 1)) (< lastNullablePos!193 from!1114)))))

(declare-datatypes ((C!12280 0))(
  ( (C!12281 (val!7126 Int)) )
))
(declare-datatypes ((List!25407 0))(
  ( (Nil!25323) (Cons!25323 (h!30724 C!12280) (t!198005 List!25407)) )
))
(declare-datatypes ((IArray!16411 0))(
  ( (IArray!16412 (innerList!8263 List!25407)) )
))
(declare-datatypes ((Conc!8203 0))(
  ( (Node!8203 (left!19431 Conc!8203) (right!19761 Conc!8203) (csize!16636 Int) (cheight!8414 Int)) (Leaf!12004 (xs!11145 IArray!16411) (csize!16637 Int)) (Empty!8203) )
))
(declare-datatypes ((BalanceConc!16168 0))(
  ( (BalanceConc!16169 (c!348386 Conc!8203)) )
))
(declare-fun totalInput!923 () BalanceConc!16168)

(declare-fun size!19783 (BalanceConc!16168) Int)

(assert (=> b!2189868 (= lt!818096 (size!19783 totalInput!923))))

(declare-fun b!2189869 () Bool)

(declare-fun res!940834 () Bool)

(assert (=> b!2189869 (=> (not res!940834) (not e!1399371))))

(declare-fun e!1399372 () Bool)

(assert (=> b!2189869 (= res!940834 e!1399372)))

(declare-fun res!940835 () Bool)

(assert (=> b!2189869 (=> res!940835 e!1399372)))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((Regex!6067 0))(
  ( (ElementMatch!6067 (c!348387 C!12280)) (Concat!10369 (regOne!12646 Regex!6067) (regTwo!12646 Regex!6067)) (EmptyExpr!6067) (Star!6067 (reg!6396 Regex!6067)) (EmptyLang!6067) (Union!6067 (regOne!12647 Regex!6067) (regTwo!12647 Regex!6067)) )
))
(declare-datatypes ((List!25408 0))(
  ( (Nil!25324) (Cons!25324 (h!30725 Regex!6067) (t!198006 List!25408)) )
))
(declare-datatypes ((Context!3274 0))(
  ( (Context!3275 (exprs!2137 List!25408)) )
))
(declare-fun z!3955 () (InoxSet Context!3274))

(declare-fun nullableZipper!347 ((InoxSet Context!3274)) Bool)

(assert (=> b!2189869 (= res!940835 (not (nullableZipper!347 z!3955)))))

(declare-fun tp!682695 () Bool)

(declare-fun e!1399374 () Bool)

(declare-fun setRes!18426 () Bool)

(declare-fun setElem!18426 () Context!3274)

(declare-fun setNonEmpty!18426 () Bool)

(declare-fun inv!33702 (Context!3274) Bool)

(assert (=> setNonEmpty!18426 (= setRes!18426 (and tp!682695 (inv!33702 setElem!18426) e!1399374))))

(declare-fun setRest!18426 () (InoxSet Context!3274))

(assert (=> setNonEmpty!18426 (= z!3955 ((_ map or) (store ((as const (Array Context!3274 Bool)) false) setElem!18426 true) setRest!18426))))

(declare-fun b!2189870 () Bool)

(declare-fun res!940836 () Bool)

(assert (=> b!2189870 (=> (not res!940836) (not e!1399371))))

(assert (=> b!2189870 (= res!940836 (not (= from!1114 lt!818096)))))

(declare-fun res!940839 () Bool)

(assert (=> start!212450 (=> (not res!940839) (not e!1399373))))

(assert (=> start!212450 (= res!940839 (>= from!1114 0))))

(assert (=> start!212450 e!1399373))

(assert (=> start!212450 true))

(declare-fun e!1399375 () Bool)

(declare-fun inv!33703 (BalanceConc!16168) Bool)

(assert (=> start!212450 (and (inv!33703 totalInput!923) e!1399375)))

(declare-fun condSetEmpty!18426 () Bool)

(assert (=> start!212450 (= condSetEmpty!18426 (= z!3955 ((as const (Array Context!3274 Bool)) false)))))

(assert (=> start!212450 setRes!18426))

(declare-fun b!2189871 () Bool)

(assert (=> b!2189871 (= e!1399372 (= lastNullablePos!193 (- from!1114 1)))))

(declare-fun setIsEmpty!18426 () Bool)

(assert (=> setIsEmpty!18426 setRes!18426))

(declare-fun b!2189872 () Bool)

(assert (=> b!2189872 (= e!1399371 (or (> 0 from!1114) (>= from!1114 lt!818096)))))

(declare-fun b!2189873 () Bool)

(declare-fun res!940837 () Bool)

(assert (=> b!2189873 (=> (not res!940837) (not e!1399371))))

(declare-fun lostCauseZipper!185 ((InoxSet Context!3274)) Bool)

(assert (=> b!2189873 (= res!940837 (not (lostCauseZipper!185 z!3955)))))

(declare-fun b!2189874 () Bool)

(declare-fun tp!682694 () Bool)

(assert (=> b!2189874 (= e!1399374 tp!682694)))

(declare-fun b!2189875 () Bool)

(declare-fun tp!682696 () Bool)

(declare-fun inv!33704 (Conc!8203) Bool)

(assert (=> b!2189875 (= e!1399375 (and (inv!33704 (c!348386 totalInput!923)) tp!682696))))

(assert (= (and start!212450 res!940839) b!2189868))

(assert (= (and b!2189868 res!940838) b!2189869))

(assert (= (and b!2189869 (not res!940835)) b!2189871))

(assert (= (and b!2189869 res!940834) b!2189870))

(assert (= (and b!2189870 res!940836) b!2189873))

(assert (= (and b!2189873 res!940837) b!2189872))

(assert (= start!212450 b!2189875))

(assert (= (and start!212450 condSetEmpty!18426) setIsEmpty!18426))

(assert (= (and start!212450 (not condSetEmpty!18426)) setNonEmpty!18426))

(assert (= setNonEmpty!18426 b!2189874))

(declare-fun m!2632859 () Bool)

(assert (=> b!2189868 m!2632859))

(declare-fun m!2632861 () Bool)

(assert (=> b!2189869 m!2632861))

(declare-fun m!2632863 () Bool)

(assert (=> b!2189875 m!2632863))

(declare-fun m!2632865 () Bool)

(assert (=> start!212450 m!2632865))

(declare-fun m!2632867 () Bool)

(assert (=> b!2189873 m!2632867))

(declare-fun m!2632869 () Bool)

(assert (=> setNonEmpty!18426 m!2632869))

(check-sat (not b!2189873) (not b!2189868) (not b!2189869) (not setNonEmpty!18426) (not start!212450) (not b!2189875) (not b!2189874))
(check-sat)
