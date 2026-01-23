; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!212462 () Bool)

(assert start!212462)

(declare-fun b!2190022 () Bool)

(declare-fun e!1399469 () Bool)

(declare-fun tp!682750 () Bool)

(assert (=> b!2190022 (= e!1399469 tp!682750)))

(declare-fun b!2190023 () Bool)

(declare-fun e!1399468 () Int)

(declare-fun from!1114 () Int)

(assert (=> b!2190023 (= e!1399468 from!1114)))

(declare-fun b!2190024 () Bool)

(declare-fun res!940946 () Bool)

(declare-fun e!1399466 () Bool)

(assert (=> b!2190024 (=> (not res!940946) (not e!1399466))))

(declare-fun lt!818131 () Int)

(assert (=> b!2190024 (= res!940946 (not (= from!1114 lt!818131)))))

(declare-fun b!2190025 () Bool)

(declare-fun res!940947 () Bool)

(assert (=> b!2190025 (=> (not res!940947) (not e!1399466))))

(declare-fun e!1399471 () Bool)

(assert (=> b!2190025 (= res!940947 e!1399471)))

(declare-fun res!940942 () Bool)

(assert (=> b!2190025 (=> res!940942 e!1399471)))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((C!12292 0))(
  ( (C!12293 (val!7132 Int)) )
))
(declare-datatypes ((Regex!6073 0))(
  ( (ElementMatch!6073 (c!348404 C!12292)) (Concat!10375 (regOne!12658 Regex!6073) (regTwo!12658 Regex!6073)) (EmptyExpr!6073) (Star!6073 (reg!6402 Regex!6073)) (EmptyLang!6073) (Union!6073 (regOne!12659 Regex!6073) (regTwo!12659 Regex!6073)) )
))
(declare-datatypes ((List!25419 0))(
  ( (Nil!25335) (Cons!25335 (h!30736 Regex!6073) (t!198017 List!25419)) )
))
(declare-datatypes ((Context!3286 0))(
  ( (Context!3287 (exprs!2143 List!25419)) )
))
(declare-fun z!3955 () (InoxSet Context!3286))

(declare-fun nullableZipper!353 ((InoxSet Context!3286)) Bool)

(assert (=> b!2190025 (= res!940942 (not (nullableZipper!353 z!3955)))))

(declare-fun lt!818132 () Int)

(declare-fun b!2190026 () Bool)

(assert (=> b!2190026 (= e!1399466 (and (>= (+ 1 from!1114) 0) (<= (+ 1 from!1114) lt!818131) (or (< lt!818132 (- 1)) (>= lt!818132 (+ 1 from!1114)))))))

(assert (=> b!2190026 (= lt!818132 e!1399468)))

(declare-datatypes ((List!25420 0))(
  ( (Nil!25336) (Cons!25336 (h!30737 C!12292) (t!198018 List!25420)) )
))
(declare-datatypes ((IArray!16423 0))(
  ( (IArray!16424 (innerList!8269 List!25420)) )
))
(declare-datatypes ((Conc!8209 0))(
  ( (Node!8209 (left!19440 Conc!8209) (right!19770 Conc!8209) (csize!16648 Int) (cheight!8420 Int)) (Leaf!12013 (xs!11151 IArray!16423) (csize!16649 Int)) (Empty!8209) )
))
(declare-datatypes ((BalanceConc!16180 0))(
  ( (BalanceConc!16181 (c!348405 Conc!8209)) )
))
(declare-fun totalInput!923 () BalanceConc!16180)

(declare-fun c!348403 () Bool)

(declare-fun derivationStepZipper!150 ((InoxSet Context!3286) C!12292) (InoxSet Context!3286))

(declare-fun apply!6106 (BalanceConc!16180 Int) C!12292)

(assert (=> b!2190026 (= c!348403 (nullableZipper!353 (derivationStepZipper!150 z!3955 (apply!6106 totalInput!923 from!1114))))))

(declare-fun b!2190027 () Bool)

(declare-fun lastNullablePos!193 () Int)

(assert (=> b!2190027 (= e!1399471 (= lastNullablePos!193 (- from!1114 1)))))

(declare-fun b!2190028 () Bool)

(assert (=> b!2190028 (= e!1399468 lastNullablePos!193)))

(declare-fun b!2190029 () Bool)

(declare-fun res!940943 () Bool)

(assert (=> b!2190029 (=> (not res!940943) (not e!1399466))))

(declare-fun lostCauseZipper!191 ((InoxSet Context!3286)) Bool)

(assert (=> b!2190029 (= res!940943 (not (lostCauseZipper!191 z!3955)))))

(declare-fun setRes!18444 () Bool)

(declare-fun setNonEmpty!18444 () Bool)

(declare-fun tp!682748 () Bool)

(declare-fun setElem!18444 () Context!3286)

(declare-fun inv!33729 (Context!3286) Bool)

(assert (=> setNonEmpty!18444 (= setRes!18444 (and tp!682748 (inv!33729 setElem!18444) e!1399469))))

(declare-fun setRest!18444 () (InoxSet Context!3286))

(assert (=> setNonEmpty!18444 (= z!3955 ((_ map or) (store ((as const (Array Context!3286 Bool)) false) setElem!18444 true) setRest!18444))))

(declare-fun res!940944 () Bool)

(declare-fun e!1399467 () Bool)

(assert (=> start!212462 (=> (not res!940944) (not e!1399467))))

(assert (=> start!212462 (= res!940944 (>= from!1114 0))))

(assert (=> start!212462 e!1399467))

(assert (=> start!212462 true))

(declare-fun e!1399470 () Bool)

(declare-fun inv!33730 (BalanceConc!16180) Bool)

(assert (=> start!212462 (and (inv!33730 totalInput!923) e!1399470)))

(declare-fun condSetEmpty!18444 () Bool)

(assert (=> start!212462 (= condSetEmpty!18444 (= z!3955 ((as const (Array Context!3286 Bool)) false)))))

(assert (=> start!212462 setRes!18444))

(declare-fun setIsEmpty!18444 () Bool)

(assert (=> setIsEmpty!18444 setRes!18444))

(declare-fun b!2190030 () Bool)

(assert (=> b!2190030 (= e!1399467 e!1399466)))

(declare-fun res!940945 () Bool)

(assert (=> b!2190030 (=> (not res!940945) (not e!1399466))))

(assert (=> b!2190030 (= res!940945 (and (<= from!1114 lt!818131) (>= lastNullablePos!193 (- 1)) (< lastNullablePos!193 from!1114)))))

(declare-fun size!19789 (BalanceConc!16180) Int)

(assert (=> b!2190030 (= lt!818131 (size!19789 totalInput!923))))

(declare-fun b!2190031 () Bool)

(declare-fun tp!682749 () Bool)

(declare-fun inv!33731 (Conc!8209) Bool)

(assert (=> b!2190031 (= e!1399470 (and (inv!33731 (c!348405 totalInput!923)) tp!682749))))

(assert (= (and start!212462 res!940944) b!2190030))

(assert (= (and b!2190030 res!940945) b!2190025))

(assert (= (and b!2190025 (not res!940942)) b!2190027))

(assert (= (and b!2190025 res!940947) b!2190024))

(assert (= (and b!2190024 res!940946) b!2190029))

(assert (= (and b!2190029 res!940943) b!2190026))

(assert (= (and b!2190026 c!348403) b!2190023))

(assert (= (and b!2190026 (not c!348403)) b!2190028))

(assert (= start!212462 b!2190031))

(assert (= (and start!212462 condSetEmpty!18444) setIsEmpty!18444))

(assert (= (and start!212462 (not condSetEmpty!18444)) setNonEmpty!18444))

(assert (= setNonEmpty!18444 b!2190022))

(declare-fun m!2632961 () Bool)

(assert (=> b!2190025 m!2632961))

(declare-fun m!2632963 () Bool)

(assert (=> setNonEmpty!18444 m!2632963))

(declare-fun m!2632965 () Bool)

(assert (=> b!2190030 m!2632965))

(declare-fun m!2632967 () Bool)

(assert (=> b!2190031 m!2632967))

(declare-fun m!2632969 () Bool)

(assert (=> start!212462 m!2632969))

(declare-fun m!2632971 () Bool)

(assert (=> b!2190029 m!2632971))

(declare-fun m!2632973 () Bool)

(assert (=> b!2190026 m!2632973))

(assert (=> b!2190026 m!2632973))

(declare-fun m!2632975 () Bool)

(assert (=> b!2190026 m!2632975))

(assert (=> b!2190026 m!2632975))

(declare-fun m!2632977 () Bool)

(assert (=> b!2190026 m!2632977))

(check-sat (not b!2190031) (not b!2190029) (not start!212462) (not b!2190026) (not b!2190030) (not b!2190025) (not setNonEmpty!18444) (not b!2190022))
(check-sat)
